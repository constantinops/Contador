import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final texStyle = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        elevation: 8.0,
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de clicks: ",style: texStyle),
            Text('0',style: texStyle),
          ],
        ),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed:(){
            print("hola mundo");
          },
           child: Icon(Icons.add),
           backgroundColor: Colors.indigoAccent,
         
        ),

        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      

    );
  }
}
