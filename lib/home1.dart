// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class HomePage extends StatelessWidget{
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: const Text("MyHome"),
//       actions: [
//         Icon(Icons.camera_alt),
//     SizedBox(width: 30,
//     ),
//     Icon(Icons.search),
//     ],
//       body: ListView(
//         children: [
//           Center(child: Text("fruits",style: GoogleFonts.dancingScript(
//             fontSize: 30, color: Colors.green))),
//           const Card(
//           child: ListTile(
//             leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/orange.png")),
//             title: Text("Orange"),
//             subtitle: Text("\$200"),
//             trailing: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                  Padding(
//     padding: EdgeInsets.only(right: 8.0),
//     child: Icon(Icons.favorite)
//           ),
//             Icon(Icons.shopping_cart)
//               ],
//           )),
//
//     ),
//           const Card(
//             child: ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/apple.png")),
//               title: Text("Apple"),
//               subtitle: Text("\$150"),
//               trailing: Icon(Icons.shopping_cart),
//             ),
//           ),
//           const Card(
//             child: ListTile(
//               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/banana.png")),
//               title: Text("Banana"),
//               subtitle: Text("\$100"),
//               trailing: Icon(Icons.shopping_cart),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }