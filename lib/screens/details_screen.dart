import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.84,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    currentPage = value;
                    setState(() {});
                  },
                  /*   children: pageModel
                      .map((e) => buildContainer(
                      e.titleText, e.image, e.description, e.buttonText))
                      .toList(),*/
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
