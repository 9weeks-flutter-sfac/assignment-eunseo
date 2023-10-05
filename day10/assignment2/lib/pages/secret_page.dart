import 'package:animate_do/animate_do.dart';
import 'package:assignment2/widgets/Background.dart';
import 'package:assignment2/widgets/CustomAppbar.dart';
import 'package:assignment2/widgets/Secret.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class SecretPage extends StatefulWidget {
  const SecretPage({super.key});

  @override
  State<SecretPage> createState() => _SecretPageState();
}

class _SecretPageState extends State<SecretPage> {
  var secrets;
  // secret, author{name, username, avatar}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: Column(
            children: [
              const CustomAppbar(title: 'shit..'),
              FutureBuilder(
                future: SecretCatApi.fetchSecrets(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    secrets = snapshot.data;
                    return Expanded(
                      child: PageView.builder(
                        controller: PageController(
                          viewportFraction: 0.8,
                        ),
                        itemCount: secrets.length,
                        itemBuilder: (context, index) {
                          if (secrets[index].secret != null) {
                            return Secret(secret: secrets[index].secret);
                          }
                          return null;
                        },
                      ),
                    );
                  }
                  return const Secret(
                    secret: '비밀은 누구나 있어..',
                  );
                },
              ),
              Expanded(
                child: ShakeY(
                  from: 10,
                  duration: const Duration(seconds: 5),
                  infinite: true,
                  child: Image.asset(
                    'assets/imgs/sleep.png',
                    width: 300,
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
