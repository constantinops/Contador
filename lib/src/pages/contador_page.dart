import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
 @override
  createState() => _ContadorPageState();
}
class _ContadorPageState extends State<ContadorPage>{
    int _contador = 0;
    TextStyle stilo = TextStyle(fontSize: 25);

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         title: Text("Contador"),
         backgroundColor: Colors.orange,
         elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("NUmero de click",style: stilo,),
            Text("$_contador",style: stilo,)

          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[

          SizedBox(width: 30,),
        FloatingActionButton(
          onPressed: (){
            setState(() {
              _contador = 0; 
            });
          },
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(width: 0,)),
        FloatingActionButton(
          onPressed: _resta,
          child: Icon(Icons.remove),
          backgroundColor: Colors.deepOrange,
        ),
        Expanded(child: SizedBox(),),
        FloatingActionButton(
          onPressed: _suma,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _suma(){
    setState(() {
      _contador++;
    });
  }
  void _resta(){
    setState(() => _contador--);
  }

}