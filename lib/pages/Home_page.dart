import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/pages/Compra_page.dart';
import 'package:flutter_app_uniticket_v2/main.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopPart()
          ],
        ),
      ),
    );
  }
}

class HomeScreenTopPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.black12, offset: Offset(0.0, 10.0), blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/logo.jpg", fit: BoxFit.cover, width: double.infinity,),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0x000000000),
                            const Color(0xD93333333),
                          ],
                        stops: [0.0,0.9],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 1.0),
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120.0,left: 95.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("SEJA BEM VINDO!", style: TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: "SF-Pro-Display-Bold"),),
                          Text("Saldo : 0,00", style: TextStyle(color: Colors.white, fontSize: 45.0, fontFamily: "SF-Pro-Display-Bold" ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
              top: 370.0,
              right: -20.0,
              child: FractionalTranslation(
                translation: Offset(0.0, -0.5),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/compraticket');
                          },
                          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                          child: Row(
                            children: <Widget>[Text("Adicione Saldo")],
                          ),
                        ),
                      )
                    ],
                  )
              ),

          )


        ],
      ),
    );
  }
}



class Mclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);
    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width/2, size.height);

    path.quadraticBezierTo(controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}