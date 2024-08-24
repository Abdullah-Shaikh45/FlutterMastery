import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container & SizedBox")),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.blue,
              //shape: BoxShape.circle
              //borderRadius: BorderRadius.circular(20),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 20, spreadRadius: 5, color: Colors.black)
              ]),
          child: const Center(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
