import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Recent_project extends StatefulWidget {
  const Recent_project({Key? key}) : super(key: key);

  @override
  State<Recent_project> createState() => _Recent_projectState();
}

class _Recent_projectState extends State<Recent_project> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.blue.shade100, //                   <--- border color
        width: 8.0,
      ),
    );
  }

  final Uri _Github = Uri.parse('https://github.com/oriademuyi/lovemeter');
  final Uri _Githubschdular =
      Uri.parse('https://github.com/oriademuyi/-Scheduler');
  final Uri _Githubrecipe =
      Uri.parse('https://github.com/oriademuyi/coctail-recipe/');
  Future<void> _launGithublovemeter() async {
    if (!await launchUrl(_Github)) {
      throw 'Could not launch $_Github';
    }
  }

  Future<void> _launGithubrecipe() async {
    if (!await launchUrl(_Githubrecipe)) {
      throw 'Could not launch $_Githubrecipe';
    }
  }

  Future<void> _launGithubshdular() async {
    if (!await launchUrl(_Githubschdular)) {
      throw 'Could not launch $_Githubschdular e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xffE0FCE7),
                      radius: 30,
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Column(
                    children: [
                      Text(
                        "Scheduler (individual project)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Scheduler up to date app that helps a registered user to keep and monitor day to day activities with push notification service.",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            color: Colors.blue.shade100,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  _launGithubshdular();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text("Github",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Text("data",
                          //     style:
                          //         TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xffE0FCE7),
                      radius: 30,
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Column(
                    children: [
                      Text(
                        "Cocktail Recipe (individual project)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Cocktail recipe is a mobile app that allows a registered user to effortlessly search for alcoholic or non alcoholic drinks recipes and production process.",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            color: Colors.blue.shade100,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  _launGithubrecipe();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text("Github",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Text("data",
                          //     style:
                          //         TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xffE0FCE7),
                      radius: 30,
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Column(
                    children: [
                      Text(
                        "Dillivry(datamellon project)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "dillivry is an application that connects senders to logistics provider,i am part of the flutter app team that worked on this project",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            color: Colors.blue.shade100,
                            child: Center(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text("Github",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Text("data",
                          //     style:
                          //         TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xffE0FCE7),
                      radius: 30,
                      child: Text(
                        "4",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Column(
                    children: [
                      Text(
                        "Lovemeter (mini individual project)",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "lovemeter is a simple mini app that help in calculating love percentage using age,date of birth ,height, religion.",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            color: Colors.blue.shade100,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  _launGithublovemeter();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text("Github",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Text("data",
                          //     style:
                          //         TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    ]);
  }
}
