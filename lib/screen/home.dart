import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_resume/screen/about.dart';
import 'package:my_resume/screen/portfolio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  bool darkmode = false;
  AnimationController? controller;
  Animation? animination;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animination = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);

    controller!.forward();

    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  bool pageSwitchhome = true;
  bool pageSwitchabout = false;
  bool pageSwitchportfolio = false;

  final Uri _url = Uri.parse('https://facebook.com/olanrewaju.m.olamide');
  final Uri _linkedin =
      Uri.parse('https://www.linkedin.com/in/olarewaju-muyiwa-6807231ba');
  final Uri _twitter = Uri.parse('https://mobile.twitter.com/Eduardo_olamide');
  final Uri _whatsap = Uri.parse('https://wa.me/message/BMKGFPRWPQQDM1');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launlinkedin() async {
    if (!await launchUrl(_linkedin)) {
      throw 'Could not launch $_linkedin';
    }
  }

  Future<void> _launchtwitter() async {
    if (!await launchUrl(_twitter)) {
      throw 'Could not launch $_twitter';
    }
  }

  Future<void> _launchwhatsapp() async {
    if (!await launchUrl(_whatsap)) {
      throw 'Could not launch $_whatsap';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkmode ? Colors.black12 : Colors.indigo[900],
        appBar: AppBar(
          backgroundColor: darkmode ? Colors.black12 : Colors.indigo[900],
          title: Center(
            child: pageSwitchabout
                ? Text("About me ")
                : pageSwitchportfolio
                    ? Text("My Experience")
                    : Text('My Resume'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      darkmode = !darkmode;
                    });
                  },
                  icon: Icon(
                    darkmode ? Icons.toggle_on : Icons.toggle_off,
                    color: Colors.white,
                  )),
            ),
          ],
          elevation: 0.0,
        ),
        drawer: Drawer(child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ConstrainedBox(
                        constraints: constraints.copyWith(
                          minHeight: constraints.maxHeight,
                          maxHeight: double.infinity,
                        ),
                        child: IntrinsicHeight(
                          child: SafeArea(
                              child: Column(
                            children: [
                              Container(
                                height: 190,
                                child: DrawerHeader(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 20),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(
                                                Icons.arrow_back_rounded,
                                                color: Colors.green,
                                              )),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor:
                                                    Color(0xffE0FCE7),
                                                radius: 40,
                                                child: Image.asset(
                                                  'assets/muyiwa12.jpeg',
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                              Text('Olarewaju muyiwa '),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text('olamidevick5@gmail.com'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text('08133691873'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          pageSwitchabout = false;
                                          pageSwitchportfolio = false;

                                          pageSwitchhome = true;
                                        });

                                        Navigator.pop(context);
                                      },
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.home,
                                              )),
                                          Text("Home"),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          pageSwitchabout = true;
                                          pageSwitchportfolio = false;

                                          pageSwitchhome = false;
                                        });

                                        Navigator.pop(context);
                                      },
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.person,
                                              )),
                                          Text("About"),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          pageSwitchabout = false;
                                          pageSwitchportfolio = true;

                                          pageSwitchhome = false;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.group,
                                              )),
                                          Text("Experience"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                        ))));
          },
        )),
        body: pageSwitchabout
            ? about_page()
            : pageSwitchportfolio
                ? portfolio_page()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                child: Image.asset(
                                  'assets/muyiwa12.jpeg',
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  "Hello Welcome, My name is Olarewaju Muyiwa",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: TypewriterAnimatedTextKit(
                          text: ["LET ME INTRODUCE MYSELF"],
                          textStyle: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              " A dynamic and result-driven enthusiast with an in-depth knowledge of software development procedures with vast experience in mobile app development (flutter) and basic knowledge in web development (react).",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  height: 1.6),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "I am  comfortable using flutter to buid IOS/andriod application, I am Well versed in the vicinity of Information Technology (IT) with strong understanding of theoretical and practical knowledge. take pride in making sure all the projects are up to client’s satisfaction ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  height: 1.6),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Don't you think you should work with me on your next project , Feel free to connect with me on 08133691873 or connect on my socail media handle bellow.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Connect with me!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "You can connect with me on the following social medial platform",
                                  style: TextStyle(fontSize: 14, height: 1.6),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.black
                                          : Colors.indigo[900],
                                      radius: 20,
                                      child: IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.facebook,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            _launchUrl();
                                            // facebook.com/olanrewaju.m.olamide
                                          }),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.black
                                          : Colors.indigo[900],
                                      radius: 20,
                                      child: IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.twitter,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            _launchtwitter();
                                          }),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.black
                                          : Colors.indigo[900],
                                      radius: 20,
                                      child: IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.linkedinIn,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            _launlinkedin();
                                          }),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.black
                                          : Colors.indigo[900],
                                      radius: 20,
                                      child: IconButton(
                                          icon: FaIcon(
                                            FontAwesomeIcons.whatsapp,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            _launchwhatsapp();
                                          }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ));
  }
}
