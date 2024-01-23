import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Heloo, this snackbar!'),
              backgroundColor: Colors.pink[700],
              action: SnackBarAction(
                label: "CANCEL",
                backgroundColor: Colors.amberAccent,
                onPressed: () {
                  print('Cancel snackbar!');
                },
                textColor: Colors.red,
              ),
            ));
          },
        ),
      ),
    );
  }
}
