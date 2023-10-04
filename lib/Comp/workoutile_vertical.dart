import 'package:flutter/material.dart';

class Worktile extends StatefulWidget {
  const Worktile({Key? key}) : super(key: key);

  @override
  WorktileState createState() => WorktileState();
}

class WorktileState extends State<Worktile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 1,
            child: SizedBox(
              width: 10.0,
            )),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 26.0),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('miaw'),
                    ],
                  ),
                  Icon(Icons.home_max),
                ],
              ),
            ),
          ),
        ),
        const Expanded(
            flex: 1,
            child: SizedBox(
              width: 10.0,
            )),
      ],
    );
  }
}
