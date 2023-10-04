import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/exercise.dart';

class ExecDesc extends StatelessWidget {
  final Exercise execprop;
  const ExecDesc({Key? key, required this.execprop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image(
                  height: 500,
                  width: 500,
                  image: AssetImage('lib/assets/hollow_asset.jpg')),
              Text('Miaw')
            ],
          ),
        ),
      ),
    );
  }
}
