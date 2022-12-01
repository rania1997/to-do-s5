import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Panier extends StatelessWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Panier"),
        ),
        body: ListView(
          children: [

            Container(
                alignment: Alignment.centerRight ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Total: 500 TND", style: TextStyle(fontSize: 23),),
                )),

            SizedBox(height: 8),
            Divider(thickness: 2, color: Colors.red.withOpacity(0.2),),
            Card(
                elevation: 5,
                child: Container(
                  height: 120,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Icon(Icons.download_rounded),
                      Image.asset("Assets/dmc5.jpg",width: 140,  ),

                      Text("200 TND", style: TextStyle(fontSize: 22),)

                    ],
                  ),
                )),
            Card(
              elevation: 5,
              child: Container(
                height: 120,
                  padding: EdgeInsets.all(10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Icon(Icons.download_rounded),
                      Image.asset("Assets/re8.jpg"  ,width: 140, ),

                      Text("200 TND", style: TextStyle(fontSize: 22),)

                    ],
                  ),),
            ),
            Card(
              elevation: 5,
              child: Container(
                  height: 120,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Icon(Icons.download_rounded),
                      Image.asset("Assets/nfs.jpg" ,width: 140,  ),

                      Text("100 TND", style: TextStyle(fontSize: 22),)

                    ],
                  )),
            ),

          ],
        )



    );
  }
}
