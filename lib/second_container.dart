import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xffD9D9D9),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Text(
              'Who are we?',
              style: GoogleFonts.montserrat(
                  fontSize: 42.0, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 285.0, vertical: 20.0),
            child: Text(
                'We are a dynamic team of highly capable freelancers who are equipped with the right skills and driven by the passion to deliver excellent results.',
                maxLines: 5,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 24.0, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 285.0, vertical: 45.0),
            child: Text(
              'We strongly believe that things should be done using the best ways possible with integrity as our main guide.',
              maxLines: 5,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 24.0, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
