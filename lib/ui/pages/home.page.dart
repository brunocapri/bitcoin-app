import 'package:ezfine/blocs/home.bloc.dart';
import 'package:ezfine/models/bitcoin.model.dart';
import 'package:ezfine/ui/widgets/loader.widget%20copy.dart';
import 'package:ezfine/ui/widgets/main-card.widget.dart';
import 'package:ezfine/ui/widgets/purchase-buttons.widget.dart';
import 'package:ezfine/ui/widgets/wallet-button.widget.dart';
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
        child: RefreshIndicator(
          onRefresh: handleRefresh,
          color: Colors.black,
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          MainCard(),
                          SizedBox(
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: PurchaseButtons(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 290, top: 60),
                            child: WalletButton(),
                          ),
                        ],
                      ),
                    ),
                  ),
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
}
