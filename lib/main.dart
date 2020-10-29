import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: new AppBar(
          title: new FlutterLogo(size: 30.0,),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
          ),
          actions: [
            IconButton(icon: Icon(Icons.menu), onPressed: (){},color: Colors.grey,),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment(0.0,-0.40),
                  height: 100.0,
                  color: Colors.white,
                  child: Text(
                    'Get coaching',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                            child: Text(
                              'YOU HAVE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                fontFamily: 'Ubuntu',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25.0, 45.0, 5.0, 15.0),
                            child: Text(
                              '260',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                fontFamily: 'Ubuntu',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100.0,),
                      Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE8F5E9),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'By more',
                            style: TextStyle(
                              fontFamily: 'GrenzeGotisch',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 40.0,),
            Container(
              margin: EdgeInsets.only(left: 25.0,right: 25.0),
              child: Row(
                // color: Colors.white,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MY COACHES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontFamily: 'Ubuntu',
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'VIEW PAST SESSIONS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontFamily: 'Ubuntu',
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: [
                _buldCard('Zakir Hossain', 'Available', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/88052719_2711232392278884_5425836033327497216_n.jpg?_nc_cat=105&ccb=2&_nc_sid=09cbfe&_nc_ohc=2MNgdW8yvFgAX80KTk3&_nc_ht=scontent.fdac32-1.fna&oh=93f74c4e4a4f494b0de23d49538ead47&oe=5FBD7D98', 1),

                _buldCard('Galib Qurishi', 'Away', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/98330057_3368124816555401_2468218581460975616_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=H_clGVmetp4AX8Cqvdi&_nc_ht=scontent.fdac32-1.fna&oh=d2d8cb05437f9adf23e05f0d713a8077&oe=5FBF566A', 2),

                _buldCard('Sajid Hasan', 'Available', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/107475277_633958237521402_1652525587554825559_o.jpg?_nc_cat=104&ccb=2&_nc_sid=174925&_nc_ohc=SuHE5k8rZ8sAX8Fhm7j&_nc_ht=scontent.fdac32-1.fna&oh=642926318199f642fd089929db592ea4&oe=5FC0A4C1', 3),

                _buldCard('Abdus Samad', 'Available', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/64349716_10211865041856354_5041466185804152832_n.jpg?_nc_cat=101&ccb=2&_nc_sid=174925&_nc_ohc=S1d6a48fPhwAX-GssVW&_nc_ht=scontent.fdac32-1.fna&oh=f26350cb720c36ead549184f887912cb&oe=5FC08890', 4),

                _buldCard('Reza', 'Away', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/94674033_1091335101223062_4390863487539085312_n.jpg?_nc_cat=106&ccb=2&_nc_sid=174925&_nc_ohc=jGS-iPYsP5sAX-b5P9L&_nc_ht=scontent.fdac32-1.fna&oh=7791c8a093b4efcad3aa8fa6b57d4c6a&oe=5FC172A4', 5),

                _buldCard('Sagor Khan', 'Available', 'https://scontent.fdac32-1.fna.fbcdn.net/v/t1.0-9/13263903_1214801995220186_9073771009951976213_n.jpg?_nc_cat=108&ccb=2&_nc_sid=174925&_nc_ohc=0N6amcj03YsAX_JCHgv&_nc_ht=scontent.fdac32-1.fna&oh=c1de69e28bf8d0174599e27a5ea09ad5&oe=5FBE6ABA', 6),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buldCard(String name, String status, String image, int cardIndex,){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      child: Column(
        children: [
          SizedBox(height: 25.0),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        image
                    )
                  )
                ),
              ),
              Container(
                height: 20.0,
                width: 20.0,
                margin: EdgeInsets.only(left: 45.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away'? Colors.amber: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'GrenzeGotisch',
              fontSize: 22.0,
            ),
          ),
          SizedBox(height: 3.0),
          Text(
            status,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Ubuntu',
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              // width: 175.0,
              // height: 40.0,
              decoration: BoxDecoration(
                color: status == 'Away'? Colors.grey: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 10.0, 10.0),
    );
  }
}
