import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../modelo/post.dart';


class PostServicio {


  static Stream<List<Post>> leerpost2() async* {
    // https://jsonplaceholder.typicode.com/posts
    List<Post> paises = [];

    var url = Uri.https('jsonplaceholder.typicode.com', '/posts', {});
    await Future.delayed(const Duration(seconds:3));
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // response.body ---> List<Dynamic> ---> List<String>

      // var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      var jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;

      paises = jsonResponse.map((e) => Post.desdeMapa(e)).toList();
      yield paises;


      /*for(int i=0;i<jsonResponse.length;i++) {
        paises.add(jsonResponse[i]['title']);
      }*/

      print('conexion exitosa');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

}
