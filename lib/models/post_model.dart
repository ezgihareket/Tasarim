class Post {
  String name;
  String imgUrl;
  String authorImageUrl;

  Post({this.name, this.imgUrl, this.authorImageUrl});
}

final List<Post> posts = [
  Post(
    name: 'Ezgi Hareket',
    imgUrl: 'assets/images/post4.jpg',
    authorImageUrl: 'assets/images/user2.png',

  ),
  Post(
    name: 'Samet Akbal',
    imgUrl: 'assets/images/user5.png',
    authorImageUrl: 'assets/images/user5.png',
  ),
];