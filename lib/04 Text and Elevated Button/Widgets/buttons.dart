import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.all(20),
                  ),
                  elevation: WidgetStateProperty.all(20),
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                  overlayColor: WidgetStateProperty.all(Colors.grey)),
              child: const Text(
                "Press Me!",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(Theme.of(context).primaryColor),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
                onPressed: () {
                  print("Like");
                },
                child: const Text(
                  "Press Me!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
