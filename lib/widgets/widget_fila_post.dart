import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelo/post.dart';

class WidgetFilaPost extends StatefulWidget {
  Post post;

  WidgetFilaPost(this.post,{Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _WidgetFilaPost();
  }
}
class _WidgetFilaPost extends State<WidgetFilaPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(widget.post.id.toString()),
        title: Text(widget.post.title),
      ),
    );
  }

}
