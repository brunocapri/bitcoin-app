import 'package:flutter/material.dart';

class WalletButton extends StatelessWidget {
  final Function callback;
  WalletButton({@required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0.3,
          onPressed: () {
            return callback();
          },
          child: Image.asset(
            "assets/wallet.png",
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
