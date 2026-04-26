import 'package:basketball_counter/widgets/screen_body.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Points Counter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),

      body: ScreenBody(),
    );
  }
}
