import 'package:flutter/material.dart';
import 'package:stock_investment_app/features/support/data/models/support_model.dart';

class StockTile extends StatelessWidget {
  final Stock stock;
  const StockTile({required this.stock});

  @override
  Widget build(BuildContext context) {
    final bool isPositive = stock.changePercentage >= 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(stock.logoUrl),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(stock.symbol,
                        style: Theme.of(context).textTheme.titleMedium),
                    if (stock.isVerified)
                      const Icon(Icons.check_circle,
                          color: Colors.green, size: 16),
                  ],
                ),
                Text(stock.name, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('${stock.price} USD',
                  style: Theme.of(context).textTheme.titleMedium),
              Text(
                '${isPositive ? '+' : ''}${stock.changePercentage}%',
                style: TextStyle(color: isPositive ? Colors.green : Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
