
import 'package:flutterapp2/src/listausuarios.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget{
  
final user = TextEditingController();
final pass = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Bienvenido"),
       ), 
       body:
       Container(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           new Image.asset(
              'assets/imagenes/logoup.png',
            width: 250,
            height: 210, 
            ),
              Container(
               width: 300,
               child: Center(
                child: TextField(
                  controller: user,
                
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'username',
                      ),
                      autofocus: false,
                      obscureText: false,
                ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  
                    
                   Container(
                width: 300,
                child: Center(
                child: TextField(
                   controller: pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'password',
                      ),
                      autofocus: false,
                      obscureText: true,
                    ),
                ),
                  ),

            // ignore: deprecated_member_use
            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                "OK",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => listausuarios(),
              ));
             // showAlertDialog(context);
            }),
            SizedBox(height: 40,),
             Align(
              alignment: FractionalOffset(0.07, 0.10),
              child: MaterialButton(
                      color: Colors.red,
                  textColor: Colors.white,
                  child: Text(
                    "Regresar",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                onPressed: () {
                  Navigator.of(context).pop();
            })
              ),
         ]
       ),
       ),
       
    );
    
  
  }

}