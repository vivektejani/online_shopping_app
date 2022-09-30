import 'package:flutter/material.dart';

import 'modals.dart';
class details_page extends StatefulWidget {
  static const String id = 'details_page';

  @override
  _details_pageState createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_sharp,),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: Image.network(
                args.image,
                height: MediaQuery.of(context).size.height * .3,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(args.productName,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CrimsonText')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black.withOpacity(.2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13),
                        child: Icon(
                          Icons.minimize,
                          size: 30,
                        ),
                      ),

                      Icon(
                        Icons.add,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    args.price.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  left: 20,
                ),
                child: Text(
                  args.description,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Text(
                args.description,
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(.5)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 70, right: 20),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 20),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 188, 67, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}