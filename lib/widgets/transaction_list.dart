import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  color: Colors.purple,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      transactions[index].title.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMEd().format(transactions[index].date),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
