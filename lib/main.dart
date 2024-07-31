import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<MyHomePage> {
  bool _isChecked = false; // Initial state of the checkbox

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update state based on the checkbox value
    });
  }

  // final String title;
  // const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi This is app bar"),
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundimage.jfif"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 100,
                  width: 100,
                ),
              ),
              Center(
                  child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Stack(children: [
                        Image(
                          image: AssetImage(
                              "assets/images/profileloginvector.png"),
                          height: 120,
                          width: 120,
                        ),
                        Positioned(
                          bottom: 30,
                          right: 25,
                          child: Image(
                            image: AssetImage("assets/images/profile.png"),
                            height: 60,
                            width: 60,
                          ),
                        )
                      ])),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back...",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                                decoration: InputDecoration(
                                    filled:
                                        true, // This ensures the fillColor is applied
                                    fillColor: Colors.grey,
                                    hintText: "Username",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)))),
                            SizedBox(height: 10),
                            TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 16.0),
                                    hintText: "Password",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)))),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked, // Bind checkbox to state
                                  onChanged: _toggleCheckbox,
                                ),
                                Text('Remember Me'),
                              ],
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: 200.0, // Set the desired width
                              height: 50.0, // Set the desired height
                              child: ElevatedButton(
                                onPressed: () {
                                  // Button onPressed action
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              )),
            ],
          )),
    );
  }
}
