import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_food_app/utility/const.dart';
import 'package:simple_food_app/utility/model_car.dart';

class SecondScreen extends StatefulWidget {
  List<Cars> filteredList;

  SecondScreen({
    Key? key,
    required this.filteredList,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Maker",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: widget.filteredList.length,
          itemBuilder: (context, index) {
            return productDescription(widget.filteredList[index]);
          },
        ));
  }

  Container productDescription(Cars singleCar) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 3.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
       // border: Border.all(width: 1, color: Colors.grey.shade500),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            child: Image.network(
              singleCar.image,
              fit: BoxFit.fitHeight,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      singleCar.make,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      singleCar.modelName,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      singleCar.bodyType,
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade800),
                    ),
                    Container(
                        child: Text(
                      "₹" + singleCar.price,
                      style: TextStyle(fontSize: 25),
                    )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.blueGrey.shade400,
              ),
              height: 35,
              width: double.maxFinite,
              child: Center(
                  child: Text(
                "View Info",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
