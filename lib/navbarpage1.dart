import 'package:flutter/material.dart';

class NavbarPage1 extends StatefulWidget {
  const NavbarPage1({super.key});

  @override
  State<NavbarPage1> createState() => _NavbarPage1State();
}

class _NavbarPage1State extends State<NavbarPage1> {
  final List<Map<String, String>> chatList = [
    {
      "name": "Majd Khalid",
      "message": "Remember to start your day with Bismillah!",
      "time": "1:30",
      "image": "asset/pic1.jpg"
    },
    {
      "name": "Yusuf Ibrahim",
      "message": "May Allah grant you ease in your work today.",
      "time": "2:00",
      "image": "asset/pic2.jpg"
    },
    {
      "name": "Hassan Ali",
      "message": "Don't forget to pray on time!",
      "time": "3:30",
      "image": "asset/pic4.jpg"
    },
    {
      "name": "Muhammad Ahmed",
      "message": "Let's visit the mosque together for Jummah prayer.",
      "time": "4:00",
      "image": "asset/pic3.jpg"
    },
    {
      "name": "Hamdan Ahmed",
      "message": "May your day be filled with blessings and peace.",
      "time": "5:30",
      "image": "asset/pic5.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chat['image']!),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(chat['name']!),
              Text(
                chat['time']!,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          subtitle: Text(chat['message']!),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        );
      },
    );
  }
}
