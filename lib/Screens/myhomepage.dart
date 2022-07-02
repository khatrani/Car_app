import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle _style = const TextStyle(
      color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height / 2.7,
            color: Colors.blue.shade900,
            child: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Hey james,",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25)),
                            Text(
                              "What would you like to do today?",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxVu5Q8f6xrJZQ3gwh2Fvs6hR8Xr6Zsg2fbzSkf-vMWk3DPI-96OJ_ZEyxkfVjg0OwKxc&usqp=CAU'),
                            radius: 20)
                      ],
                    ),
                  ),
                  SizedBox(height: height / 20),
                  Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          color: Colors.blue.shade800,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Icon(Icons.arrow_downward),
                            Text(
                              "⤸ Receive",
                              style: _style,
                            ),
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/v.jpg"),
                            ),
                            Text(
                              "Send ⤻",
                              style: _style,
                            ),
                            // Icon(Icons.arrow_downward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              height: height / 11,
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      )
                    ],
                  )
                ],
              )

              // ListView.builder(
              //   itemCount: 4,
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (context, index) {
              //     return Padding(
              //       padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              //       child: Column(
              //         children: const [Icon(Icons.person), Text("data")],
              //       ),
              //     );
              //   },
              // ),
              ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../second.dart';
// import 'package:meal_monkey_food_delivery_ui/view/detail_screen.dart';
// import 'package:meal_monkey_food_delivery_ui/view/menu_Screen.dart';

// class SelectedMenuItem extends StatefulWidget {
//   const SelectedMenuItem({Key? key}) : super(key: key);

//   @override
//   _SelectedMenuItemState createState() => _SelectedMenuItemState();
// }

// class _SelectedMenuItemState extends State<SelectedMenuItem> {
//   List<Map<String, dynamic>> Items = [
//     {
//       "image": "assets/images/pie.png",
//       "text": "French Apple Pie",
//       "tx": "Minute by tuk tuk"
//     },
//     {
//       "image": "assets/images/cake.png",
//       "text": "Dark Chocolate Cake",
//       "tx": "Cakes by Tella",
//     },
//     {
//       "image": "assets/images/shake.png",
//       "text": "Street Shake",
//       "tx": "Cafe Racer",
//     },
//     {
//       "image": "assets/images/brownies.png",
//       "text": "Fudgy Chewy Brownies",
//       "tx": "Minutes by Tuk Tuk",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           SizedBox(
//             height: height * 0.04,
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: width * 0.03),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MenuScreen())
//                                   );
//                         },
//                         icon: Icon(Icons.arrow_back_ios_outlined)),
//                     SizedBox(
//                       width: width * 0.01,
//                     ),
//                     Text(
//                       "Desserts",
//                       style: TextStyle(fontSize: 22),
//                     ),
//                   ],
//                 ),
//                 Icon(
//                   Icons.shopping_cart,
//                   size: 35,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: height * 0.02,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//             child: Container(
//               height: height * 0.055,
//               width: width * 0.9,
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade200,
//                   borderRadius: BorderRadius.circular(25)),
//               child: Padding(
//                 padding:
//                     EdgeInsets.only(left: width * 0.03, top: height * 0.001),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                       ),
//                       hintText: "Search food",
//                       hintStyle: TextStyle(color: Colors.grey),
//                       enabledBorder:
//                           UnderlineInputBorder(borderSide: BorderSide.none),
//                       focusedBorder:
//                           UnderlineInputBorder(borderSide: BorderSide.none)),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: height * 0.02,
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: 4,
//               scrollDirection: Axis.vertical,
//               physics: BouncingScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => DetailScreen(
//                     //       image: Items[index]["image"],
//                     //       name: Items[index]["text"],
//                     //     ),
//                     //   ),
//                     // );
//                   },
//                   child: Container(
//                     margin: EdgeInsets.symmetric(
//                         horizontal: width * 0.01, vertical: height * 0.01),
//                     height: height * 0.27,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage(
//                             Items[index]["image"],
//                           ),
//                           fit: BoxFit.fill),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: width * 0.06, bottom: height * 0.02),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   Text(
//                                     "${Items[index]["text"]}",
//                                     style: TextStyle(
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w800,
//                                         color: Colors.white),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: height * 0.01,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.orange.shade900,
//                                 size: 20,
//                               ),
//                               Text(
//                                 "4.9",
//                                 style: TextStyle(
//                                     color: Colors.orange.shade900,
//                                     fontSize: 15),
//                               ),
//                               SizedBox(
//                                 width: width * 0.02,
//                               ),
//                               Text(
//                                 "${Items[index]["tx"]}",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 15),
//                               ),
//                               SizedBox(
//                                 width: width * 0.01,
//                               ),
//                               Text(
//                                 ".",
//                                 style: TextStyle(
//                                     color: Colors.orange.shade800,
//                                     fontSize: 20),
//                               ),
//                               SizedBox(
//                                 width: width * 0.01,
//                               ),
//                               Text(
//                                 "Dessrets",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 15),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
