import 'package:ezfine/blocs/home.bloc.dart';
import 'package:ezfine/ui/widgets/loader.widget%20copy.dart';
import 'package:ezfine/ui/widgets/main-card.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  HomeBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                  child: Column(
                children: <Widget>[
                  MainCard(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
