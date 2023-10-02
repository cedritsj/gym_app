import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final List levels = [
    "inactive",
    "beginner",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/myPicture.jpg"),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3), BlendMode.colorDodge),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  "HARD  ",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFB71C1C),
                    letterSpacing: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  "ELEMENT",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About you",
                  style: GoogleFonts.lato(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "We want to know more about you! follow the next steps \n to complete your information.",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 226,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: ListView.builder(
                      itemCount: levels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          height: 226,
                          width: 195,
                          decoration: const BoxDecoration(
                            color: Color(0xFFB71C1C),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
