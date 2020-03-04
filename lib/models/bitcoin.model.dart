class BitcoinModel {
  String symbol;
  double price;
  double changesPercentage;
  double change;
  double dayLow;
  double dayHigh;
  double yearHigh;
  double yearLow;
  double marketCap;
  double priceAvg50;
  double priceAvg200;
  int volume;
  int avgVolume;
  String exhange;
  double open;
  double previousClose;
  Null eps;
  Null pe;
  Null earningsAnnouncement;
  Null sharesOutstanding;
  int timestamp;

  BitcoinModel(
      {this.symbol,
      this.price,
      this.changesPercentage,
      this.change,
      this.dayLow,
      this.dayHigh,
      this.yearHigh,
      this.yearLow,
      this.marketCap,
      this.priceAvg50,
      this.priceAvg200,
      this.volume,
      this.avgVolume,
      this.exhange,
      this.open,
      this.previousClose,
      this.eps,
      this.pe,
      this.earningsAnnouncement,
      this.sharesOutstanding,
      this.timestamp});

  BitcoinModel.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    price = json['price'];
    changesPercentage = json['changesPercentage'];
    change = json['change'];
    dayLow = json['dayLow'];
    dayHigh = json['dayHigh'];
    yearHigh = json['yearHigh'];
    yearLow = json['yearLow'];
    marketCap = json['marketCap'];
    priceAvg50 = json['priceAvg50'];
    priceAvg200 = json['priceAvg200'];
    volume = json['volume'];
    avgVolume = json['avgVolume'];
    exhange = json['exhange'];
    open = json['open'];
    previousClose = json['previousClose'];
    eps = json['eps'];
    pe = json['pe'];
    earningsAnnouncement = json['earningsAnnouncement'];
    sharesOutstanding = json['sharesOutstanding'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['symbol'] = this.symbol;
    data['price'] = this.price;
    data['changesPercentage'] = this.changesPercentage;
    data['change'] = this.change;
    data['dayLow'] = this.dayLow;
    data['dayHigh'] = this.dayHigh;
    data['yearHigh'] = this.yearHigh;
    data['yearLow'] = this.yearLow;
    data['marketCap'] = this.marketCap;
    data['priceAvg50'] = this.priceAvg50;
    data['priceAvg200'] = this.priceAvg200;
    data['volume'] = this.volume;
    data['avgVolume'] = this.avgVolume;
    data['exhange'] = this.exhange;
    data['open'] = this.open;
    data['previousClose'] = this.previousClose;
    data['eps'] = this.eps;
    data['pe'] = this.pe;
    data['earningsAnnouncement'] = this.earningsAnnouncement;
    data['sharesOutstanding'] = this.sharesOutstanding;
    data['timestamp'] = this.timestamp;
    return data;
  }
}
