import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'posts_widget.dart';
import 'post_mixin.dart';
import 'post.dart';

class PostPage extends StatelessWidget with PostMixin {
  final String title;

  PostPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Post>>(
        future: fetchPosts(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PostsWidget(posts: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}		
