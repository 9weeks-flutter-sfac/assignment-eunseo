import 'package:assignment1/controller/author_controller.dart';
import 'package:assignment1/view/widgets/AutorItem.dart';
import 'package:assignment1/view/widgets/Background.dart';
import 'package:assignment1/view/widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthorPage extends GetView<AuthorController> {
  const AuthorPage({super.key});
  static const String route = '/author';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(
        title: '비밀스러운 사람들..',
      ),
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    vertical: 32,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      itemCount: controller.userList?.length ?? 0,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, idx) {
                        return AuthorItem(
                          name: controller.userList![idx].name,
                          avatar: controller.userList![idx].avatar,
                        );
                      },
                    ),
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
