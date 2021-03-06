import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var iconColor = Colors.grey.shade800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.white, Colors.indigo]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                        child: Image(
                          image: AssetImage("images/rossi1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/rossi2.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/rossi3.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/rossi4.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/rossi5.jpg")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.amber,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Valentino Rossi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                    "Valentino Rossi (/ˈrɒsi/; Italian: [valenˈtiːno ˈrossi] born 16 February 1979) is an Italian professional motorcycle road racer and multiple MotoGP World Champion. Rossi is one of the greatest motorcycle racers of all time, with nine Grand Prix World Championships to his name – seven of which are in the premier class. Rossi is also the only road racer to have competed in 400 or more Grands Prix. He has ridden with number 46 his entire career, including the years when he was defending his title. He also owns the Sky Racing Team VR46 which participates in the Moto2 and Moto3 classes."),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: RichText(
                            text: TextSpan(
                                text:
                                    "After graduating to the premier class in 2000, Rossi won the 500cc World Championship and 8 Hours of Suzuka with Honda in 2001, the MotoGP World Championships (also with Honda) in 2002 and 2003 and continued his streak of back-to-back championships by winning the 2004 and 2005 titles after leaving Honda to join Yamaha. He lost the 2006 title with a crash in the final round at Valencia. In 2007 Rossi ultimately finished third overall, before regaining the title in 2008 and retaining it in 2009. After a 2010 season marred by a broken leg and no title defence, Rossi left Yamaha to join Ducati for the 2011 season. Rossi replaced Stoner at Ducati and endured two losing seasons with the Italian marque."),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: RichText(
                            text: TextSpan(
                                text:
                                    "It was confirmed in 2012 that he would rejoin Yamaha for the 2013 and 2014 seasons. On his return to Yamaha, he finished fourth in the standings in 2013, followed by three successive runner-up positions in 2014, 2015 and 2016. After Rossi won the 2017 Dutch TT, a multiple-year winless streak followed, although he managed to finish third in the 2018 championship even during this period. Rossi is contracted to race until the end of the 2020 season with Factory Yamaha, when he will be 41 years old. It was confirmed Rossi would leave the Factory Yamaha team at the end of 2020, and he confirmed on 26 September 2020 he will ride for the Petronas Yamaha Racing Team in the 2021 season."),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.95, -0.9),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (iconColor == Colors.grey.shade800) {
                      iconColor = Colors.red;
                    } else if (iconColor == Colors.red) {
                      iconColor = Colors.grey.shade800;
                    }
                  });
                },
                backgroundColor: Colors.white60,
                child: Icon(
                  Icons.favorite,
                  color: iconColor,
                  size: 30,
                ),
                // shape: CircleBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
