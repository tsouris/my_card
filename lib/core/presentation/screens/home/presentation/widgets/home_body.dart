import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_card/core/presentation/screens/home/presentation/widgets/aboutme_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    const double radius = 25;
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF9A7B4F), Color(0xFF7E481C)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(radius),
                            topRight: Radius.circular(radius)),
                        child: Image.asset('assets/img/me.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.4)),
                    const SizedBox(height: 20),
                    Text(
                      "Tsouris Nikolas",
                      style: GoogleFonts.indieFlower(
                        fontSize: 45,
                        fontWeight: FontWeight.w300 ,
                        color: const Color(0xFF65350F)// Adjust the font size as needed
                      ),
                    ),
                    const InfoButton()
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
