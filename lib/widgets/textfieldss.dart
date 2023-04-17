import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  NewTransaction({super.key, required this.addTransaction});
  final TextEditingController titleController = TextEditingController();

  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                // onChanged: (val) {
                //   val = titleController.text;
                // },
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                // onChanged: ((value) => value = amountController.text),
                decoration: const InputDecoration(labelText: "Amount"),
              ),
              TextButton(
                onPressed: () {
                  addTransaction(titleController.text,
                      double.parse(amountController.text));
                  titleController.clear();
                  amountController.clear();
                },
                child: const Text(
                  'Add Transaction',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
