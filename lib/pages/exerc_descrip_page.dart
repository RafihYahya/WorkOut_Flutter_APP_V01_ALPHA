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
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Container(
            height: 175,
            color: Colors.red.shade400,
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      execprop.desc!.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.75),
                    ),
                    Text(
                      'niaw',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Icon(
                  Icons.star_border,
                  size: 32.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Text(
                execprop.desc!.desc,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: (execprop.desc!.danger == 'HARD')
                      ? Colors.redAccent
                      : Colors.greenAccent,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            execprop.desc!.danger,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
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
