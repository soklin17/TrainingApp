import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatefulWidget {
  final String? type;
  final String? trainer;
  const VideoDetailPage({
    Key? key,
    @queryParam this.type,
    @queryParam this.trainer,
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
            Text("Type Course: ${widget.type}"),
            Text("Name Trainer: ${widget.trainer}"),
          ],
        ),
      ),
    );
  }
}
