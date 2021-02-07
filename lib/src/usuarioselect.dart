import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class usuarioselect extends StatefulWidget {

  String nombre_select;
  usuarioselect(this.nombre_select);

  @override
  usuario_este createState() => usuario_este();
}

class usuario_este extends State<usuarioselect>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Usuario"),
       ),
      body: Container(
        color: Color.fromRGBO(249,246,239,1.0),

       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             new Image.asset(
              'assets/imagenes/logouser.png',
            width: 365,
            height: 170, 
            ),

             SizedBox(height: 3,),
             Text("USUARIO UP",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 35,
                  ),
             
             ),

            SizedBox(height: 5,),
             Text(widget.nombre_select,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
             
             ),

            
          ],
        ), 
      ),
    );
  }
}