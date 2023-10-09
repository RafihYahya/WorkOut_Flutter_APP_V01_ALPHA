import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/exec_desc.dart';
import 'package:flutter_application_1/data/exercise.dart';
import 'package:flutter_application_1/data/workout.dart';

const String asset = 'lib/assets/';

class WorkOutList extends ChangeNotifier {
  List<Workout> workoutlist = [
    Workout(
      name: 'Back Workout',
      exercise: [
        Exercise(
            name: 'Deadlift ',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'DEADLIFT',
                desc:
                    'The deadlift is a strengthening exercise where a loaded barbell is lifted off the ground from a stabilized, bent over position, knees free to bend. It is one of the three canonical powerlifting exercises, along with the squat and bench press.',
                danger: 'HARD',
                image: '${asset}exec01.webp')),
        Exercise(
            name: 'Lat Pull-Down',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Lat Pull-Down',
                desc:
                    'The lat pull down machine is used to target the latissimus dorsi muscle (i.e. your back). It is typically performed seated, facing towards the machine, where you pull a long bar attached to the cable, towards your chest, and then slowly extend your arms back to starting position.',
                danger: 'EASY',
                image: '${asset}exec02.webp')),
        Exercise(
            name: 'Bent-Over Row',
            wheight: '45Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Bent-Over Row',
                desc:
                    'Lift the bar from the rack, bend forward at the hips, and keep the back straight with a slight bend in the knees. Lower the bar towards the floor until the elbows are completely straight, and keep the back flat as the bar is pulled towards the belly button. Then slowly lower the bar to the starting position and repeat.',
                danger: 'EASY',
                image: '${asset}exec03.webp')),
        Exercise(
            name: 'Pull-Up',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Pull-Up',
                desc:
                    'A pull-up is an upper-body exercise that involves hanging from a pull-up bar by your hands with your palms facing away from you, and lifting your entire body up with your arm and back muscles until your chest touches the bar.',
                danger: 'EASY',
                image: '${asset}exec04.webp')),
        Exercise(
            name: 'Seated Row',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Seated Row',
                desc:
                    'A seated cable row is a compound exercise that utilizes a weighted horizontal cable row machine to work muscle groups in your back and arms. Cable machines include a bench for comfortable seating and foot plates to brace yourself against as you pull the weighted cable.',
                danger: 'EASY',
                image: '${asset}exec05.webp')),
        Exercise(
            name: 'T-Bar Row',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'T-Bar Row',
                desc:
                    ' The T-Bar row is a pulling upper body movement involving a weighted barbell with a T-shaped attachment. Different attachments give this exercise a wide range of purposes. Some use a narrow grip, others are wider, while others allow a neutral grip position, underhand grip, and a pronated grip.',
                danger: 'EASY',
                image: '${asset}exec06.webp')),
        Exercise(
            name: 'Biceps Curls',
            wheight: '30Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Biceps Curls',
                desc:
                    'To do a biceps curl with a dumbbell, hold a dumbbell with your palm facing upward. Slowly curl the weight up by bending your elbow, keeping your elbow close to your body. Then slowly lower the weight to the starting position.',
                danger: 'EASY',
                image: '${asset}exec07.webp'))
      ],
    ),
    Workout(
      name: 'Chest Workout',
      exercise: [
        Exercise(
            name: 'Bench Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Bench Press',
                desc:
                    'The bench press, or chest press, is a weight training exercise where a person presses a weight upwards while lying horizontally on a weight training bench. Although the bench press is a full-body exercise, the muscles primarily used are the pectoralis major, the anterior deltoids, and the triceps, among other stabilizing muscles. ',
                danger: 'EASY',
                image: '${asset}exec08.webp')),
        Exercise(
            name: 'Lateral Raises',
            wheight: '5Kg',
            reps: '13',
            sets: '4',
            desc: Description(
                title: 'Lateral Raises',
                desc:
                    'Lateral Raises is a strength training exercise in which the hand and arm move through an arc while the elbow is kept at a constant angle. Because these exercises use the arms as levers at their longest possible length, the amount of weight that can be moved is significantly less than equivalent press exercises for the same muscles',
                danger: 'EASY',
                image: '${asset}exec09.webp')),
        Exercise(
            name: 'Chest fly',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest fly',
                desc:
                    'A chest fly is a weightlifting exercise that primarily targets the pectoral muscles. It is a variation of the standard bench press and is performed by lying on a flat bench with a weight in each hand. You can do this exercise with dumbbells, barbells, or cables.',
                danger: 'EASY',
                image: '${asset}exec10.webp')),
        Exercise(
            name: 'Push-up',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest fly',
                desc:
                    'Push-ups are a strength-building exercise that targets multiple muscle groups. The classic move offers health benefits like a strong core and better posture. You can modify push-ups to make them more accessible and easier to do.',
                danger: 'EASY',
                image: '${asset}exec11.webp')),
        Exercise(
            name: 'Dumbbell Bench Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Dumbbell Bench press',
                desc:
                    'The dumbbell bench press is a version of the bench press that uses dumbbells instead of a barbell. Using two dumbbells and a bench, this exercise challenges the performer to lower both dumbbells to their chest before extending the arms to press them back up again.',
                danger: 'EASY',
                image: '${asset}exec12.webp')),
        Exercise(
            name: 'Chest Dip',
            wheight: '75Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Chest Dip',
                desc:
                    'The chest dip is an upper-body exercise that involves lowering your body between two “dip bars” and pressing yourself upward again. It trains all of your upper-body pushing muscles to a high degree and allows you to lift heavy weights safely, which means it s ideal for gaining muscle and strength.',
                danger: 'EASY',
                image: '${asset}exec13.webp')),
        Exercise(
            name: 'Machine Fly',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Machine Fly',
                desc:
                    'The machine fly requires the performer to sit upright on the machine and push the handles in front and towards the body. Make sure to adjust the seats so that handles are at chest height when sat down, then move the handles so they are in line with your shoulders.',
                danger: 'EASY',
                image: '${asset}exec14.webp')),
        Exercise(
            name: 'Overhead Press',
            wheight: '55Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Overhead Press',
                desc:
                    'an overhead press is simply a movement in which resistance is pushed above the head. You can do this in a variety of ways, such as by using: both hands simultaneously. one hand at a time.',
                danger: 'EASY',
                image: '${asset}exec15.webp')),
        Exercise(
            name: 'Push-Down',
            wheight: '85Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Push-Down',
                desc:
                    'A push-down is a strength training exercise used for strengthening the triceps muscles in the back of the arm. This exercise can also be called a tricep push-down or a two armed standing tricep extension. Push-down on a cable machine. The exercise is completed by pushing an object downward against resistance.',
                danger: 'EASY',
                image: '${asset}exec16.webp')),
        Exercise(
            name: 'Triceps Extension',
            wheight: '35Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Triceps Extension',
                desc:
                    ' To do a triceps extension, lie on your back with a dumbbell in your hand. Point your upper arm toward the ceiling, with your elbow bent to 90 degrees. Slowly straighten the elbow, moving the weight upward. Then slowly lower the weight to the starting position.',
                danger: 'EASY',
                image: '${asset}exec17.webp')),
      ],
    ),
    Workout(
      name: 'Leg Workout',
      exercise: [
        Exercise(
            name: 'Leg Press',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Leg Press',
                desc:
                    'Leg presses are seated exercises done on a leg press machine. To start, sit with your back against a padded backrest and your feet on two large footrests. Your knees are bent to start the exercise. To move the weight, you must straighten your legs and then return them to the bent position.',
                danger: 'EASY',
                image: '${asset}exec99.webp')),
        Exercise(
            name: 'Squat',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Squat',
                desc:
                    'an exercise in which a standing person lowers to a position in which the torso is erect and the knees are deeply bent and then rises to an upright position. Note: A squat can be done while holding weights, with a barbell on the upper back, or without weights.',
                danger: 'EASY',
                image: '${asset}exec18.webp')),
        Exercise(
            name: 'Hip Thrusts',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Hip Thrusts',
                desc:
                    'Lie on your back with your arms by your sides, your knees bent and your feet planted on the ground. Squeeze your glutes, press through your heels and drive your hips up so you form a straight line from your knees to your shoulders. Hold for a second at the top of the move, then lower slowly.',
                danger: 'EASY',
                image: '${asset}exec19.webp')),
        Exercise(
            name: 'Lunges ',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Lunges ',
                desc:
                    'an exercise in which a person in a standing position steps forward into a position in which the front knee is deeply bent while keeping the torso erect and then returns back to the starting position. also : a similar exercise in which the initial movement is to the side rather than forward.',
                danger: 'EASY',
                image: '${asset}exec20.webp')),
        Exercise(
            name: 'Romanian Deadlift',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Romanian Deadlift',
                desc:
                    'A Romanian Deadlift (RDL) is a deadlift in which the body is bent at the hips and the knees are not bent. The deadlift is a strengthening exercise where a loaded barbell is lifted off the ground from a stabilized, bent over position, knees free to bend.',
                danger: 'EASY',
                image: '${asset}exec21.gif')),
        Exercise(
            name: 'Split Squat',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Split Squat',
                desc:
                    'Your legs are split with one leg in front of you and the other behind you on an elevated surface like a bench. This exercise works the front leg muscles. Split squats put emphasis on your quadriceps to support your body weight and require core engagement to stay upright and balanced.',
                danger: 'EASY',
                image: '${asset}exec22.webp')),
        Exercise(
            name: 'Calf Raises',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Calf Raises',
                desc:
                    'The calf raise, also known as the standing calf raise, is a bodyweight exercise that targets the muscle groups in your lower legs. Perform calf raises by standing tall with your feet hip-width apart. Lift your body by pushing into the fronts of your feet, activating your calf muscles as you stand on your tiptoes.',
                danger: 'EASY',
                image: '${asset}exec23.webp')),
        Exercise(
            name: 'Glute Bridges',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Glute Bridges',
                desc:
                    'A glute bridge is a physical exercise that helps to strengthen the gluteus muscles (located in your buttocks) and hamstrings. Glute bridges are done by laying on your back with both feet planted on the ground and lifting your pelvis. It can help to increase hip flexibility and lower back health',
                danger: 'EASY',
                image: '${asset}exec24.webp')),
        Exercise(
            name: 'Step-Ups',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Step-Ups',
                desc:
                    'Step-ups challenge your balance and coordination while strengthening the lower body, core and cardiovascular system. Step-ups are an excellent way to challenge your balance, coordination, and cardiovascular system. You can use a chair or bench to step up on and do the same thing with a box or stairs.',
                danger: 'EASY',
                image: '${asset}exec25.webp')),
        Exercise(
            name: 'Side Lunges',
            wheight: '70Kg',
            reps: '10',
            sets: '3',
            desc: Description(
                title: 'Side Lunges',
                desc:
                    'To perform a side lunge, you ll step one foot out at your side, then sink your hips back and bend your knee to lower your butt to the floor. As you lower to the floor, you ll keep your opposite leg straight,',
                danger: 'EASY',
                image: '${asset}exec26.webp')),
        Exercise(
            name: 'ABS Crunch',
            wheight: '50Kg',
            reps: '15',
            sets: '4',
            desc: Description(
                title: 'ABS Crunch',
                desc:
                    'Fold your arms on your chest and tighten your abdominal muscles. Raise your head and shoulders off of the floor. Hold for three deep breaths, then return to starting position. You ll feel tension in the muscles in your abdomen. When you re doing abdominal crunches, don t clasp your hands behind your head.',
                danger: 'EASY',
                image: '${asset}exec27.webp')),
      ],
    )
  ];

  // retrieve workout

  List<Workout> getworkout() {
    return workoutlist;
  }

  int gettotalworkout() {
    return workoutlist.length;
  }

  void addworkout(String name) {
    workoutlist.add(Workout(name: name, exercise: []));
    notifyListeners();
  }

  void addexercice(String name, String exercicename, String weight, String reps,
      String sets, String desc) {
    Workout rightfulworkout =
        workoutlist.firstWhere((workout) => workout.name == name);

    rightfulworkout.exercise.add(Exercise(
        name: exercicename,
        wheight: weight,
        reps: reps,
        sets: sets,
        desc: Description(title: desc, desc: desc, danger: 'EASY')));
    notifyListeners();
  }

  void checkoffworkout(String workoutname, String exercicename) {
    Workout rightfulworkout =
        workoutlist.firstWhere((workout) => workout.name == workoutname);
    Exercise rightexercice = rightfulworkout.exercise
        .firstWhere((exercice) => exercice.name == exercicename);
    rightexercice.isCompleted = true;
    notifyListeners();
  }
}
