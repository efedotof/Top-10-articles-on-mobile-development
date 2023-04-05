import 'package:flutter/material.dart';

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
        for (int i = 0; i < 30; i++)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: card_space(context),
          ),
      ],
    );
  }

  Widget card_space(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      height: 150,
      child: Card(
        elevation: 3,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Название карточки",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: out_button_in_card(context),
            ),
          ],
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
  Widget build(BuildContext context) {
    return start_page(context);
  }
}
