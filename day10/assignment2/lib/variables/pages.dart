// ignore_for_file: prefer_const_constructors

import 'package:assignment2/pages/author_page.dart';
import 'package:assignment2/pages/secret_page.dart';
import 'package:assignment2/pages/upload_page.dart';

final List<Map<String, dynamic>> navList = [
  {
    "name": 'author',
    "image": null,
    "label": '누구?',
    "page": AuthorPage(),
  },
  {
    "name": 'secret',
    "image": 'assets/imgs/sleep.png',
    "label": '어떤?',
    "page": SecretPage(),
  },
  {
    "name": 'upload',
    "image": 'assets/imgs/cat.png',
    "label": '나도..',
    "page": UploadPage(),
  },
];
