import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override 
  createState()=>HomePageState();
}

class HomePageState extends State<HomePage> {
  final estiloAppbar = TextStyle(fontSize: 15);
  final  estiloText =  TextStyle(fontSize: 20.0);
  int likecounter = 0; int dislikecounter = 0; int lovecounter = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raul Alberto Developer" , style: estiloAppbar,),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: _filaswidgets() ,
      ),
      floatingActionButton: _botonextra(),
    );
  }
  
  Widget _filaswidgets(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _componente("Like" , likecounter,Colors.black, Icon(Icons.thumb_up),_likeincrement),
        SizedBox(width: 12),
        _componente("Dislike" , dislikecounter , Colors.blue , Icon(Icons.thumb_down),_dislikeincrement),
        SizedBox(width: 12),
        _componente("Love " , lovecounter , Colors.green[400] , Icon(Icons.favorite) , _loveincrement),
      ],
    );
  }
  Widget _botonextra(){
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        FloatingActionButton(backgroundColor: Colors.orange[500],child: Text("Reset"),onPressed: _reset),
        SizedBox(height: 120),
      ],
    );
  }

  Widget _componente(String titulo , int incrementador, Color color , Icon icon , Function accion){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$titulo" , style: TextStyle(fontSize: 20.0), ),
        Text("$incrementador" , style:estiloText,),
        FloatingActionButton( child: icon ,backgroundColor: color, onPressed: accion),
      ],
    );
  }
  void _likeincrement(){setState(()=>likecounter++); }
  void _dislikeincrement(){setState(()=>dislikecounter++);}
  void _loveincrement(){setState(()=>lovecounter++);}
  void _reset(){
    setState((){
      likecounter    = 0 ;
      dislikecounter = 0 ;
      lovecounter    = 0 ;
    });
  }
  
}