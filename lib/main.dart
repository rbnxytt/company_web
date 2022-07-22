import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> navigationTexts = const [
    'Home',
    'About',
    'Services',
    'Contact us'
  ];
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 50.0, right: 50.0),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (String text in navigationTexts)
                                    TextButton(
                                      onHover: (value) => setState(() {
                                        hovered = value;
                                      }),
                                      onPressed: () {},
                                      child: Text(
                                        text,
                                        style: GoogleFonts.montserrat(
                                          color: hovered &&
                                                  text ==
                                                      navigationTexts[
                                                          navigationTexts
                                                              .indexOf(text)]
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Excellent service\nmeans excellent\nbusiness.',
                                maxLines: 3,
                                style: GoogleFonts.montserrat(
                                    fontSize: 72, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                    'Right skills and passion, excellent results.',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffD9D9D9),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0),
                          child: Text(
                            'Who are we?',
                            style: GoogleFonts.montserrat(
                                fontSize: 55.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 285.0, vertical: 20.0),
                          child: Text(
                              'We are a dynamic team of highly capable freelancers who are equipped with the right skills and driven by the passion to deliver excellent results.',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  fontSize: 30.0, fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 285.0, vertical: 45.0),
                          child: Text(
                            'We strongly believe that things should be done using the best ways possible with integrity as our main guide.',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 30.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
