import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key}); 
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Estado
class _CounterScreenState extends State<CounterScreen> {
  /// props
  int counter = 0;
 // crea widget State...
    /*
      BuildCotext Todo mi arbol de widgets y 
      para saber cual es el contexto en donde se construye y 
      poder leer la info de otro widget desde el BuildContext
    */
  @override
  Widget build(BuildContext context) {
    /// var
    const fontSize40 = TextStyle(fontSize: 40);

    /// return
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => {
              counter++,
              setState(() {}) // notofoca cambio interno en el estado y lo redibuja
            }
          ),
          
          //const SizedBox( width: 20), //widget invisible
          FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed:()=>{
              counter=0,
              setState((){}) 
            }),

          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => {
              counter--,
              setState(() {}) // notofoca cambio interno en el estado y lo redibuja
            }
          ),
        ],
      ),
    ); 
  }
}