import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction({
    Key? key,
    required this.titleController,
    required this.amountController,
    required this.addTX,
  }) : super(key: key);

  final Function addTX;
  final TextEditingController titleController;
  final TextEditingController amountController;

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  void submitData() {
    final enteredText = widget.titleController.text;
    final enteredAmount = double.parse(widget.amountController.text);
    if (enteredText.isEmpty || enteredAmount <= 0) return;
    widget.addTX(
      enteredText,
      enteredAmount,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: widget.titleController,
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: widget.amountController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 70,
              child: Row(
                children: [
                  Text("No Date Chosen !"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Choose Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(3.0),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              onPressed: () => submitData(),
              child: const Text(
                'Add new transaction',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
