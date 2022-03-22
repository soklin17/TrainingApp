import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatefulWidget {
  final int? profileId;
  final String? fullName;
  const VideoDetailPage({
    Key? key,
    @queryParam this.profileId,
    @queryParam this.fullName,
  }) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Detail'),
        backgroundColor: Colors.green[700],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID: ${widget.profileId}"),
          ],
        ),
      ),
    );
  }
}
