import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 40, left: 50, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.remove),
              )
            ],
          ),
        ),
        body: const Stack(
          fit: StackFit.expand,
          children: [
            Image(
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
              image: AssetImage(
                "assets/tower.jpg",
              ),
            )
          ],
        ));
  }
}
