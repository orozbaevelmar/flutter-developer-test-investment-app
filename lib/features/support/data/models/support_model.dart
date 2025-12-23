// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

class Stock {
  const Stock({
    required this.symbol,
    required this.name,
    required this.price,
    required this.changePercentage,
    required this.logoUrl,
    this.isVerified = true,
  });

  final String symbol;
  final String name;
  final double price;
  final double changePercentage;
  final String logoUrl;
  final bool isVerified;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symbol': symbol,
      'name': name,
      'price': price,
      'changePercentage': changePercentage,
      'logoUrl': logoUrl,
      'isVerified': isVerified,
    };
  }

  factory Stock.fromMap(Map<String, dynamic> map) {
    return Stock(
      symbol: map['symbol'] as String,
      name: map['name'] as String,
      price: map['price'] as double,
      changePercentage: map['changePercentage'] as double,
      logoUrl: map['logoUrl'] as String,
      isVerified: map['isVerified'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Stock.fromJson(String source) =>
      Stock.fromMap(json.decode(source) as Map<String, dynamic>);
}
