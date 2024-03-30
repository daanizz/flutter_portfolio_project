import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  runApp(const MyWidget());
}

class Firebase {
  static initializeApp() {}
}

class MyWidget extends StatelessWidget {
  _launchURL() async {
    Uri _url = Uri.parse(
        'https://docs.google.com/document/d/1cFiHU3-XvRrXBRgp6DkSF0RtFaRUi6cZcWYg3-sVyHM/edit?usp=sharing');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  _launchURL2() async {
    Uri _url = Uri.parse(
        'https://drive.google.com/file/d/11u_ZgmWkobtD65jvYClEhiJ0uooP5aWZ/view?usp=drive_link');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade200,
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/img7.jpg'))),
              width: double
                  .maxFinite, //by dou...finte we can easily give bounddry.
              height: 3060,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //firsst child in colmn wise -its the order in which all are arranged
                children: [
                  Container(

                      //container created to contain my name in it , it gives a box for my name
                      padding: const EdgeInsets.fromLTRB(20, 30, 10, 15),
                      width: double.maxFinite,
                      height: 100,
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 229, 215, 66),
                              Colors.white,
                              Color.fromARGB(255, 183, 172, 52)
                            ])),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(' DANISH ZAKARIYA ',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigoAccent))
                          ],
                        ),
                      )),
                  Container(
                    //after name ,to give about me and a photo of me just created a container for it
                    width: double.maxFinite,
                    height: 180,
                    color: Colors.indigo.shade800,
                    child: const Row(
                      //to give an about me and photo -ehich should be arranged in row wise child in row is given
                      children: [
                        Expanded(
                            //inorder to give this section a heading as about me, another child is created inside a children using expanded
                            child: Column(
                          //the about me heading and its content should be in a vertical oredr, so to give it -i used column
                          children: [
                            Text(
                              'ABOUT  ME',
                              style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'type2'),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'I am an aspiring CSE student, currently'
                              'exploring various programming areas.I’ve\n'
                              'been working on projects to apply what I’ve'
                              'learned.As i familiarize myself with different\n'
                              'aspects of programming, I’m eager to grow'
                              'and contribute to the field.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Schyler'),
                            )
                          ],
                        )),
                        Image(
                          image: AssetImage('images/abc.jpg'),
                        ) //just a place to add image.
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Colors.indigo,
                              Color.fromARGB(255, 249, 249, 249),
                              Colors.indigo,
                            ])),
                        width: 400,
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'PROJECTS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "type2"),
                            ),
                            Container(
                              width: 360,
                              height: 150,
                              color: const Color.fromARGB(255, 49, 48, 48),
                              child: const Column(
                                children: [
                                  Text(
                                    'WEB  APP DEVELOPMENT\n ',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Developed a food recipe web app using css, which helped me to learn css in that level ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Schyler",
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 360,
                              height: 130,
                              color: const Color.fromARGB(255, 49, 48, 48),
                              child: const Column(
                                children: [
                                  Text(
                                    "GUI DEV ON PYTHON\n",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Developed a gui for making vaccine registration process easier',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Schyler",
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height: 320,
                        width: 6,
                      ),
                      const SizedBox(
                        width: 400,
                        height: 250,
                        child: Column(
                          children: [
                            Text(
                              'SKILLS\n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 26,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Flutter(dart)\nCSS\nbasic C\ncoordinating skill\nadaptability\nweb development',
                              style: TextStyle(
                                  fontFamily: "Schyler", fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text('\n'),
                  Container(
                    color: Colors.black,
                    height: 6,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 160,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/acc.jpg'))),
                    child: const Text(
                      '\nGALLERY\n',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontFamily: "Schyler"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 6,
                  ),
                  Text(
                    'FOOD RECIPE WEBSITE\n',
                    style: TextStyle(
                        color: Colors.indigo.shade800,
                        fontSize: 35,
                        fontFamily: 'type2'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 800,
                        height: 800,
                        child: Image(
                          image: AssetImage('images/2.png'),
                        ),
                      ),
                      const Text('\n\n'),
                      InkWell(
                        onTap: _launchURL,
                        child: const Text(
                          'Visit complete details of the project',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 254, 255),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Text('\n\n'),
                      Container(
                        color: Colors.black,
                        height: 6,
                      ),
                      const Text('\n\n'),
                      const Text(
                        'VACCINE REGISTRATION PORTAL',
                        style: TextStyle(
                            color: Color.fromARGB(255, 1, 10, 71),
                            fontSize: 35,
                            fontFamily: 'type2'),
                      ),
                      const Text('\n\n'),
                      const SizedBox(
                        width: 800,
                        height: 800,
                        child: Image(image: AssetImage('images/py1.png')),
                      ),
                      InkWell(
                        onTap: _launchURL2,
                        child: const Text(
                          'Visit complete details of the project',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 245, 245, 245),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Text('\n\n'),
                      Container(
                        color: Colors.black,
                        height: 6,
                      ),
                      const Text('\n'),
                      const Text(
                        '✆ 8848906658',
                        style: TextStyle(fontSize: 25),
                      )
                    ],
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
