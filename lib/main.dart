
import 'package:couter_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';  // contiene widgets
//import 'package:couter_app/screens/home_screen.dart';

void main(){
    // Correr app flutter -> widget
    runApp(const MyApp());   // necesita un widget de param

}

/*
  Widget
  StatelessWidget: No mantienen el estado de la app por si mismos, se dibuja y asi se queda
  StatelessFulWidget: Manitiene valores del estado, le puedo indicar que widget redibujar
  */
class MyApp extends StatelessWidget{
  const MyApp({super.key}); // constructor
  // primer widget
  // Todo StatelessWidget tiene su metodo build, recibe BuildContext
  @override
  Widget build(BuildContext context) {
    // Debe retornar un constant widget si nunca esta cambiando, por eso es const
    return const MaterialApp(  // segundo widget
      debugShowCheckedModeBanner: false,
      home: CounterScreen() // tercer wgt
    );
  }

}