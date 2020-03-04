import 'package:ezfine/models/bitcoin.model.dart';
import 'package:ezfine/repositories/bitcoin.repository.dart';
import 'package:flutter/material.dart';

class HomeBloc extends ChangeNotifier {
  BitcoinRepository _bitcoinRepository = new BitcoinRepository();
  BitcoinModel bitcoin;

  HomeBloc() {
    getBitcoin();
  }

  getBitcoin() {
    _bitcoinRepository.get().then((data) {
      this.bitcoin = data;
      notifyListeners();
    });
  }
}
