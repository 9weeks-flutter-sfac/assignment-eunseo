import 'package:assignment2/widgets/AutorItem.dart';
import 'package:assignment2/widgets/Background.dart';
import 'package:assignment2/widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class AuthorPage extends StatefulWidget {
  const AuthorPage({super.key});

  @override
  State<AuthorPage> createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
  var authors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomAppbar(
                title: '비밀스러운 사람들..',
              ),
              FutureBuilder(
                future: SecretCatApi.fetchAuthors(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    authors = snapshot.data;
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                        vertical: 32,
                      ),
                      child: GridView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: authors.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, idx) {
                          return AuthorItem(
                            name: authors[idx].name,
                            avatar: authors[idx].avatar,
                          );
                        },
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
