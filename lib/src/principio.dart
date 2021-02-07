
import 'package:flutterapp2/src/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class principio extends StatelessWidget{
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("UP Chiapas"),
       ), 
       body: Center(
         child: new Column(
         children: <Widget> [
            new Image.asset(
              'assets/imagenes/logoup.png',
            width: 400,
            height: 300, 
            ),
      
          Text ("Bienvenido",
          textAlign: TextAlign.center,
          style: TextStyle(
                  fontSize: 20.0,
                ),
          ),
          SizedBox(height: 15,),
            Text ("Universidad Politecnica de Chiapas",
          textAlign: TextAlign.center,
          style: TextStyle(
                  fontSize: 25.0,
                ),
          ),
            SizedBox(height: 10),
           //Text ("new Page 1 Center"),
          Container(
          // ignore: deprecated_member_use
          child: new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                "continuar",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => login(),
              ));
            },
            )
          ),
         ],
         ),
         ), 
    );
   
  }
}