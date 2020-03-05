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
                    onPressed: () {},
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
                    onPressed: () {},
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
