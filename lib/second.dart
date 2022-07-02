// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:meal_monkey_food_delivery_ui/view/selected_menu_items.dart';

// import 'Screens/myhomepage.dart';

// class MenuScreen extends StatefulWidget {
//   const MenuScreen({Key? key}) : super(key: key);

//   @override
//   _MenuScreenState createState() => _MenuScreenState();
// }

// class _MenuScreenState extends State<MenuScreen> {
//   FocusNode focusNode = FocusNode();
//   List<Map<String, dynamic>> menuItems = [
//     {"image": "assets/images/food.png", "food": "Food", "item": "120 Items"},
//     {
//       "image": "assets/images/bevereges.png",
//       "food": "Beverege",
//       "item": "220 Items"
//     },
//     {
//       "image": "assets/images/desserts.png",
//       "food": "Desserts",
//       "item": "155 Items"
//     },
//     {
//       "image": "assets/images/promotions.png",
//       "food": "Promotions",
//       "item": "25 Items"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: height * 0.03,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Menu",
//                     style: TextStyle(fontSize: 22),
//                   ),
//                   Icon(
//                     Icons.shopping_cart,
//                     size: 35,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: height * 0.03,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//               child: Container(
//                 height: height * 0.055,
//                 width: width * 0.9,
//                 decoration: BoxDecoration(
//                     color: Colors.grey.shade200,
//                     borderRadius: BorderRadius.circular(25)),
//                 child: Padding(
//                   padding:
//                       EdgeInsets.only(left: width * 0.03, top: height * 0.001),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(
//                           Icons.search,
//                           color: Colors.grey,
//                         ),
//                         hintText: "Search food",
//                         hintStyle: TextStyle(color: Colors.grey),
//                         enabledBorder:
//                             UnderlineInputBorder(borderSide: BorderSide.none),
//                         focusedBorder:
//                             UnderlineInputBorder(borderSide: BorderSide.none)),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: height * 0.05,
//             ),
//             Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   height: height * 0.67,
//                   width: width * 0.27,
//                   decoration: BoxDecoration(
//                       color: Colors.orange.shade800,
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(45),
//                         bottomRight: Radius.circular(45),
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 60),
//                   child: Column(
//                     children: List.generate(
//                       4,
//                       (index) => Stack(
//                         clipBehavior: Clip.none,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           SelectedMenuItem()));
//                             },
//                             child: Container(
//                               height: height * 0.12,
//                               width: width * 0.75,
//                               margin: EdgeInsets.symmetric(
//                                   vertical: height * 0.015),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(40),
//                                       bottomLeft: Radius.circular(40),
//                                       topRight: Radius.circular(15),
//                                       bottomRight: Radius.circular(15)),
//                                   boxShadow: [
//                                     BoxShadow(
//                                         color: Colors.grey.shade300,
//                                         blurRadius: 5,
//                                         spreadRadius: 3),
//                                   ]),
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: width * 0.16,
//                                     vertical: height * 0.025),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "${menuItems[index]["food"]}",
//                                       style: TextStyle(
//                                           fontSize: 22,
//                                           fontWeight: FontWeight.w700,
//                                           color: Colors.grey.shade700),
//                                     ),
//                                     SizedBox(
//                                       height: height * 0.01,
//                                     ),
//                                     Text(
//                                       "${menuItems[index]["item"]}",
//                                       style: TextStyle(
//                                           color: Colors.grey.shade400,
//                                           fontSize: 15),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             top: 0,
//                             left: -40,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Image.asset(menuItems[index]["image"]),
//                                 Stack(
//                                   clipBehavior: Clip.none,
//                                   children: [
//                                     Container(
//                                       height: height * 0.05,
//                                       width: height * 0.05,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Positioned(
//                               right: -20,
//                               bottom: 0,
//                               top: 0,
//                               child: Container(
//                                 height: height * 0.05,
//                                 width: height * 0.05,
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     shape: BoxShape.circle,
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.grey.shade300,
//                                           spreadRadius: 3,
//                                           blurRadius: 2)
//                                     ]),
//                                 child: Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: Colors.orange,
//                                 ),
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
