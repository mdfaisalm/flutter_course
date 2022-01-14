import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("a/a.png"),
                radius: 50,
              ),
              Text(
                "Muhammad Faisal Mehmood",
                style: TextStyle(
                    fontFamily: "Pacifico Regular",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Sr. Android Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              Card(
                shadowColor: Colors.lightGreenAccent,
                color: Colors.red,
                elevation: 5,
                child: ListTile(
                  textColor: Colors.teal,
                  iconColor: Colors.teal,
                  leading: Icon(
                    Icons.call,
                  ),
                  title: Text(
                    "+92 313 7236372",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  textColor: Colors.teal,
                  iconColor: Colors.teal,
                  trailing: Icon(
                    Icons.email,
                  ),
                  leading: Icon(
                    Icons.email,
                  ),
                  title: Text(
                    "faisalchanglah@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                width: size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: ListTile(
                      textColor: Colors.teal,
                      iconColor: Colors.teal,
                      trailing: Icon(
                        Icons.thumb_up,
                      ),
                      leading: Icon(
                        Icons.thumb_up,
                      ),
                      title: Text(
                        "DONE",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
