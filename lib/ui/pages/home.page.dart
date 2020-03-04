import 'package:ezfine/blocs/home.bloc.dart';
import 'package:ezfine/ui/widgets/loader.widget%20copy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  HomeBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
              child: Loader(
            object: bloc.bitcoin,
            callback: list,
          )),
        ],
      ),
    );
  }

  Widget list() {
    return Center(
      child: Text(
        "O preco do bitcoin é ${bloc.bitcoin.price}",
      ),
    );
  }
}
