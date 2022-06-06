import 'package:bi_fikir/Screens/mainApp/constants.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen();

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDescBGColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: "ideaImage",
                  child: Image.asset(
                    "assets/images/fikirbir.jpg",
                    height: 400.0,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 64.0, bottom: 0.0, left: 24.0, right: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                            height: 40.0,
                            width: 40.0,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                color: kButtonBGColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(48.0)),
                            child: Image.asset("assets/icons/back.jpg")),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width / 2,
                          child: Text(
                            "Banka Kartlarını Tek Uygulamadan Takip Etme",
                            style: TextStyle(
                                fontSize: 22.0,
                                color: kLightColor,
                                fontWeight: FontWeight.bold),
                          )),
                      Hero(
                        tag: 'likes',
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
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: kLightColor.withOpacity(0.8),
                    height: 32.0,
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
                              color: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.8)),
                        ),
                      ),
                      Positioned(
                        top: 24.0,
                        right: 24.0,
                        child: Container(
                          height: 34.0,
                          width: 115.0,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: kBoxColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Row(children: [
                            Text(
                              "23 Mayıs 2022",
                              style: TextStyle(
                                  fontSize: 13.5,
                                  color: Colors.black.withOpacity(0.95)),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                    color: kLightColor.withOpacity(0.8),
                    height: 32.0,
                  ),
                  Text("Günümüzde neredeyse her insanın birden fazla bankaya ait kartları bulunmaktadır. Bu durum tüm banka kartlarına ait borçları, kampanyaları ve fırsatları takip etmemizi zorlaştırmaktadır. Bu uygulama sayasinde farklı bankalara ait kartlar tek uygulamadan takip edilebilmektedir.", style: TextStyle(fontSize: 18.0, color: kLightColor),),
                ],
              ),
            ),
            Container(height:64),
          ],
        ),
      ),
    );
  }
}
