import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String? data;

  const SecondPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final data2 = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data ?? '', style: const TextStyle(fontSize: 20.0)),
            data2 == null ? const SizedBox()
            :Text(
              data2.toString() ?? '',
              style: const TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
