import 'package:flutter/material.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Responsif', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [
          // implementasi media query
          Container(
            width: screenWidth,
            height: screenHeight * 0.25,
            color: Colors.teal[400],
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Total Saldo ', style: TextStyle(
                  color: Colors.white, fontSize: 20
                ),),
                SizedBox(height: 8,),
                Text('Rp. 10.000.000', style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Detail Pengeluaran hari ini', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            ),

            // implementasi flexible
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text('Pembelian Token Listrik Rumah utama dan kos kosan', style: TextStyle(fontSize: 16), maxLines: 2, overflow: TextOverflow.ellipsis
                    )
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Text('Detail', style: TextStyle(color: Colors.black),))
                ],
              ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Riwayat Transaksi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              // implementasi expanded
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.shopping_bag, color: Colors.white),
                      ),
                      title: Text('Belanja bulanan ke - ${index + 1}'),
                      subtitle: Text('2 juni 2026'),
                      trailing: Text('-Rp. 150.000', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    );
                  }
                  )
                )
        ],
      ),
    );
  }
}