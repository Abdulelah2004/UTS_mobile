import 'package:flutter/material.dart';

class NavbarPage2 extends StatefulWidget {
  const NavbarPage2({super.key});

  @override
  State<NavbarPage2> createState() => _NavbarPage2State();
}

class _NavbarPage2State extends State<NavbarPage2> {
  // List of profile picture URLs (or you can use local paths)
  final List<String> profilePictures = [
    'asset/pic1.jpg', // Picture 1
    'asset/pic2.jpg', // Picture 2
    'asset/pic4.jpg', // Picture 3
    'asset/pic3.jpg', // Picture 4
    'asset/pic5.jpg', // Picture 5
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0, 
        ),
        itemCount: 10, 
        itemBuilder: (context, index) {
         
          String profileImageUrl =
              profilePictures[index % profilePictures.length];

          return Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 99, 101, 103),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(profileImageUrl),
                ),
                const SizedBox(height: 8), 
                Text(
                  'Item ${index + 1}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
