import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'post.dart';

mixin PostMixin {
	Future<List<Post>> fetchPosts(http.Client client) async {
	  final response =
	      await client.get('https://jsonplaceholder.typicode.com/posts');
	
	  return compute(parsePosts, response.body);
	}
	
	List<Post> parsePosts(String responseBody) {
	  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
	
	  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
	}
}
