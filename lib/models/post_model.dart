class Post {
  String name;
  String imgUrl;
  String authorImageUrl;

  Post({this.name, this.imgUrl, this.authorImageUrl});
}

final List<Post> posts = [
  Post(
    name: 'Kullanici 1',
    imgUrl: 'assets/images/post4.jpg',
    authorImageUrl: 'assets/images/user2.png',

  ),
  Post(
    name: 'Kullanici 2',
    imgUrl: 'assets/images/user5.png',
    authorImageUrl: 'assets/images/user5.png',
  ),
];