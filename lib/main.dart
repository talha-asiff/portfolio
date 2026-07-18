import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    if(w>h){
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
                        SizedBox(height: 20,),
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
                          height: h - (w>=h ? 350 : 100),
                          child: ListView(
                            scrollDirection: w>h ? Axis.horizontal : Axis.vertical,
                            children: [
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [Colors.blue, const Color.fromARGB(255, 102, 68, 255)]),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/YFfZdq6C/pngwing-com.png", width: 80, height: 80,),
                                  Text("  Flutter", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 213, 193, 7), const Color.fromARGB(255, 204, 73, 2)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/1tdms01h/pngwing-com-3.png", width: 80, height: 80,),
                                  Text("  Firebase", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 65, 33, 243), const Color.fromARGB(255, 68, 227, 255)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/twXN4LCQ/dart.png", width: 80, height: 80,),
                                  Text("  Dart", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 24, 2, 148), const Color.fromARGB(255, 0, 85, 212)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/Lhh3nmN6/pngwing-com-1.png", width: 80, height: 80,),
                                  Text("  C++", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 20, 1, 131), const Color.fromARGB(255, 0, 69, 219)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/PzYtT580/pngwing-com-4.png", width: 80, height: 80,),
                                  Text("  C", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 15, 3, 81), const Color.fromARGB(255, 164, 219, 0)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/rGssrMxz/pngwing-com-2.png", width: 80, height: 80,),
                                  Text("  Python", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 1, 49, 131), const Color.fromARGB(255, 0, 106, 219)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/gZvycXJc/pngwing-com-5.png", width: 80, height: 80,),
                                  Text("  Godot Engine", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 131, 51, 1), const Color.fromARGB(255, 219, 131, 0)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/nNP21Wb9/pngwing-com-6.png", width: 80, height: 80,),
                                  Text("  HTML", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 1, 10, 131), const Color.fromARGB(255, 0, 110, 255)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/wFYhCSHj/pngwing-com-7.png", width: 80, height: 80,),
                                  Text("  CSS", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                              Container(
                                width: w>=h ? 350 : 300,
                                height: w>=h ? 100 : 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 131, 107, 1), const Color.fromARGB(255, 208, 219, 0)]),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.network("https://i.ibb.co/C5NXMC0X/pngwing-com-8.png", width: 80, height: 80,),
                                  Text("  Javascript", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "f2"),)
                                ],),
                              ),
                              SizedBox(width: 10, height: 10,),
                            ],
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 380,
                  //left: MediaQuery.of(context).size.width - 200,
                  child: Image.asset("imgs/anim.gif")
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
