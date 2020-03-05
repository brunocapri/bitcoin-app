import 'dart:ui';

import 'package:ezfine/blocs/home.bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'loader.widget copy.dart';

class MainCard extends StatelessWidget {
  HomeBloc bloc;
  final price = NumberFormat("#,##0.00", "pt_BR");

  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<HomeBloc>(context);

    return Container(
      padding: EdgeInsets.only(top: 50),
      height: 450,
      width: 380,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(1.0, 2.0),
              blurRadius: 10.0,
            )
          ]),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Bitcoin",
                  style: Theme.of(context).textTheme.caption,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 75.0, top: 80),
                child: Row(
                  children: <Widget>[
                    Loader(
                      object: bloc.bitcoin,
                      callback: showBitcoin,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 5),
                      child: Text(
                        "USD",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 80),
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "day high",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Loader(
                        object: bloc.bitcoin,
                        callback: showDayHigh,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 1,
                  color: Colors.black,
                  child: Text(""),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "day low",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Loader(
                        object: bloc.bitcoin,
                        callback: showDayLow,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showBitcoin() {
    return Text(
      "${price.format(bloc.bitcoin.price)}",
      style: TextStyle(fontSize: 55, color: bloc.bitcoinColor),
    );
  }

  Widget showDayHigh() {
    return Text(
      "${price.format(bloc.bitcoin.dayHigh)}",
      style: TextStyle(fontSize: 24, color: Color(0XFF16d7e2)),
    );
  }

  Widget showDayLow() {
    return Text(
      "${price.format(bloc.bitcoin.dayLow)}",
      style: TextStyle(fontSize: 24, color: Color(0XFFfd5352)),
    );
  }
}
