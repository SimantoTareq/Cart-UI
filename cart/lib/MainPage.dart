import 'package:cart/Model/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _itemCount = 0;
  double _subTotalPrice = 0;
  getTotalPrice() {
    double total = 0;
    detals.forEach((_itemCount) {
      total += _itemCount.totalPrice ?? _itemCount.price;
    });
    setState(() {
      _subTotalPrice = total;
    });
  }

  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            'MyCart',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        color: Color.fromARGB(215, 255, 255, 255),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: detals.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        width: 100,
                        height: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(detals[index].img.toString()),
                            Column(
                              children: [
                                Text("${detals[index].name}"),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text("${detals[index].rating}"),
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.pink,
                                    ),
                                    Text("${detals[index].distance}"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                        "${detals[index].totalPrice ?? detals[index].price}"),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            detals[index].order++;
                                            detals[index].totalPrice =
                                                detals[index].price! *
                                                    detals[index].order;
                                          });
                                        },
                                        icon: Icon(Icons.add)),
                                    Text("${detals[index].order}"),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            detals[index].order > 1
                                                ? detals[index].order--
                                                : detals[index].order;
                                            detals[index].totalPrice =
                                                detals[index].price! *
                                                    detals[index].order;
                                            getTotalPrice();
                                          });
                                        },
                                        icon: Icon(Icons.remove)),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Expanded(
              child: Container(),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
