import 'package:demo/screens/dash/home_dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Wrap with SafeArea to avoids operating system interfaces
    return SafeArea(
      child: Scaffold(
        // Set the background color of your home page
        backgroundColor: Colors.white,
        // Make vertical view with a column widget
        body: Column(
          // Set the children of the column to the center of the mainAxis
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Create a text widget
            const Text(
              'Welcome to Flutter!',
              // Style your text
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            // Create a sizedbox to make some space
            const SizedBox(
              height: 20.0,
            ),
            // Add padding widget to make some space
            const Padding(
              // You can use either all, symmetric or only to define the padding of each side
              padding: EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 20.0,
              ),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                textAlign: TextAlign.justify,
              ),
            ),
            // Create a button with elevated button widget
            ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const HomeDashboard();
                  }));
                  //print('worked!');
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Get started!'),
                ))
          ],
        ),
      ),
    );
  }
}
