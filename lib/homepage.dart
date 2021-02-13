import 'package:flutter/material.dart';
import 'package:obsidian/completed_trans.dart';
import 'package:obsidian/dashboard.dart';
import 'package:obsidian/models/transaction.dart';
import 'package:obsidian/transactionpage.dart';
import 'completed_trans.dart';
import 'previous_trans.dart';
import 'package:obsidian/models/user.dart';
import 'function.dart';

class HomePage extends StatefulWidget {
  final User user;

  HomePage({this.user});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    
    Color primaryColor = Colors.black;

    //Color primaryColor = Color.fromRGBO(255, 82, 48, 1);

    //List transaction = ['Transaction 1', 'Transaction 2', 'Transaction 3'];

    

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor, border: Border.all(color: primaryColor)),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(color: primaryColor),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Dhairya',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            
                            'Avalilable Balance',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          )
                        ],
                      ),
                      Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.blue[300],
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => DashboardPage()
                            ));
                          },
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: Text(
                            'TOP UP',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 25.0, left: 25.0, bottom: 20),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.send),
                                      color: Colors.purple,
                                      iconSize: 30.0,
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => CompletedTransaction(),),);
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Completed \n Transactions',
                                  textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.credit_card),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => PreviousTransaction(),),);
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Previous \nTransactions',
                                  textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.orange.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.receipt),
                                      color: Colors.orange,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Request',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.pink.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.monetization_on),
                                      color: Colors.pink,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Invoice',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.favorite),
                                      color: Colors.purpleAccent,
                                      iconSize: 30.0,
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionPage(user: user),),);
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Charity',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.deepPurple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.attach_money),
                                      color: Colors.deepPurple,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Loan',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Divider(),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Lorem ipsum dolor sit amet dan aku tan moyan',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Material(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blueAccent.withOpacity(0.1),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.blueAccent,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
              child: Text(
                'Ongoing Transactions',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            FutureBuilder(
              future: getOngoingContracts(user.email),
              builder: (BuildContext context, AsyncSnapshot snapshot){
                print('future1');
                //print(snapshot.data);
                if(snapshot.data == null){
                return Center(
                    child: 
                    Text('Ruko jara, sabar karo')
                );
                }
              else {
                //return Center(child: Text(snapshot.data[1]['emplyeeEmail']));
                return ListView.builder( 
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.length, 
                  
                  itemBuilder: (BuildContext context,int index){ 
                    return Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: UpcomingCard(
                        index: index,
                        title: "By : ${snapshot.data[index]['employerEmail']}",

                        value: "Contract ID : ${snapshot.data[index]['id']}",
                        // onTap: () {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => PendingPage(pendingcontract: pending,),),);
                        // },
                      ),
                    );
        }
        );
              }})
            ]),
        ),
      );

  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class UpcomingCard extends StatelessWidget {
  final String title;
  final String value;
  final int index;
  final Function onTap;
  // final Color color;

  UpcomingCard({this.title, this.value, this.index,this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = index%2 == 0 ? Colors.blue : Colors.orange;
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(5),
          width: 120.0,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30.0),
                    Text('$value',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.arrow_right, color: Colors.white,),
                  color: Colors.white, 
                  onPressed: null)
              ],
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}