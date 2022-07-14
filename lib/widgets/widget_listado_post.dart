import 'package:flutter/material.dart';
import 'package:julio14/widgets/widget_fila_post.dart';

import '../modelo/post.dart';

class WidgetListadoPost extends StatefulWidget {
  List<Post> posts;

  WidgetListadoPost(this.posts,{Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetListadoPost();
  }

}
class _WidgetListadoPost extends State<WidgetListadoPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.posts.length,
        itemBuilder: (BuildContext, int) {
          return WidgetFilaPost(widget.posts[int]);
        }
    );
  }

}