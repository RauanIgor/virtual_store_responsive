import 'package:flutter/material.dart';

class ResposividadeMidiaQuery extends StatefulWidget {
  const ResposividadeMidiaQuery({super.key});

  @override
  State<ResposividadeMidiaQuery> createState() =>
      _ResposividadeMidiaQueryState();
}

class _ResposividadeMidiaQueryState extends State<ResposividadeMidiaQuery> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var statusBarHeigth = MediaQuery.of(context).padding.top;
    var appBarHeigth = AppBar().preferredSize.height;


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resposividade',
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            width: width / 3,
            height: height - appBarHeigth - statusBarHeigth,
            color: Colors.red[100],
          ),
          Container(
            width: width / 3,
            height: height - appBarHeigth - statusBarHeigth,
            color: Colors.red[300],
          ),
          Container(
            width: width / 3,
            height: height - appBarHeigth - statusBarHeigth,
            color: Colors.red[500],
          ),
        ],
      ),
    );
  }
}
