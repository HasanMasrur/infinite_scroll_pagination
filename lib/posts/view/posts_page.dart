import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagenation/posts/bloc/post_bloc.dart';
import 'package:flutter_pagenation/posts/bloc/post_bloc.dart';
import 'package:flutter_pagenation/posts/bloc/post_event.dart';
import 'package:flutter_pagenation/posts/view/posts_list.dart';

import 'package:http/http.dart' as http;

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostsList(),
      ),
    );
  }
}
