import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:top10stat/screensplash.dart';
import 'package:top10stat/array_list.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Widget start_page(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: widget_main(context),
    );
  }

  Widget widget_main(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(3.14),
      children: [
        for (int i = 0; i < titleList.length; i++)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: card_space(context, titleList[i]),
          ),
      ],
    );
  }

  Widget card_space(BuildContext context, text) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        height: 300,
        child: Card(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 169, 184, 207),
              Color.fromARGB(255, 197, 214, 240),
            ])),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, left: 10),
                      child: Text(
                        "$text",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Читать...',
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget out_button_in_card(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      child: OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Читать...',
            style: TextStyle(color: Colors.black12),
          )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (titleList.length == 0) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => splashScreens()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return start_page(context);
  }
}
