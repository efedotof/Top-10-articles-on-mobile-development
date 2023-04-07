import 'package:flutter/material.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:top10stat/home_page.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({super.key});

  @override
  State<StatScreen> createState() => _StatScreenState();
}

String scl = textList[0];

class _StatScreenState extends State<StatScreen> {
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      _toggle();
    });
    textList.clear();
  }

  Widget anim_start_page(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: loading
            ? Container(
                key: Key("loading"),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: GestureDetector(
                      onTap: _toggle,
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ),
              )
            : ListView(
                children: [
                  Container(
                    key: Key("normal"),
                    child: Center(
                      child: Text("$scl"),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  _toggle() {
    setState(() {
      loading = !loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return anim_start_page(context);
  }
}
