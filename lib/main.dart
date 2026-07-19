import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';

bool horizontal = false;
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  String? bg = "imgs/image1.gif";
  final Uri _url1 = Uri.parse("https://github.com/talha-asiff");
  final Uri _url2 = Uri.parse(
    "https://www.linkedin.com/in/talha-asif-439651321/",
  );
  final Uri _url3 = Uri.parse("mailto:talhaasif.dev@gmail.com");

  Future<void> launchSite1() async {
    await launchUrl(_url1);
  }

  Future<void> launchSite2() async {
    await launchUrl(_url2);
  }

  Future<void> contact() async {
    await launchUrl(_url3);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    if (w > h) {
      horizontal = true;
    } else {
      horizontal = false;
    }
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "  TALHA ASIF",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontFamily: "f1",
            ),
          ),
          backgroundColor: Colors.black.withValues(alpha: 0.5),
          actions: [
            InkWell(
              onTap: contact,
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white),
                ),
                alignment: Alignment.center,
                child: Text(
                  " Contact ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "f2",
                  ),
                ),
              ),
            ),
          ],
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(child: Image.asset(bg!, fit: BoxFit.cover)),
                Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: horizontal ? 0 : 350,
                          height: horizontal
                              ? 0
                              : MediaQuery.of(context).size.height - 500,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 350,
                                height: 350,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/271928499?v=4',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 350,
                              height: 350,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    "TALHA ASIF",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 80,
                                      fontFamily: "f1",
                                    ),
                                  ),
                                  Text(
                                    "BS Software Engineering Student, Flutter App developer ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: "f2",
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Text(
                                        " Lahore, Pakistan ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.school,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Text(
                                        " Student at COMSATS Lahore ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: launchSite1,
                                        child: Container(
                                          width: 150,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            " My GitHub ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: "f2",
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      InkWell(
                                        onTap: launchSite2,
                                        child: Container(
                                          width: 150,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.white,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            " Linkedin ",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: 15,
                                              fontFamily: "f2",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: horizontal
                                  ? MediaQuery.of(context).size.width - 500
                                  : 0,
                              height: horizontal ? 300 : 0,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(30),
                                    child: Container(
                                      width: 350,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://avatars.githubusercontent.com/u/271928499?v=4',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          360,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black,
                          const Color.fromARGB(255, 36, 99, 73),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "TECH STACK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "f1",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            width: w,
                            height: h - (w >= h ? 350 : 100),
                            child: ListView(
                              scrollDirection: w > h
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        const Color.fromARGB(255, 102, 68, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/YFfZdq6C/pngwing-com.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Flutter",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 213, 193, 7),
                                        const Color.fromARGB(255, 204, 73, 2),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/1tdms01h/pngwing-com-3.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Firebase",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),

                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 65, 33, 243),
                                        const Color.fromARGB(255, 68, 227, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/twXN4LCQ/dart.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Dart",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 24, 2, 148),
                                        const Color.fromARGB(255, 0, 85, 212),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/Lhh3nmN6/pngwing-com-1.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  C++",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 20, 1, 131),
                                        const Color.fromARGB(255, 0, 69, 219),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/PzYtT580/pngwing-com-4.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  C",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 15, 3, 81),
                                        const Color.fromARGB(255, 164, 219, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/rGssrMxz/pngwing-com-2.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Python",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 1, 49, 131),
                                        const Color.fromARGB(255, 0, 106, 219),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/gZvycXJc/pngwing-com-5.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Godot Engine",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 131, 51, 1),
                                        const Color.fromARGB(255, 219, 131, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/nNP21Wb9/pngwing-com-6.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  HTML",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 1, 10, 131),
                                        const Color.fromARGB(255, 0, 110, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/wFYhCSHj/pngwing-com-7.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  CSS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 131, 107, 1),
                                        const Color.fromARGB(255, 208, 219, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/C5NXMC0X/pngwing-com-8.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Javascript",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: "f2",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 36, 99, 73),
                          Colors.black,
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "EDUCATION",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: "f1",
                        ),
                      ),
                      SizedBox(height: 20),
                      w >= h
                          ? Row(
                              children: [
                                SizedBox(width: 100),
                                Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 65),
                                      Text(
                                        "COMSATS Lahore",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Text(
                                        "BS Software Engineering (2nd semester)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 1,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 65),
                                      Text(
                                        "MTB College SDK",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Text(
                                        "Intermedite in Computer Science",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 1,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 350,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 65),
                                      Text(
                                        "MTB School SDK",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Text(
                                        "Secondary School",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Container(
                                  width: 220,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Text(
                                        "COMSATS Lahore",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "BS Software Engineering (2nd semester)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 80,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Text(
                                        "MTB College SDK",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "Intermedite in Computer Science",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 80,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 25),
                                      Text(
                                        "MTB School SDK",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "Secondary School",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 36, 99, 73),
                          Colors.black,
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(50),
                    child: Text(
                      "PROJECTS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontFamily: "f1",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: SizedBox(
                    width: w,
                    height: h,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          width: w,
                          height: 240,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(width: 100, height: 100),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.task_alt,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Flutter Todo List App",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "APP DEV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.calculate,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Flutter Calculator",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "APP DEV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.school,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "COMSATS Merit Calculator",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "APP DEV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.shopping_bag,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Personal Expense Tracker",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "APP DEV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),

                        SizedBox(
                          width: w,
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.network_check_sharp,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "ThunderNet - Windows socket LAN chating app",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "NETWORKING",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.calculate,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "NetSOCK - Simple harmless RAT",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "NETWORKING",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.task_alt,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "3D Car Driving Simulator Game",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "GAME DEV",
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                69,
                                                255,
                                                255,
                                                255,
                                              ),
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            splashColor: const Color.fromARGB(0, 255, 255, 255),
                            onTap: launchSite1,
                            child: Text(
                              "View more on Github",
                              style: TextStyle(
                                color: const Color.fromARGB(242, 247, 234, 234),
                                fontFamily: "f2",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 0, 0, 0),
                          const Color.fromARGB(255, 36, 99, 73),
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(50),
                    child: Text(
                      "SKILLS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontFamily: "f1",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: SizedBox(
                    width: w,
                    height: h,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          width: w,
                          height: 240,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(width: 100, height: 100),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.android,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Mobile App development",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.web,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Web app development",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.gamepad_outlined,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Game developement",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.code,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "System level coding",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.computer_rounded,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Linux Bash",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.wifi,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Networking and socket programming",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  color: const Color.fromARGB(86, 45, 101, 47),
                                  elevation: 10,
                                  child: SizedBox(
                                    width: 300,
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Icon(
                                            Icons.design_services_outlined,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Graphics designing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "f2",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                            "Memberships",
                            style: TextStyle(
                              color: const Color.fromARGB(242, 247, 234, 234),
                              fontFamily: "f2",
                              fontSize: w >= h ? 60 : 30,
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://i.ibb.co/rKXvgTPH/pngwing-com.png",
                                height: w >= h ? 30 : 20,
                                width: w >= h ? 30 : 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Google Developer Groups on Campus CUI Lahore",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    242,
                                    247,
                                    234,
                                    234,
                                  ),
                                  fontFamily: "f2",
                                  fontSize: w >= h ? 20 : 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://i.ibb.co/SpwTqC4/pngwing-com-1.png",
                                height: w >= h ? 30 : 20,
                                width: w >= h ? 30 : 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Microsoft Learn Student Ambassadors (MLSA) CUI Lahore",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    242,
                                    247,
                                    234,
                                    234,
                                  ),
                                  fontFamily: "f2",
                                  fontSize: w >= h ? 20 : 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://i.ibb.co/wZbkN4T5/pngwing-com-2.png",
                                height: w >= h ? 30 : 20,
                                width: w >= h ? 60 : 40,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "IEEE RAS Robotics and Automation Society CUI Lahore",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    242,
                                    247,
                                    234,
                                    234,
                                  ),
                                  fontFamily: "f2",
                                  fontSize: w >= h ? 20 : 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(child: Image.asset(bg!, fit: BoxFit.cover)),
                Positioned(
                  top: 60,
                  child: Text(
                    "CONTACT",
                    style: TextStyle(
                      color: const Color.fromARGB(131, 247, 234, 234),
                      fontFamily: "f1",
                      fontSize: w >= h ? 100 : 80,
                    ),
                  ),
                ),
                Positioned(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        width: w >= h ? w - 500 : 300,
                        height: 400,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(54, 0, 0, 0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Icon(Icons.email_outlined, color: const Color.fromARGB(134, 255, 255, 255), size: 80,),
                              SizedBox(height: 30),
                              Text(
                                "Let's Connect",
                                style: TextStyle(
                                  color: const Color.fromARGB(157, 247, 234, 234),
                                  fontFamily: "f1",
                                  fontSize: w >= h ? 60 : 30,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Text("talhaasif.dev@gmail.com", style: TextStyle(color: Colors.white, fontFamily: "f2", fontSize: 15),)
                              ],),
                              SizedBox(height: 20,),
                              
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
