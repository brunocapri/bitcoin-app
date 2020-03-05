import 'package:ezfine/models/bitcoin.model.dart';
import 'package:ezfine/repositories/bitcoin.repository.dart';
import 'package:flutter/material.dart';

class HomeBloc extends ChangeNotifier {
  BitcoinRepository _bitcoinRepository = new BitcoinRepository();
  BitcoinModel bitcoin;
  var bitcoinColor;

  HomeBloc() {
    getBitcoin();
  }

  getBitcoin() {
    _bitcoinRepository.get().then((data) {
      this.bitcoin = data;
      getBitcoinColor();
      notifyListeners();
      return data;
    });
  }

  getBitcoinColor() {
    var priceRatio = bitcoin.price.compareTo(bitcoin.dayHigh);
    bitcoinColor = Color(0xFF04e774);
    if (priceRatio <= -100) {
      bitcoinColor = Color(0XFFfd5352);
    }
  }
}
