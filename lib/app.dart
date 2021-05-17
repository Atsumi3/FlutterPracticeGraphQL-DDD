import 'package:flutter/material.dart';

import 'modules/repository_list/repository_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repository',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: RepositoryListPage(),
        ),
      ),
    );
  }
}
