import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models.dart';

class High extends StatelessWidget {
  const High({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'SpicyA is located at high place',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        SpicyA(),
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish Number: ${Provider.of<Fish>(context).number}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<Fish>(context).size}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        const Middle(),
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'SpicyB is located at middle place',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        SpicyB(),
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish Number: ${Provider.of<Fish>(context).number}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<Fish>(context).size}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        const Low(),
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'SpiceC is located at low place',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        SpicyC(),
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish Number: ${Provider.of<Fish>(context).number}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Fish Size: ${Provider.of<Fish>(context).size}',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () =>
              Provider.of<Fish>(context, listen: false).changeFishNumber(),
          child: const Text('Change fish number'),
        ),
      ],
    );
  }
}
