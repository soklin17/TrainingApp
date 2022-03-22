import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Profile Page"),
            SizedBox(
              height: 30,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.router.pushNamed('setting');
            //   },
            //   child: const Text("Setting"),
            // ),
          ],
        ),
      ),
    );
  }
}
