import 'package:ezfine/ui/pages/budget.page.dart';
import 'package:ezfine/ui/pages/home.page.dart';
import 'package:ezfine/ui/pages/profit.page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class WalletButton extends StatefulWidget {
  final Function callback;
  WalletButton({@required this.callback});

  @override
  _WalletButtonState createState() => _WalletButtonState();
}

class _WalletButtonState extends State<WalletButton>
    with TickerProviderStateMixin {
  AnimationController _controller;

  static const List<String> menus = const ["Profit", "Budget"];
  static List<Widget> pages = [ProfitPage(), BudgetPage()];

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).cardColor;
    Color foregroundColor = Theme.of(context).accentColor;
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: new List.generate(menus.length, (int index) {
          Widget child = new Container(
            height: 70.0,
            width: 70,
            alignment: FractionalOffset.topCenter,
            child: new ScaleTransition(
              scale: new CurvedAnimation(
                parent: _controller,
                curve: new Interval(0.0, 1.0 - index / menus.length / 2.0,
                    curve: Curves.easeOut),
              ),
              child: new FloatingActionButton(
                heroTag: null,
                backgroundColor: backgroundColor,
                child: new Text(
                  menus[index],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages[index]));
                },
              ),
            ),
          );
          return child;
        }).toList()
          ..add(
            new FloatingActionButton(
              heroTag: null,
              child: new AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget child) {
                  return new Transform(
                      transform: new Matrix4.rotationZ(
                          _controller.value * 0.5 * math.pi),
                      alignment: FractionalOffset.center,
                      child: _controller.isDismissed
                          ? Image.asset(
                              "assets/wallet.png",
                              height: 40,
                              width: 40,
                            )
                          : Icon(Icons.close));
                },
              ),
              onPressed: () {
                if (_controller.isDismissed) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                return widget.callback();
              },
            ),
          ));
  }
}
