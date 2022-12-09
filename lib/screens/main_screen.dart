import 'package:flutter/material.dart';
import 'package:gaming/screens/results_screen.dart';

import '../utilis/game.dart';
import '../widgets/button.dart';
// import 'package:rock_paper_scisor_game/screens/results_screen.dart';
// import 'package:rock_paper_scisor_game/utilis/game.dart';
// import 'package:rock_paper_scisor_game/widgets/button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;
    return Scaffold(
      // appBar: AppBar(title: const Text("Rock_Paper Scissors"),),
      backgroundColor: const Color(0xFFD323CA),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            Container(
              padding:const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "SCORE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${Game.gameScore}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
             Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Stack(
                  children: [
                    Expanded(
                      child: Positioned(
                        top: 0,
                        left: MediaQuery.of(context).size.width / 2 -
                            (btnWidth / 2) -
                            20,
                        child: Hero(
                          tag: "Rock",
                          child: gameBtn(() {
                            print("you choosed rock");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    GameScreen(GameChoice("Rock")),
                              ),
                            );
                          }, "images/rock_btn.png", btnWidth),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Positioned(
                        top: btnWidth,
                        left: MediaQuery.of(context).size.width / 2 -
                            btnWidth -
                            40, // we soustract the half of ther widget size and the half of the padding,
                        child: Hero(
                          tag: "Scisors",
                          child: gameBtn(() {
                            print("you choosed scisors");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    GameScreen(GameChoice("Scisors")),
                              ),
                            );
                          }, "images/scisor_btn.png", btnWidth),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Positioned(
                        top: btnWidth,
                        right: MediaQuery.of(context).size.width / 2 -
                            btnWidth -
                            40, // we soustract the half of ther widget size and the half of the padding,
                        child: Hero(
                          tag: "Paper",
                          child: gameBtn(() {
                            print("you choosed paper");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    GameScreen(GameChoice("Paper")),
                              ),
                            );
                          }, "images/paper_btn.png", btnWidth),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                padding: const EdgeInsets.all(24.0),
                onPressed: () {},
                shape:const StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 5)),
                child:const Text(
                  "Rules",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
