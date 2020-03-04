import 'package:dio/dio.dart';
import 'package:ezfine/models/bitcoin.model.dart';
import 'package:ezfine/settings.dart';

class BitcoinRepository {
  Future<BitcoinModel> get() async {
    var url = Settings.apiUrl;
    Response response = await Dio().get(url);

    return BitcoinModel.fromJson(response.data[0]);
  }
}
