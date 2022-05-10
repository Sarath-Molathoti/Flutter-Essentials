import 'package:flutter/material.dart';
class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1559137781-875af01c14bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80"),
          const SizedBox(height: 20),
          Text(myText,
              style: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter name",
                label: Text("Name")),
          ),
        ],
      ),
    );
  }
}