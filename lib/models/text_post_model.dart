class TextPost {
  String name;
  String authorImageUrl;
  String text;

  TextPost({
    this.name,
    this.authorImageUrl,
    this.text,
  });
}

final List<TextPost> textposts = [
  TextPost(
    name: 'Ezgi Harekett',
    authorImageUrl: 'assets/images/user2.png',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  TextPost(
    name: 'Samet Akbal',
    authorImageUrl: 'assets/images/user5.png',
    text: 'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
  ),

];