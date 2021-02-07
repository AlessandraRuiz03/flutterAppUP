import 'package:flutterapp2/src/usuarioselect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listausuarios extends StatefulWidget {
  @override
  State<listausuarios> createState(){
    return listausers();
  }
}

class listausers extends State<listausuarios> {
   List<String> nombresDeUsuario;
  @override
  void initState(){
  super.initState();
    nombresDeUsuario = ['Angel Chacon',
    'Alessandra Ruiz', 'Fernanda Ruiz', 'Erik Toala',
    'Alejandro Altuzar','Cesar Osuna','Roberto Guzman','Candy Chacón',
     'Aida Chacón', 'Ana Ruiz', 'Humberto Vázquez', 'Ricardo gomez',
      'Carlos Alberto', 'Cristina Martinez', 'Jose chacon', 'Carmen morales', 'Karen Ruiz', 
      'Iturbide Cañaveral', 'Aidy Martinez', 'Jose niños'
    ];
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios"),
       ),
      body: 
      ListView.builder(
        itemCount: nombresDeUsuario.length,
        itemBuilder: (context, position){
          return Users(nombresDeUsuario[position]);
          },
        ),
        
    ); 
  }
}


class Users extends StatelessWidget {
  String name;
  Users(this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Card(
      child: Center(
         child: Center(
              child: Text(name,  style: TextStyle(
                  fontSize: 25.0,
                ),),
          ),
      ),
      ),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute<Null>(
          builder: (BuildContext conttext){
            return new usuarioselect(name);
          }
        ));
      },
    );
  }
  }