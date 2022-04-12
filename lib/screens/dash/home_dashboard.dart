import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    // Leave the current screen and go back to the previous one
                    // Navigator.of(context).pop();
                    Navigator.pop(context);
                  },
                  // Create an icon using Icon widget
                  child: const Icon(Icons.arrow_back)),
              const Icon(Icons.more_horiz)
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Home Dashboard!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            // Get the full screen width
            width: MediaQuery.of(context).size.width,
            // Get the full screen height / 2
            height: MediaQuery.of(context).size.height / 2,
            // Align the text widget in the center of the sizedbox
            child: const Center(
              child: Text(
                'This is my home dashboard!',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
