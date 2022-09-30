import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping_app/global.dart';

import 'modals/productsList.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
             child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Builder(
                        builder: (context) => IconButton(
                          icon: Icon(Icons.dashboard),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text("vivek tejani"),
                        Text(
                          "sarthana,surat",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Global.primaryColor,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(
                                color: Colors.black38,
                                blurRadius: 4)
                              ],
                            ),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                  prefixIcon: Icon(Icons.search),
                              )),
                        )),
                        SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(
                            color: Global.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.sort_by_alpha),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ...products.map((e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("details_page",arguments: e);
                  },
                   child: Container(
                    child: Row(children: [
                      Container(height: 160,width: 160,child: Image.network(e.image)),
                      Column(
                        children: [
                          Text(e.productName),
                          Text(e.price.toString()),
                        ],
                      )
                    ]),
                  ),
                ))
              ],
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
