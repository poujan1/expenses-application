import 'package:expenses_app/models/transactions.dart';

import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTrasnaction;
  const TransactionList({super.key, required this.userTrasnaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: const EdgeInsets.all(10),
              elevation: 5,
              child: Row(children: [
                Container(
                  height: 50,
                  width: 65,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      // border: Border.all(color: Colors.black),
                      ),
                  child: Center(
                    child: Text(
                      "\$ ${userTrasnaction[index].amount}",
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userTrasnaction[index].title,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        userTrasnaction[index].date,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          );
        },
        itemCount: userTrasnaction.length,
      ),
    );
  }
}
