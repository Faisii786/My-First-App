import 'package:flutter/material.dart';
import 'package:home/Second_Screen.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("data"),
        // ),
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/images/hey.png",
              width: 700,
            ),
            Text(
              "Wellcome $name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "@Faisal Aslam",
                        labelText: "User Name"),
                    onChanged: (value) {
                      // name = value;
                      setState(
                          () {}); // set state screen ko change/rebuild krta ha
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "@faisal123",
                        labelText: "Password"),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
