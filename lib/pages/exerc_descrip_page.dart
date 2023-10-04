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
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.redAccent,
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Miaw'),
                    Text('niaw'),
                  ],
                ),
                Text('Niaw'),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 68.0,
          ),
          Expanded(
            child: Container(
              color: Colors.redAccent,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Center(child: Text('diffucwdjk')),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
