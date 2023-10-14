import 'package:animate_do/animate_do.dart';
import 'package:assignment2/const/url.dart';
import 'package:assignment2/model/user.dart';
import 'package:assignment2/widget/contact_tile.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Dio dio = Dio();
  List<User> users = [];
  Future getAllUser() async {
    var res = await dio.get(url);
    var data = List<Map<String, dynamic>>.from(res.data);
    users = data.map((e) => User.fromMap(e)).toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Contacts'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return FadeInRight(
              // from: index * 15,
              delay: Duration(milliseconds: index * 100),
              child: ContactTile(
                imageUrl: '$imageUrl/${users[index].id}.jpg',
                user: users[index],
              ),
            );
          },
        ));
  }
}
