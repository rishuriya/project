import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          '',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      // A fixed-height child.
                      color:Colors.white, // Yellow
                      height: 200.0,
                      alignment: Alignment.center,
                      child: Column(children: const <Widget>[Text(
                        'AMRITA MAIL',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),Padding(
                          padding: EdgeInsets.only(top:12,bottom:12),
                          child:FaIcon(
                            FontAwesomeIcons.envelope,
                            color: Colors.deepPurpleAccent,
                            size: 50,
                          )
                      ),]),
                      padding: EdgeInsets.all(15.0),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Container(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:<Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        alignment: Alignment.topLeft,
                                        padding: EdgeInsets.all(15.0)
                                    )
                                )
                              ]
                          ),Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:<Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        child: Column(children: const <Widget>[
                                          CircleAvatar(
                                            radius: 70.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                            AssetImage('images/2.png'),
                                          ),
                                          Text(
                                            "Maintainer Login",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left:5.0,right: 5.0,bottom: 20)
                                    )
                                ),Expanded(
                                    flex: 1,
                                    child: Container(
                                        child: Column(children: const <Widget>[
                                          CircleAvatar(
                                            radius: 70.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                            AssetImage('images/3.png'),
                                          ),
                                          Text(
                                            "New Delivery",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left:5.0,right: 5.0,bottom: 20)
                                    )
                                ),]),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:<Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        child: Column(children: const <Widget>[
                                          CircleAvatar(
                                            radius: 70.0,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                            AssetImage('images/4.png'),
                                          ),
                                          Text(
                                            "Check Delivery",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ]),
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left:5.0,right: 5.0,bottom:20)
                                    )
                                ),

                      ])
                          ]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(0),
                            ),
                            boxShadow: [BoxShadow(
                              color: Colors.white,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 0,
                              spreadRadius: 0,
                            ),],
                            color: Colors.white
                        ),
                        // Red
                        height: 120.0,


                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}