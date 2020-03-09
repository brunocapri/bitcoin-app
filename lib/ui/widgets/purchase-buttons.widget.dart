import 'package:ezfine/ui/pages/buy-modal.page.dart';
import 'package:ezfine/ui/pages/sell-modal.page.dart';
import 'package:flutter/material.dart';

class PurchaseButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 130,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                            pageBuilder: (context, _, __) => BuyModal(),
                            opaque: false),
                      );
                    },
                    child: Text(
                      "Buy",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF9ce2b3),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(""),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 130,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                            pageBuilder: (context, _, __) => SellModal(),
                            opaque: false),
                      );
                    },
                    child: Text(
                      "Sell",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF7ab5fe),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(""),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
