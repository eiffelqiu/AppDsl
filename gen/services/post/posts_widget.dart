import 'package:flutter/material.dart';
import 'post.dart';

class PostsWidget extends StatelessWidget {
  final List<Post> posts;

  PostsWidget({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: posts.length,
          padding: const EdgeInsets.all(15.0),
          itemBuilder: (context, position) {
            return Card(
              child: RichText(
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'id: ${posts[position].id}\n\n'),
                    TextSpan(text: 'userId: ${posts[position].userId}\n\n'),
                    TextSpan(text: 'title: ${posts[position].title}\n\n'),
                    TextSpan(text: 'body: ${posts[position].body}\n\n'),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void _onTapItem(BuildContext context, Post post) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(post.id.toString() + ' - ' + post.title)));
  }
}		
