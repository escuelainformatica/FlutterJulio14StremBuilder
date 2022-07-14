import 'package:flutter/material.dart';
import 'package:julio14/servicios/post_servicio.dart';

import '../modelo/post.dart';
import '../widgets/widget_error.dart';
import '../widgets/widget_listado_post.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  createState() => _PaginaInicial();
}

class _PaginaInicial extends State<PaginaInicial> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("hola"),
      ),
      body: StreamBuilder<List<Post>>(
        stream: PostServicio.leerpost2(),
        builder: (BuildContext, snap) {
          if(snap.hasError) {
            return WidgetError(snap.error.toString(),icono: "advertencia.png",);
          }
          switch(snap.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              return WidgetListadoPost(snap.requireData);
          }
          return Text("Estado no conocido");
        },
      )
    );
  }
}
