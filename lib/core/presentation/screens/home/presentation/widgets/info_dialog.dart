import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("My Information"),
      content: const Text(
        "My name is Nikolas, I'm 17 years old, born in Ukraine specifically in Mykolayiv but lived most of my life in Cyprus so I am fluent in English.",
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text("Close"),
        ),
      ],
    );
  }
}
