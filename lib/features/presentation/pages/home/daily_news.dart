import 'package:flutter/material.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
    );
  }

  _buildAppbar() {
    return AppBar(
      title: const Text('Новости', style: TextStyle(color: Colors.black)),
    );
  }
}
