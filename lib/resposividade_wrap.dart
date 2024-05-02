import 'package:flutter/material.dart';


class ResposividadeWrap extends StatefulWidget {
  const ResposividadeWrap({super.key});

  @override
  State<ResposividadeWrap> createState() => _ResposividadeWrapState();
}

class _ResposividadeWrapState extends State<ResposividadeWrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            Container(
              width: 300,
              height: 100,
              color: Colors.green[200],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green[400],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green[600],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green[800],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green[1000],
            ),
          ],
        ),
      ),
    );
  }
}
