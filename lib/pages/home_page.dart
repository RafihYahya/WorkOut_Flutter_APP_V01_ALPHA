// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comp/my_drawer.dart';
import 'package:flutter_application_1/data/exec_desc.dart';
import 'package:flutter_application_1/data/exercise.dart';
import 'package:flutter_application_1/data/workout.dart';
import 'package:flutter_application_1/data/workoutlist.dart';
import 'package:flutter_application_1/pages/workout_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final Function(int) callback2;

  const HomePage({Key? key, required this.callback2}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final newworkoutController = TextEditingController();

void createNewWorkout(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.black87,
      title: const Text('Create New Workout'),
      content: TextField(
        controller: newworkoutController,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
            onPressed: () => save(context),
            color: Colors.greenAccent,
            textColor: Colors.black,
            child: const Text('SAVE',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(24.0, 18.0, 24.0, 18.0),
            onPressed: () => cancel(context),
            color: Colors.redAccent,
            textColor: Colors.black,
            child: const Text('CANCEL',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    ),
  );
}

void save(BuildContext context) {
  if (newworkoutController.text != 'Laila') {
    Provider.of<WorkOutList>(context, listen: false)
        .addworkout(newworkoutController.text);
    Navigator.pop(context);
    newworkoutController.clear();
  } else {
    Provider.of<WorkOutList>(context, listen: false)
        .workoutlist
        .add(Workout(name: 'WELCOME LAILA', exercise: [
          Exercise(
              name: 'Laila Angry',
              wheight: '50Kg',
              reps: '0',
              sets: '0',
              desc: Description(
                  title: 'The Mad CryBaby',
                  desc:
                      'As We Can See Here , A Very Weird Creature. Although At first glance, She might appear intimidating. I can  Assure you,  She is nothing but USELESS',
                  danger: 'HARD',
                  image: 'lib/assets/1234012.jpg')),
          Exercise(
              name: 'Laila Happy',
              wheight: '52Kg',
              reps: '0',
              sets: '0',
              desc: Description(
                  title: 'Kinda Cute',
                  desc:
                      'Although she might claim quite annoyingly that she is cute , in reality she is nothing but annoying , although sometimes through no wish on her own she does do cute stuff',
                  danger: 'EASY',
                  image: 'lib/assets/12340123.jpg')),
          Exercise(
              name: 'Laila Cringe',
              wheight: '49Kg',
              reps: '0',
              sets: '0',
              desc: Description(
                  title: 'I Wish I was Dead',
                  desc:
                      'Nothing to add here , sometimes I do not want to be associated with here.PERIOD',
                  danger: 'HARD',
                  image: 'lib/assets/123401234.jpg')),
          Exercise(
              name: 'Laila SAD',
              wheight: '49Kg',
              reps: '0',
              sets: '0',
              desc: Description(
                  title: 'Yeah Sometimes ',
                  desc:
                      'Out of Respect to her privacy , i shall not disclose any Sad moments, but man she does cry a lot',
                  danger: 'HARD',
                  image: 'lib/assets/1234012345.jpg')),
          Exercise(
              name: 'SMoll Laila',
              wheight: '300Kg',
              reps: '0',
              sets: '0',
              desc: Description(
                  title: 'Watashiwa Stalker Janai',
                  desc: 'I swear i didnt stalk, i was looking for pics .',
                  danger: 'HARD',
                  image: 'lib/assets/12340123456.jpg')),
        ]));
    Navigator.pop(context);
    newworkoutController.clear();
  }
}

void cancel(BuildContext context) {
  Navigator.pop(context);
  newworkoutController.clear();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer<WorkOutList>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              ' WORKOUT ',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            )),
            elevation: 0,
            backgroundColor: const Color.fromARGB(131, 0, 0, 0),
            //leading: const Icon(Icons.menu),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (() => createNewWorkout(context)),
            backgroundColor: Colors.black38,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          drawer: my_drawer(
            callback2: widget.callback2,
            j: 1,
          ),
          body: Row(
            children: [
              (screenWidth > 1000)
                  ? Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black38,
                        width: 30.0,
                        margin: const EdgeInsets.only(right: 68),
                      ))
                  : Container(),
              (screenWidth > 600)
                  ? const Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 10.0,
                      ),
                    )
                  : Container(),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: value.gettotalworkout(),
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              tileColor: Colors.black38,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  value.workoutlist[index].name,
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WorkoutPage(
                                              title:
                                                  value.workoutlist[index].name,
                                            ))),
                              },
                            ),
                          )),
                ),
              ),
              (screenWidth > 600)
                  ? const Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 10.0,
                      ),
                    )
                  : Container(),
            ],
          )),
    );
  }
}
