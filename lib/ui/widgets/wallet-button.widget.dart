import 'package:flutter/material.dart';

class WalletButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0.3,
          onPressed: () {},
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
