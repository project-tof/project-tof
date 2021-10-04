import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tof/controllers/NewsController.dart';
import 'package:tof/tile/newsTile.dart';
import 'package:url_launcher/url_launcher.dart';

class NewspaperPage extends StatefulWidget {
  const NewspaperPage({Key key}) : super(key: key);

  @override
  _NewspaperPageState createState() => _NewspaperPageState();
}

class _NewspaperPageState extends State<NewspaperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Newsletter",
          style: TextStyle(fontSize: 26),
        ),
        titleSpacing: 30,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                  future: NewsController().fetchNews(),
                  builder: (context, snapshot) {
                    var news = snapshot.data;
                    if (news == null) return SizedBox();
                    return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: InkWell(
                              onTap: () async {
                                var url = news[index].url;
                                await launch(url);
                              },
                              child: NewsTile(news[index])),
                        );
                      },
                      itemCount: news.length,
                    );
                  },
                ),
              ))
            ],
          )),
    );
  }
}
