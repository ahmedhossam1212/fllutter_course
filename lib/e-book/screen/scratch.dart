import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:lottie/lottie.dart';

class LevelFive extends StatefulWidget {
  const LevelFive({super.key});

  @override
  State<LevelFive> createState() => _LevelFiveState();
}

class _LevelFiveState extends State<LevelFive> {
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
          "Scratch",
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
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Scratchlogo.svg/1920px-Scratchlogo.svg.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextArt(text: "Level 5 : ", textColor: AppColors.textColor),
              const SizedBox(height: 20),
              TextArt(
                  text:
                      "Scratch : is a high-level block-based visual programming language and website aimed primarily at children as an educational tool for programming, with a target audience of ages 8 to 16.[6] Users on the site, called Scratchers, can create projects on the website using a block-like interface. Projects can be exported to HTML5, Android apps, Bundle (macOS) and EXE files using external tools. The service is developed by the MIT Media Lab, has been translated into 70+ languages, and is used in most parts of the world.[7] Scratch is taught and used in after-school centers, schools, and colleges, as well as other public knowledge institutions. As of May 8, 2022, community statistics on the language's official website show more than 104 million projects shared by over 90 million users, over 686 million total projects ever created (including unshared projects), and more than 100 million monthly website visits.",
                  textColor: AppColors.textColor),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/e/ec/Dialogo_scratch_Best_Friends_1.png"),
              )),
              const SizedBox(
                height: 15,
              ),
              TextArt(
                  text: " How Scratch work ? ", textColor: AppColors.textColor),
              const SizedBox(
                height: 15,
              ),
              defaultFormField(
                  controller: answerController,
                  type: TextInputType.text,
                  validate: (String value) {
                    if (value != "by blocks") {
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
