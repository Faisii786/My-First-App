import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String pro = "assets/images/profile1.JPG";

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Faisal Aslam")),
        backgroundColor: Color.fromARGB(255, 35, 8, 151),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Faisal Aslam"),
              accountEmail: Text("faisalaslam218@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(pro),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call me"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email me"),
            ),
            ListTile(
              leading: Icon(Icons.whatsapp),
              title: Text("0340-8119801"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 770,
          // width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   "Faisal Aslam",
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // Text("03408119801",
                    //     style: TextStyle(
                    //         fontSize: 25, fontStyle: FontStyle.italic))
                  ],
                ),
              ),
              Container(
                height: 130,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 40,
                    ),
                    // Image.asset(
                    //   "assets/images/call icon.png",
                    //   width: 45,
                    // ),
                    Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 40,
                    ),
                    // Image.asset(
                    //   "assets/images/gallery icon.png",
                    //   width: 45,
                    // ),
                    Icon(
                      Icons.camera_enhance,
                      color: Colors.white,
                      size: 40,
                    ),
                    // Image.asset(
                    //   "assets/images/message icon.png",
                    //   width: 45,
                    // ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 40,
                    ),
                    // Image.asset(
                    //   "assets/images/camera icon.jpeg",
                    //   width: 45,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
