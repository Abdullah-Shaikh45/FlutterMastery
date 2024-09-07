import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheets",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              elevation: 0,
              isDismissible: true,
              enableDrag: true,
              backgroundColor: Theme.of(context).primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("Sumit"),
                    ),
                    ListTile(
                      title: Text("Apple"),
                      subtitle: Text("Akshit"),
                    ),
                    ListTile(
                      title: Text("Mango"),
                      subtitle: Text("Javeed"),
                    ),
                    ListTile(
                      title: Text("Grapes"),
                      subtitle: Text("Sunil"),
                    ),
                    ListTile(
                      title: Text("Cherry"),
                      subtitle: Text("Prem"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text("Show Bottom sheets"),
        ),
      ),
    );
  }
}
