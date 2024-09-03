import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  //color: Colors.red,
                  padding: EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/896d09bf-c199-418a-82a1-4305c2411d1d/7a56c1b6-b43c-4cda-be5c-7759bd2533cb.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Abdullah Shaikh",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("cloudyab854@gmail.com")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploads"),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("share"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          child: const Text("Hey There"),
        ),
      ),
    );
  }
}
