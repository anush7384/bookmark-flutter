import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Image.asset(
              'assets/profile_picture.png',
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 114, 114, 114),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'john@gmail.com',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 114, 114, 114),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
