import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/exercise.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: const Color.fromARGB(255, 28, 28, 28),
      body: Row(
        children: [
          (MediaQuery.of(context).size.width > 1000)
              ? Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black26,
                  ),
                )
              : const SizedBox(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black54,
                  child: Image(
                      image: AssetImage(execprop.desc!.image),
                      height: 215,
                      fit: BoxFit.cover),
                ),
                Container(
                  color: Colors.black38,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(execprop.desc!.title,
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0,
                                  ),
                                )),
                            Text(
                              execprop.isCompleted == true ? 'Done' : 'Pending',
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.star_border,
                          size: 32.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 28.0),
                        child: Text(
                          'Description:',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 28.0),
                          child: Text(execprop.desc!.desc,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontSize: 15.0,
                                  height: 1.2,
                                ),
                              ))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: (execprop.desc!.danger == 'HARD')
                            ? const Color.fromARGB(169, 245, 44, 30)
                            : const Color.fromARGB(106, 25, 226, 32),
                        borderRadius: BorderRadius.circular(3.0)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(execprop.desc!.danger,
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.0,
                                          color: Colors.black),
                                    )),
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
          ),
          (MediaQuery.of(context).size.width > 1000)
              ? Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black26,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
