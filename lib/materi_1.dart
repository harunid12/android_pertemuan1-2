import 'package:first_app/materi_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Flutter pertama', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1. Text', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
            Text('text normal', style: TextStyle(
              fontSize: 24
              )
            ),
            Text('Text Miring', 
            style: TextStyle(fontStyle: FontStyle.italic),
            ),
            Text('Text berqwarna', style: TextStyle(color: Colors.blue),
            ),

            // Icon
            const Divider(),

            Text('2. Icon', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
              ),
            ),

            const Row(
              children: [
                Icon(Icons.home),
                Icon(Icons.favorite, color: Colors.red,),
                Icon(Icons.person)
              ],
            ),

            const Divider(),
            // Image
            Text('3. Image Lokal', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),

            Image.asset(
              'assets/images/bunga2.jpg',
              width: 150,
            ),
            
            const Divider(),

            // Image
            Text('4. Image Network', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),

            Image.network(
              'https://casaindonesia.com/lkgallery/teaser/teaser-maison-travaux_49_20250515144654kfx6ag.jpg', 
              width: 150,
            ),

            const Divider(),


            // container
            Text('5. Container', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            Container(
              width: 200,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2                )
              ),
              child: Text('container biru', style: TextStyle(
                color: Colors.white
              ),),
            ),

          const Divider(),
          
            // Buttton
            Text('6. Buttoon', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            ElevatedButton(onPressed: (){}, child: Text('button 1')),

            ElevatedButton(onPressed: (){}, 
            child: Text('Elevated Button')),
            SizedBox(height: 10),

            OutlinedButton(onPressed: (){}, child: Text('outline button')),
            SizedBox(height: 10),

            TextButton(onPressed: (){}, child: Text('Text button')),
            
            const Divider(),

            // Buttton
            // Text('7. TextField', style: TextStyle(
            //   fontSize: 24,
            //   fontWeight: FontWeight.bold
            // ),),


            TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
                hintText: 'Masukan nama ',
                border: OutlineInputBorder(),
              ),
            ),

            const Divider(),

            // Buttton
            Text('7. Row', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home),
                Icon(Icons.favorite),
                Icon(Icons.person),
              ],
            ),

            const Divider(),

            Text('8. Column', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            Column(
              children: [
                Icon(Icons.home),
                Icon(Icons.favorite),
                Icon(Icons.person),
              ],
            ),

            // Text('9. Navigasi', style: TextStyle(
            //   fontSize: 24,
            //   fontWeight: FontWeight.bold
            // ),
            // ),
            // SizedBox(height: 10,),

            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanKedua()));
            // }, 
            // child: Text('Pindah Ke halaman 2'))
          ],
        ),
      ),
    );
  }
}