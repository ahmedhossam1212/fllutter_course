import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:lottie/lottie.dart';

class LevelThree extends StatefulWidget {
  const LevelThree({super.key});

  @override
  State<LevelThree> createState() => _LevelThreeState();
}

class _LevelThreeState extends State<LevelThree> {
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
          "User inter face",
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
                child: Image.network(
                    "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/548918584c74d4ce52ebf0930811cf17_1536x1024.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextArt(text: "Level 3 : ", textColor: AppColors.textColor),
              const SizedBox(height: 20),
              TextArt(
                  text:
                      " - To shut down open start icon from taskbar and select shut down from power                                                             - To Search open search from taskbar and write anything                                                              - To open your files open File Explorer      - To open settings select setting from start icon  ",
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
