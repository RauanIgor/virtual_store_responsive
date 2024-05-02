import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuilderLayout extends StatefulWidget {
  const BuilderLayout({super.key});

  @override
  State<BuilderLayout> createState() => _BuilderLayoutState();
}

class _BuilderLayoutState extends State<BuilderLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var width = constraints.maxWidth;
            print("Largura: ${width}");
            if (width < 600) { // celulares pequenos
              return Text('Celulares');
            } else if(width < 960){ //celulares maiores e tablets
              return Text('Celulares e tablets');
            } else { //demais despositivos
              return Text('Telas maiores');
            }
          },
        ),
      ),
    );
  }
}
