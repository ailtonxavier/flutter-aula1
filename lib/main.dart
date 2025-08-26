import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (context) => const RouteHome(),
        '/valordex': (context) => const RouteValorX(),
        '/valordey' : (context) => const RouteValorY(),
      }
    )
  );
}

class RouteHome extends StatelessWidget {
  const RouteHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Maluca'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("X"),
              IconButton(
                onPressed: () => Navigator.pushNamed(context, '/valordex'),
                icon: Icon(Icons.home))
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              [
                Text("Y"),
                IconButton(
                onPressed: () => Navigator.pushNamed(context, '/valordey'),
                icon: Icon(Icons.home))
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("X"),]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("X"), Text("Informar X")])
        ],
      ),
    );
  }
}

class RouteValorX extends StatelessWidget {
  const RouteValorX({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserir valor de X'),
      ),
    );
  }
}

class RouteValorY extends StatelessWidget {
  const RouteValorY ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserir valor de Y'),
      ),
    );
  }
}