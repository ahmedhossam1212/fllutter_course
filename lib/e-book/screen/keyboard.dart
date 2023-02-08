import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:lottie/lottie.dart';

class KeyboardLevel extends StatefulWidget {
  const KeyboardLevel({super.key});

  @override
  State<KeyboardLevel> createState() => _KeyboardLevelState();
}

class _KeyboardLevelState extends State<KeyboardLevel> {
  TextEditingController answerController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool answer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.primary,
            )),
        elevation: 0.0,
        backgroundColor: AppColors.background,
        title: Text(
          "Keyboard",
          style:
              TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Form( key: formKey,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                    "https://img.freepik.com/free-photo/top-view-arrangement-with-keyboard_23-2148604846.jpg?size=626&ext=jpg&uid=R65010531&ga=GA1.1.1925568693.1646082132&semt=sph"),
                          ),
                          const SizedBox(
                height: 15,
                          ),
                          TextArt(text: "Level 2 : ", textColor: AppColors.textColor),
                          const SizedBox(height: 20),
                          TextArt(
                  text:
                      "You press the individual buttons on the keyboard when you type. The number keys across the top of the keyboard are also found on the right of the keyboard. The letter keys are in the centre of the keyboard. The symbol keys to the right of the letters include symbols such as the question mark and full stop.",
                  textColor: AppColors.textColor),
                          Center(
                child: Lottie.network(
                    "https://assets6.lottiefiles.com/datafiles/WIRy7Ny0KV28BJg/data.json"),
                          ),
                          TextArt(
                  text: "How to use keyboard ? ", textColor: AppColors.textColor),
                          const SizedBox(
                height: 15,
                          ),
                          defaultFormField(
                  controller: answerController,
                  type: TextInputType.text,
                  validate: (String value) {
                    if (value != "press in buttons") {
                      return "Answer is wrong";
                    }
                  },
                  hint: "Answer"),
                          const SizedBox(
                height: 15,
                          ),
                          Center(
                child: InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        answer = true;
                      });
                    }
                  },
                  child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                          ),
                          Center(
                child: Lottie.network(
                  "https://assets1.lottiefiles.com/packages/lf20_5vfzmcqx.json",
                  height: answer ? 200 : 0,
                ),
                          )
                        ]),
              ),
        ),
      ),
    );
  }
}
