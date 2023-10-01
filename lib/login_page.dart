import 'package:flutter/material.dart';
import 'package:signal_app/blog_page.dart';
import 'package:signal_app/restpass_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  void navigator_Page_Route(BuildContext context,Widget page){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login),
                  Text('خوش آمدید '),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage('images/welcome.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  primary: Colors.white,
                ),
                onPressed: () {
                  navigator_Page_Route(context, const BlogPageScreen());
                },
                child: const Text(
                  'ورود به حساب ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(200, 40),
                ),
                onPressed: () {},
                child: const Text('ثبت نام'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  navigator_Page_Route(context, const Rest_Password());
                },
                child: const Text(
                  'فراموشی رمز عبور ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
