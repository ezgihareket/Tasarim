class Comment {
  String name;
  String authorImageUrl;
  String text;

  Comment({
    this.name,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    name: 'Ilgın',
    authorImageUrl: 'assets/images/user2.png',
    text: 'Harika resim',
  ),
  Comment(
    name: 'Gizem',
    authorImageUrl: 'assets/images/user3.png',
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  Comment(
    name: 'Berna',
    authorImageUrl: 'assets/images/user4.png',
    text: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium',
  ),
  Comment(
    name: 'Samet',
    authorImageUrl: 'assets/images/user1.png',
    text: 'Nice job',
  ),
  Comment(
    name: 'Eda',
    authorImageUrl: 'assets/images/user0.png',
    text: 'Thanks everyone :)',
  ),
  Comment(
    name: 'Zuhal',
    authorImageUrl: 'assets/images/user4.png',
    text: 'Thanks everyone :)',
  ),
  Comment(
    name: 'Tamay',
    authorImageUrl: 'assets/images/user2.png',
    text: 'Wonderfull',
  ),
];