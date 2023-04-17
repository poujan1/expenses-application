// import 'package:expenses_app/widgets/new_transaction.dart';
// import 'package:expenses_app/widgets/transaction_list.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import 'models/transactions.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({
//     super.key,
//   });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 100,
//             decoration: const BoxDecoration(),
//             child: const Card(child: Text("Chart")),
//           ),
//           NewTransaction(),
//           const TransactionList(),
//         ],
//       ),
//     ));
//   }
// }
  // addTransaction(String title, double amount) {
  //   setState(() {});
  //   // final addTx = transaction.add();
  //   transaction.add(Transaction(
  //       amount: amount,
  //       date: DateFormat.yMMMEd().format(DateTime.now()),
  //       id: "T3",
  //       title: title));
  //   titleController.clear();
  //   amountController.clear();
  // }