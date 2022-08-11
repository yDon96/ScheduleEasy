
import 'package:flutter/material.dart';

class TopBar extends AppBar {
  final String username;

  TopBar({Key? key, required this.username, String? imageUrl}) : super(
      key: key,
      leadingWidth: 70, // default is 56
      toolbarHeight: 64, // default is 56
      backgroundColor: Colors.transparent,
      elevation: 0, // 1
      leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 48, // Image radius
            backgroundImage: NetworkImage(imageUrl ?? 'imageUrl'),
          ),
      ),
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi,",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text("$username",
              style: const  TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
        ])
  );

}