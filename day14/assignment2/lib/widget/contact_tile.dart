import 'package:assignment2/model/user.dart';
import 'package:assignment2/pages/user_page.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    super.key,
    required this.imageUrl,
    required this.user,
  });

  final String imageUrl;
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              user: user,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: const Icon(
          Icons.navigate_next_sharp,
        ),
      ),
    );
  }
}
