import 'package:assignment3/pages/detail_contact.dart';
import 'package:assignment3/variables/contact_list.dart';
import 'package:assignment3/widgets/CommonAppBar.dart';
import 'package:assignment3/widgets/CommonBottomNav.dart';
import 'package:assignment3/widgets/CommonFloatingBtn.dart';
import 'package:assignment3/widgets/ContactTile.dart';
import 'package:flutter/material.dart';

class MainContact extends StatefulWidget {
  const MainContact({super.key});

  @override
  State<MainContact> createState() => _MainContactState();
}

class _MainContactState extends State<MainContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          if (contacts.isNotEmpty) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailContact(
                      name: contacts[index]["name"]!,
                      phone: contacts[index]["phone"]!,
                      img: contacts[index]["img"]!,
                    ),
                  ),
                );
              },
              child: ContactTile(
                name: contacts[index]["name"]!,
                phone: contacts[index]["phone"]!,
                img: contacts[index]["img"]!,
              ),
            );
          } else {
            return const Text('No contacts');
          }
        },
      ),
      floatingActionButton: const CommonFloatingBtn(),
      bottomNavigationBar: const CommonBottomNav(),
    );
  }
}
