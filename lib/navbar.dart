import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.navigationTexts,
    required this.hovered,
  }) : super(key: key);

  final List<String> navigationTexts;
  final bool hovered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo.jpeg',
            height: 50,
            width: 180,
          ),
          Expanded(
            child: SizedBox(
              height: 50.0,
              width: 450.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (String text in navigationTexts)
                      TextButton(
                        // onHover: (value) => setState(() {
                        //   hovered = value;
                        // }),
                        onPressed: () {},
                        child: Text(
                          text,
                          style: GoogleFonts.montserrat(
                            color: hovered &&
                                    text ==
                                        navigationTexts[
                                            navigationTexts.indexOf(text)]
                                ? Colors.red
                                : Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ]),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                primary: const Color(0xffF53E3E),
                minimumSize: const Size(120.0, 50)),
            child: const Text('Sign In'),
          )
        ],
      ),
    );
  }
}
