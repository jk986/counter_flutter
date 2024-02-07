import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key}); // crea widget State...
  @override
    /*
      BuildCotext Todo mi arbol de widgets y 
      para saber cual es el contexto en donde se construye y 
      poder leer la info de otro widget desde el BuildContext
    */
  Widget build(BuildContext context) {
    /// props
    const fontSize40 = TextStyle(fontSize: 40);
    int counter = 0;

    /// return
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // hacia abajo
            crossAxisAlignment: CrossAxisAlignment.center , // horizontal al widget mas gde
            children: <Widget>[
              const Text ('Número de Clicks',style:fontSize40),
              Text('$counter',style:fontSize40),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {
          counter++
        }
      ),
    ); 
  }

}