import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tof/models/News.dart';

class NewsTile extends StatefulWidget {
  final News data;
  NewsTile(this.data);

  @override
  _NewsTileState createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(this.widget.data.date,
                        style: GoogleFonts.getFont('Roboto',
                            fontSize: 16,
                            color: Color.fromARGB(255, 196, 196, 196))),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text(
                        this.widget.data.title,
                        style: GoogleFonts.getFont('Roboto',
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    this.widget.data.image,
                    fit: BoxFit.fill,
                    height: 100,
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(this.widget.data.description,
              style: GoogleFonts.getFont('Roboto',
                  fontSize: 16, color: Color.fromARGB(255, 211, 211, 211))),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Color.fromARGB(255, 81, 81, 81),
          thickness: 2,
        )
      ],
    );
  }
}
