import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/models.dart';
import 'src/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Fish(name: 'Salmon', number: 10, size: 'Big'),
        ),
        ChangeNotifierProvider(
          create: (context) => SeaFish(name: 'Tuna', number: 0, size: 'Middle'),
        ),
      ],
      child: MaterialApp(
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FishOrder(),
      ),
    );
  }
}
