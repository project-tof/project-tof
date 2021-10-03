import 'package:flutter/material.dart';
import 'package:tof/main.dart';
import 'package:tof/map.page.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 35, 35),
        body: Padding(
          padding: EdgeInsets.only(top: 90),
          child: Center(
            child: Column(children: <Widget>[
              Image.network(
                "https://cdn.discordapp.com/attachments/893619730546589719/893987007775260712/a-removebg-preview.png",
                scale: 2.5,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "The fire tracking tool",
                  style: GoogleFonts.getFont('DM Sans',
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Text(
                "the world has been waiting for.",
                style: GoogleFonts.getFont('DM Sans',
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: OutlinedButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage())),
                  child: Text("Log In",
                      style: GoogleFonts.getFont('Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white)),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(78, 15, 78, 15),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      side:
                          BorderSide(color: Color.fromARGB(255, 255, 79, 20))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage())),
                    child: Text("Sign Up",
                        style: GoogleFonts.getFont('Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 79, 20),
                        padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0)))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage())),
                    child: Text("Continue as a guest",
                        style: GoogleFonts.getFont('Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.underline))),
              )
            ]),
          ),
        ));
  }
}
