import 'package:flutter/material.dart';

//#TODO_11 Set the name of the statefulWidget class for the third bottom navbar
class NavbarPage3 extends StatefulWidget {
  const NavbarPage3({super.key});

  @override
  State<NavbarPage3> createState() => _NavbarPage3State();
}

class _NavbarPage3State extends State<NavbarPage3> {
  //#TODO_12 Build the layout for the third bottom navbar
  // in the form of a profile page containing a personal photo wrapped in a circular frame, full name, and UNSIKA email
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Personal photo wrapped in CircleAvatar
          CircleAvatar(
            radius: 60, // Size of the circle
            backgroundImage: AssetImage(
                'asset/pic2.jpg'), // Change to the path of your personal photo
          ),
          SizedBox(height: 20), // Space between photo and text
          // Full name
          Text(
            'Abdulelah Ahmed',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // UNSIKA email
          Text(
            '2310631170162@student.unsika.ac.id',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
