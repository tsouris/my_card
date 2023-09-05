import 'package:flutter/material.dart';
import 'package:my_card/core/presentation/screens/home/presentation/widgets/info_dialog.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 130),
        alignment: Alignment.center,
        child: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const InfoDialog();
                },
              );
            },
            icon: Image.asset(
              'assets/icons/information-button.png', // Replace with your desired icon
              color: Colors.black,
              height: 20, // Icon color
            ),
            label: const Text(
              "About me!",
              style: TextStyle(
                color: Color(
                    0xFF632A0D), // Change the text color to your desired color
                fontSize: 18, // Adjust the font size as needed
              ),
            ),
          ),
        ));
  }
}
