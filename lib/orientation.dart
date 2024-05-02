import 'package:flutter/material.dart';

class OrientationResponsive extends StatefulWidget {
  const OrientationResponsive({super.key});

  @override
  State<OrientationResponsive> createState() => _OrientationResponsiveState();
}

class _OrientationResponsiveState extends State<OrientationResponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation'),
        centerTitle: true,
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
          children: [
            Container(
              color: Colors.green[100],
            ),
            Container(
              color: Colors.green[300],
            ),
            Container(
              color: Colors.green[500],
            ),
            Container(
              color: Colors.green[700],
            ),
            Container(
              color: Colors.green[900],
            ),
            Container(
              color: Colors.green[1100],
            ),
          ],
        );
      }),
    );
  }
}
