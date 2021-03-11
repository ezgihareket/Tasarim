import 'package:flutter/material.dart';
import 'package:flutter_tasarim/models/comment_model.dart';
import 'package:flutter_tasarim/models/post_model.dart';
import 'models/text_post_model.dart';

class ViewCommentScreen extends StatefulWidget {
  final Comment comment;
  final Post post;
  ViewCommentScreen({this.comment, this.post});

  @override
  _ViewCommentScreenState createState() => _ViewCommentScreenState();
}

class _ViewCommentScreenState extends State<ViewCommentScreen> {
  Widget _viewText(int index) {
    return Container(
      height: (MediaQuery.of(context).size.height * 0.4),
      width: (MediaQuery.of(context).size.width),
      padding: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0, top: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.grey.shade800,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListTile(
                        leading: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image(
                                height: 50.0,
                                width: 50.0,
                                image: AssetImage(posts[index].authorImageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          posts[index].name,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          color: Colors.grey.shade600,
                          onPressed: () => print("more"),
                        ),
                        subtitle: Container(
                          child: Text(
                            textposts[index].text,
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                iconSize: 30.0,
                                color: Colors.grey.shade600,
                                onPressed: () => print("Like Post"),
                              ),
                              Text(
                                '444',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.0),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.comment_outlined),
                                iconSize: 30.0,
                                color: Colors.grey.shade600,
                                onPressed: () {
                                  print("chat");
                                },
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComment(int index) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: CircleAvatar(
            child: ClipOval(
              child: Image(
                height: 50.0,
                width: 50.0,
                image: AssetImage(comments[index].authorImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          comments[index].name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(comments[index].text),
        trailing: IconButton(
          icon: Icon(
            Icons.favorite_border,
          ),
          color: Colors.grey.shade600,
          onPressed: () => print("Like Comment"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            _viewText(0),
            SizedBox(
              height: 10.0,
            ),
            Container(

              width: double.infinity,
              height: 600.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  _buildComment(0),
                  _buildComment(1),
                  _buildComment(2),
                  _buildComment(3),
                  _buildComment(4),
                  _buildComment(5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
