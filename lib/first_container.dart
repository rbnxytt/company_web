import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 60.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Excellent service\nmeans excellent\nbusiness.',
                    maxLines: 3,
                    style: GoogleFonts.montserrat(
                        fontSize: 72, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Right skills and passion, excellent results.',
                        style: GoogleFonts.montserrat(
                            fontSize: 30, fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 280,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Learn More',
                            style: GoogleFonts.montserrat(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_zdgya1h9.json',
                    fit: BoxFit.fitWidth),
              ),
            )
          ],
        ),
      ),
    );
  }
}
