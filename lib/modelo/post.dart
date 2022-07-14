class Post {
  late int userId;
  late int id;
  late String title;
  late String body;


  Post(this.userId, this.id, this.title, this.body);

  Post.desdeMapa(Map mapa) {
    userId=mapa['userId'];
    id=mapa['id'];
    title=mapa['title'];

  }

}