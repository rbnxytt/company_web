import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({
    Key? key,
    required this.services,
  }) : super(key: key);

  final List<String> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SizedBox(
            height: 450.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                    child: SizedBox(
                      height: 310.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 175.0,
                            width: 450.0,
                            child: Text(
                              'We Offer Best Services',
                              style: GoogleFonts.montserrat(
                                  fontSize: 60.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 135.0,
                            width: 500.0,
                            child: Text(
                              'The happiness and satisfaction we feel is double the happiness and satisfaction of every client that we are working with.',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500),
                              maxLines: 5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 150.0, bottom: 50.0),
                  height: 250.0,
                  width: 1.0,
                  color: Colors.black,
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (String service in services)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.check,
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  width: 50.0,
                                ),
                                Text(
                                  service,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(
          height: 1.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 75.0),
          child: Center(
            child: Text(
              'Get In Touch',
              style: GoogleFonts.montserrat(
                  fontSize: 42.0, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 500.0,
          child: Text(
            'Have you got an exciting project for us to talk about?',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 30.0, color: Colors.red, fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 75.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contact Us',
                style: GoogleFonts.montserrat(fontSize: 24.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
