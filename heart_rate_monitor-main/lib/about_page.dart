

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heart_rate_monitor/home_screen.dart';

//About Page
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to get size
    var size = MediaQuery.of(context).size;

    //style
    var cardTextStyle = TextStyle(
        fontFamily: 'Montserrat Medium',
        fontSize: 20,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
        body: Stack(
            children: <Widget> [
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/images/topheader.png')
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          height: 64,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('About us', style: TextStyle(fontFamily: 'Montserrat Medium', color: Colors.white, fontSize: 28)),
                                    ]
                                )
                              ]
                          )
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Card(
                                        margin: const EdgeInsets.only(top: 20.0),
                                        elevation: 4,
                                        child: SizedBox(
                                            height: size.height*.3,
                                            width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.all(45.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Hi, I am a student of Electrical and Electronics engineering. "
                                                  "I enjoy creating apps for mobile devices.",
                                                  )
                                                ],
                                              ),
                                            )),
                                      ),

                                      Positioned(
                                          top: .0,
                                          left: 0.0,
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(20.0, 0.0, .0, .0),
                                              child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    CircleAvatar(
                                                      radius: 48.0,
                                                      backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQF95umc8VKSlA/profile-displayphoto-shrink_400_400/0/1609620929358?e=1657756800&v=beta&t=lm5cY-K0h3ie1_KMGN8PD9oSnvbV-rE9vGkSDge_8-A'),
                                                    ),
                                                    SizedBox(width: 20),
                                                    Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          SizedBox(height: 20),
                                                          Text("Furkan Deniz", style: cardTextStyle, maxLines: 2,),
                                                          Text("Albaylar", style: cardTextStyle, maxLines: 2,)
                                                        ]
                                                    )
                                                  ]
                                              )
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Stack(

                                    children: <Widget>[
                                      Card(
                                        margin: const EdgeInsets.only(top: 20.0),
                                        elevation: 4,
                                        child: SizedBox(
                                            height: size.height*.3,
                                            width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.all(45.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Hello, my name is Alihan Tayçu. I am currently a last year "
                                                        "student in the field of Electrical and Electronics Engineering with a "
                                                        "specialization in computer science.",
                                                  )
                                                ],
                                              ),
                                            )),
                                      ),

                                      Positioned(
                                        top: .0,
                                        left: 0.0,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(20.0, .0, .0, .0),
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  CircleAvatar(
                                                    radius: 48.0,
                                                    backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D35AQG1UbfRV15pDw/profile-framedphoto-shrink_400_400/0/1608805467551?e=1653894000&v=beta&t=clUcWw0ku7ROfyQi1JGJc3QABIH1k3lBDaM22TNyTfI'),
                                                  ),
                                                  SizedBox(width: 20),
                                                  Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Text("Alihan Tayçu", style: cardTextStyle, maxLines: 1,)
                                                      ]
                                                  )
                                                ]
                                            )

                                        ),
                                      )
                                    ],
                                  ),
                                ]
                            )
                        ),

                      ),


                      Container(
                        constraints: BoxConstraints(minHeight: 50.0),
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  const begin = Offset(-1.0, 0.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end:end).chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                }
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            onPrimary: Colors.black,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    'Go back',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat Regular'
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}
