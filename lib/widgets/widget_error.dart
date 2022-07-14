import 'package:flutter/material.dart';

class WidgetError extends StatefulWidget {
  String mensaje;
  String icono;

  WidgetError(this.mensaje,{Key? key,this.icono="error.png"}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return WidgetErrorEstado();
  }
}
class WidgetErrorEstado extends State<WidgetError> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.asset("iconos/${widget.icono}",width: 200,height: 200,),Text(widget.mensaje)],
      ),
    );
  }

}