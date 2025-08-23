import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (context) => const RouteHome(),
        '': (context) => const RouteValorX(),
        '/valordex': (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text('Valor de X')
            ),
          );
        },
        '/valordey': (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text('Valor de Y'),
            ),
          );
        }
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
        title: Text('home page'),
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

    );
  }
}