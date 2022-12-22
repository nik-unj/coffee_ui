import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  final String coffeeDescription;

  DetailsPage(
      {required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeeDescription,
      required this.coffeePrice});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavorite = false;

  @override
  // Widget build(BuildContext context) {
  //   var size = MediaQuery.of(context).size;
  //   return Scaffold(
  //     backgroundColor: Colors.orange,
  //     appBar: AppBar(
  //       elevation: 0,
  //       backgroundColor: Colors.transparent,
  //       leading: IconButton(
  //         icon: Icon(Icons.arrow_back_ios),
  //         color: Colors.grey[900],
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //       ),
  //     ),
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           SizedBox(
  //             child: Stack(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.all(10.0),
  //                   child: Row(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                     children: [
  //                       Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                             widget.coffeeName,
  //                             style: GoogleFonts.bebasNeue(
  //                                 fontSize: 40, color: Colors.grey[900]),
  //                           ),
  //                           SizedBox(
  //                             height: size.height * 0.10,
  //                           ),
  //                           Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Text(
  //                                 "Price",
  //                                 style: GoogleFonts.bebasNeue(
  //                                     fontSize: 25, color: Colors.grey[900]),
  //                               ),
  //                               Text(
  //                                 '\$ ${widget.coffeePrice}',
  //                                 style: GoogleFonts.concertOne(
  //                                     fontSize: 30, color: Colors.grey[900]),
  //                               ),
  //                             ],
  //                           ),
  //                         ],
  //                       ),
  //                       ClipRRect(
  //                         borderRadius: BorderRadius.circular(10.0),
  //                         //add border radius
  //                         child: Image.asset(
  //                           widget.coffeeImagePath,
  //                           height: size.height * 0.27,
  //                           fit: BoxFit.contain,
  //                           alignment: Alignment.centerRight,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 Container(
  //                   margin: EdgeInsets.only(top: size.height * 0.3),
  //                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
  //                   height: size.height * 0.6,
  //                   width: size.width,
  //                   decoration: BoxDecoration(
  //                     color: Colors.grey[900],
  //                     borderRadius: BorderRadius.only(
  //                       topLeft: Radius.circular(24),
  //                       topRight: Radius.circular(24),
  //                     ),
  //                   ),
  //                   child: Column(
  //                     children: [
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Text(
  //                             "200ml",
  //                             style: GoogleFonts.concertOne(
  //                                 color: Colors.orange,
  //                                 fontSize: 18),
  //                           ),
  //                           Container(
  //                             decoration: BoxDecoration(
  //                               shape: BoxShape.circle,
  //                               border: Border.all(color: Colors.white),
  //                             ),
  //                             child: Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: InkWell(
  //                                 onTap: () {
  //                                   setState(() {
  //                                     isFavorite = !isFavorite;
  //                                   });
  //                                 },
  //                                 child: Icon(
  //                                   isFavorite
  //                                       ? Icons.favorite
  //                                       : Icons.favorite_border_outlined,
  //                                   color: Colors.red,
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                       Text(
  //                         widget.coffeeDescription,
  //                         style: GoogleFonts.concertOne(
  //                             color: Colors.grey[500],
  //                             fontSize: 18,
  //                             height: 1.5),
  //                       )
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 440,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage(widget.coffeeImagePath),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 10,
                      child: InkWell(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 350,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 140,
                        width: 377,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            color: Colors.black54),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.coffeeName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'bebasNeue',
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Color(0xffd17842),
                            fontFamily: 'bebasNeue',
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.coffeeDescription,
                        style: TextStyle(
                          fontFamily: 'concertOne',
                          height: 1,
                          color: Color(0xff919296),
                          fontSize: 18,
                        ),
                      ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // Text(
                      //   "Size",
                      //   style: TextStyle(
                      //       color: Color(0xff919296),
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       height: 37,
                      //       width: 110,
                      //       child: Center(
                      //           child: Text(
                      //         "S",
                      //         style: TextStyle(
                      //           color: Color(0xff919296),
                      //           fontSize: 18,
                      //         ),
                      //       )),
                      //       decoration: BoxDecoration(
                      //           color: Colors.black,
                      //           borderRadius: BorderRadius.circular(10),
                      //           border: Border.all(color: Color(0xffd17842))),
                      //     ),
                      //     SizedBox(
                      //       width: 11,
                      //     ),
                      //     Container(
                      //       height: 37,
                      //       width: 110,
                      //       child: Center(
                      //           child: Text(
                      //         "M",
                      //         style: TextStyle(
                      //           color: Color(0xff919296),
                      //           fontSize: 18,
                      //         ),
                      //       )),
                      //       decoration: BoxDecoration(
                      //           color: Color(0xff101419),
                      //           borderRadius: BorderRadius.circular(8)),
                      //     ),
                      //     SizedBox(
                      //       width: 11,
                      //     ),
                      //     Container(
                      //       height: 37,
                      //       width: 110,
                      //       child: Center(
                      //           child: Text(
                      //         "L",
                      //         style: TextStyle(
                      //           color: Color(0xff919296),
                      //           fontSize: 18,
                      //         ),
                      //       )),
                      //       decoration: BoxDecoration(
                      //           color: Color(0xff101419),
                      //           borderRadius: BorderRadius.circular(8)),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 27,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Color(0xffd17842),
                                    fontFamily: 'bebasNeue',
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    r'$ ',
                                    style: TextStyle(
                                      color: Color(0xffd17842),
                                      fontSize: 25,
                                      fontFamily: 'concertOne',
                                    ),
                                  ),
                                  Text(
                                    widget.coffeePrice,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'concertOne',
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          // ignore: deprecated_member_use
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
