// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String? type;
  final String? trainer;
  const SearchScreen({
    @queryParam this.type,
    @queryParam this.trainer,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Video Founded'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Type Course: ${widget.type}'),
            Text('Name Trianer: ${widget.trainer}'),
          ],
        ),
      ),
    );
  }
}
