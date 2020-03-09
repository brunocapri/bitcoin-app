import 'dart:ui';

import 'package:ezfine/blocs/home.bloc.dart';
import 'package:ezfine/models/bitcoin.model.dart';

import 'package:ezfine/ui/widgets/loader.widget%20copy.dart';
import 'package:ezfine/ui/widgets/main-card.widget.dart';
import 'package:ezfine/ui/widgets/purchase-buttons.widget.dart';
import 'package:ezfine/ui/widgets/wallet-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeBloc bloc;
  bool _isBlurred = false;

  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: RefreshIndicator(
          onRefresh: handleRefresh,
          color: Colors.black,
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              MainCard(),
                              SizedBox(
                                height: 60,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 45),
                                child: PurchaseButtons(),
                              ),
                            ],
                          ),
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: _isBlurred ? 2.5 : 0,
                            sigmaY: _isBlurred ? 2.5 : 0,
                          ),
                          child: Container(
                            height: 1,
                            width: 1,
                            decoration: new BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                            ),
                            child: Text(""),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 290, top: 60),
                      child: WalletButton(
                        callback: blurScreen,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> handleRefresh() async {
    BitcoinModel bitcoin = await bloc.getBitcoin();
    bloc.bitcoin = bitcoin;
    return null;
  }

  blurScreen() {
    setState(() {
      if (_isBlurred == false) {
        _isBlurred = true;
      } else {
        _isBlurred = false;
      }
    });
  }
}
