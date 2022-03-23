import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:home_work/src/configs/router/router.gr.dart';

class VideoPage extends StatefulWidget {
  final String? id;
  final String? name;

  const VideoPage({
    Key? key,
    this.id,
    this.name,
  }) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        elevation: 0,
        title: const Text('Video Training'),
        actions: [
          IconButton(
            onPressed: () {
              // context.router.pushNamed('setting');
              context.navigateTo(
                const ProfileRouter(
                  children: [
                    SettingRouter(),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // context.router.pushNamed('detail?profileId=1&fullName=Lin');
                context.pushRoute(
                  VideoDetailPage(
                    trainer: 'soklin',
                    type: 'Programming',
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Type Course : Programming',
                    ),
                    Text(
                      'Name Trainer  : Soklin',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
