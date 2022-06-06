import 'package:bi_fikir/Screens/mainApp/constants.dart';
import 'package:bi_fikir/Screens/mainApp/details_screen.dart';
import 'package:bi_fikir/Screens/mainApp/details_screen_2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kHomeBGColor,
      body: Container(
        padding:
            EdgeInsets.only(top: 64.0, bottom: 0.0, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/profil.webp",
                  height: 52.0,
                  width: 52.0,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Text("Hoşgeldin!",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kLightColor,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "BiFikir",
              style: TextStyle(
                  fontSize: 36.0,
                  color: kLightColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => DetailsScreen())),
              ),
              child: Stack(
                children: [
                  Hero(
                    tag: 'ideaImage',
                    child: Container(
                      height: 250.0,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(24.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/fikirbir.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 24.0,
                    right: 24.0,
                    child: Hero(
                      tag: "likes",
                      child: Container(
                        height: 34.0,
                        width: 68.0,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: kBoxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(children: [
                          Image.asset(
                            "assets/images/hand.png",
                            height: 16.0,
                            width: 16.0,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                            "78",
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.orange.withOpacity(0.95)),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Banka Kartlarını Tek Uygulamadan Takip Etme",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black.withOpacity(0.80),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/profil.webp",
                                height: 40.0,
                                width: 40.0,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: Text(
                                  "Team 69",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Color.fromARGB(255, 13, 11, 11)
                                          .withOpacity(0.8)),
                                ),
                              ),
                              Positioned(
                                top: 24.0,
                                right: 24.0,
                                child: Container(
                                  height: 34.0,
                                  width: 115.0,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: kBoxColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Row(children: [
                                    Text(
                                      "23 Mayıs 2022",
                                      style: TextStyle(
                                          fontSize: 13.5,
                                          color:
                                              Colors.black.withOpacity(0.95)),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            
            Stack(
              children: [
                Container(
                  height: 250.0,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: kLightColor,
                      borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/el.png"),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  top: 24.0,
                  right: 24.0,
                  child: Container(
                    height: 34.0,
                    width: 68.0,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: kBoxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Row(children: [
                      Image.asset(
                        "assets/images/hand.png",
                        height: 16.0,
                        width: 16.0,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        "38",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.orange.withOpacity(0.95)),
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fikriniz İçin Kolayca Yatırımcı Bulun",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black.withOpacity(0.80),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/profil.webp",
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Text(
                                "Team 69",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 13, 11, 11)
                                        .withOpacity(0.8)),
                              ),
                            ),
                            Positioned(
                              top: 24.0,
                              right: 24.0,
                              child: Container(
                                height: 34.0,
                                width: 120.0,
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: kBoxColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Row(children: [
                                  Text(
                                    "5 Haziran 2022",
                                    style: TextStyle(
                                        fontSize: 13.5,
                                        color: Colors.black.withOpacity(0.95)),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
