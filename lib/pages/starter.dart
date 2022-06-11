import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                child: const Text('Create Super-Admin Panel'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
