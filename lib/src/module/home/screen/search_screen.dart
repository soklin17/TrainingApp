import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String? type;
  final String? trainer;
  const SearchScreen({
    Key? key,
    @queryParam this.type,
    @queryParam this.trainer,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Search'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Type: ${widget.type}'),
            Text('Type: ${widget.trainer}'),
          ],
        ),
      ),
    );
  }
}
