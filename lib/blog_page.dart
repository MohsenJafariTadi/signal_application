import 'package:flutter/material.dart';
import 'package:signal_app/custum_widget/post_widget.dart';

class BlogPageScreen extends StatelessWidget {
  const BlogPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'اخبار و سیگنال ها ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getBlogPost(imageName: 's', title: '1'),
                getBlogPost(imageName: 'c', title: '1'),
                getBlogPost(imageName: 'a', title: '1'),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'خروج از حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
