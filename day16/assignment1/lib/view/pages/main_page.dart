import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/main_controller.dart';
import 'package:assignment1/model/document.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  static const String route = '/main'; //path 정의

  @override
  Widget build(BuildContext context) {
    var user = Get.find<AuthController>().user!;
    var docs = controller.documents;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.curPage.value,
          onTap: controller.onPageTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
          ],
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          children: [
            Column(
              children: [
                Text(
                  '${user.username}님 안녕하세요.',
                  style: const TextStyle(
                    fontSize: 32,
                  ),
                ),
                docs != null
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: docs.length ?? 0,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text(docs[index].title),
                                subtitle: Text(docs[index].content),
                              ),
                              (docs[index].attachment_url != '')
                                  ? Image.network(docs[index].attachment_url!)
                                  : Container(),
                            ],
                          );
                        },
                      )
                    : Container()
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(),
                  title: Text(user.username),
                  subtitle: Text(user.email),
                ),
                ListTile(
                  title: const Text('logout'),
                  leading: const Icon(Icons.logout),
                  onTap: controller.logout,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
