import 'package:flutter/material.dart';
//import '../shared/navigator/navigator1_helper.dart';
import '../shared/theme/themes/_interface/app_theme.dart';
import '/shared/l10n/l10n_helper.dart';
import 'feature/add_photo/add_photo.dart';

class Questionnaire4 extends StatefulWidget {
  const Questionnaire4({super.key});

  @override
  State<Questionnaire4> createState() => _Questionnaire4State();
}

class _Questionnaire4State extends State<Questionnaire4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.color.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.color.shadow,
            size: 32,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  context.s.step4,
                  style: context.text.aDr18w400,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.s.pleaseUploadPhotos,
                  style: context.text.gDGn14w400,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  context.s.insuranceFrontSide,
                  style: context.text.m18w400,
                ),
                const SizedBox(height: 16),
                const ImagePicker(),
                const SizedBox(height: 32),
                Text(
                  context.s.insuranceBackSide,
                  style: context.text.m18w400,
                ),
                const SizedBox(
                  height: 16,
                ),
                const ImagePicker(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: context.button.elevated1,
                    onPressed: () {
                      // context.rootRouter.use.push(const Questionnaire6());
                    },
                    child: Text(
                      context.s.continuee,
                      style: context.text.n16w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
