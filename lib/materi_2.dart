// import 'package:flutter/material.dart';

// class HalamanKedua extends StatelessWidget {
//   const HalamanKedua({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('halaman kedua'),
//         backgroundColor: Colors.teal,
//       ),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: (){
//                 Navigator.pushNamed(context, '/halaman3');
//               }, 
//               child: Text('ke halaman 3')),

//               SizedBox(height: 10,),

//               ElevatedButton(
//                 onPressed: (){
//                   Navigator.pop(context);
//                 }, 
//                 child: Text('Kembali'))
//           ],
//         ),
//       ),


//     );
//   }
// }