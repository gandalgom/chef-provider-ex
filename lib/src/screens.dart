import 'package:flutter/material.dart';

import 'widgets.dart';

class FishOrder extends StatelessWidget {
  const FishOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('Fish Name', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 20.0),
            High(),
          ],
        ),
      ),
    );
  }
}
