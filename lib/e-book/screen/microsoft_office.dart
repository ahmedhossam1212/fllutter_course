import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:lottie/lottie.dart';

class LevelFour extends StatefulWidget {
  const LevelFour({super.key});

  @override
  State<LevelFour> createState() => _LevelFourState();
}

class _LevelFourState extends State<LevelFour> {
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
          "Microsoft Office",
          style:
              TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Microsoft_Office_logo_%282019%E2%80%93present%29.svg/800px-Microsoft_Office_logo_%282019%E2%80%93present%29.svg.png",
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextArt(text: "Level 4 : ", textColor: AppColors.textColor),
              const SizedBox(height: 20),
              TextArt(
                  text:
                      " Microsoft Office, or simply Office, is a discontinued family of client software, server software, and services developed by Microsoft. It was first announced by Bill Gates on August 1, 1988, at COMDEX in Las Vegas. Initially a marketing term for an office suite (bundled set of productivity applications) ",
                  textColor: AppColors.textColor),
              const SizedBox(height: 10),
              TextArt(
                  text:
                      " Microsoft Word: is a word processor included in Microsoft Office and some editions of the now-discontinued Microsoft Works. The first version of Word, released in the autumn of 1983, was for the MS-DOS operating system and introduced the computer mouse to more users",
                  textColor: AppColors.textColor),
              Center(
                child: Lottie.network(
                    "https://assets8.lottiefiles.com/packages/lf20_efbizstn.json"),
              ),
              TextArt(text: "How to Search ? ", textColor: AppColors.textColor),
              const SizedBox(
                height: 15,
              ),
              defaultFormField(
                  controller: answerController,
                  type: TextInputType.text,
                  validate: (String value) {
                    if (value != "open search from taskbar") {
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
