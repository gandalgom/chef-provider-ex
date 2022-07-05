import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models.dart';
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
          children: [
            Text('Fish Name: ${Provider.of<Fish>(context).name}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            const High(),
          ],
        ),
      ),
    );
  }
}
