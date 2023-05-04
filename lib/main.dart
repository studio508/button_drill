import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Drill',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              onLongPress: () {
                print('text button');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                // backgroundColor: Colors.blueGrey,
              ),
              child: const Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                print('elevated button');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0.0,
              ),
              child: const Text(
                'Elevated Button',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            OutlinedButton(
              onPressed: () {
                print('outlined button');
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.black87, width: 2.0)),
              child: const Text('Outlined Button'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton.icon(
              onPressed: () {
                print('Text Icon Button - Go to home');
              },
              icon: const Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              onLongPress: () {
                print('Elevated Icon Button - Go to home');
              },
              icon: const Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: const Text('Go to home'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.purple,
                minimumSize: const Size(200, 50),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.home,
                size: 30.0,
                // color: Colors.black87,
              ),
              label: const Text('Go to home'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.purple,
                disabledForegroundColor:
                    Colors.pink.withOpacity(0.38).withOpacity(0.38),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.all(5.0),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('TextButton'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ElevatedButton'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
