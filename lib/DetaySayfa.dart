import 'package:flutter/material.dart';
import 'package:yemek_uygulamasi/Yemekler.dart';

class DetaySayfa extends StatefulWidget {

  Yemekler yemek;


  DetaySayfa({required this.yemek});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyati}\u{20BA}",style: TextStyle(fontSize: 49,color: Colors.blue),),
            SizedBox(
              height: 50,width: 200,
              child: ElevatedButton(
                child: Text("Sipariş Ver",style: TextStyle(color: Colors.white,fontSize: 20),),
                onPressed: (){
                  print("${widget.yemek.yemek_adi} sipariş edildi.");
                },
                ),
            ),

          ],
        ),
      ),

    );
  }
}
