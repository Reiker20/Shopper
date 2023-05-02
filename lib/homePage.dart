import 'package:flutter/material.dart';
import 'package:homepage_shopper/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaeaea),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xffee7f74),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        // elevation: 2.0,
                        fillColor: Color(0xfff9d0ba),
                        child: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.black45,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(13.0),
                        shape: CircleBorder(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 38),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deliver To",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 3),
                                  child: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 18.0,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Rumahku",
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 3),
                                  child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                  size: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 65, right: 10),
                            child: CircleAvatar(backgroundColor: Color(0xfff9d0ba),
                            radius: 20.0,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black45,
                              size: 25.0),
                              ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: CircleAvatar(backgroundColor: Color(0xfff9d0ba),
                            radius: 20.0,
                            child: Icon(
                              Icons.edit_outlined,
                              color: Colors.black45,
                              size: 25.0),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //stack disini ya rei
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              width: 380,
              height: 129,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
              ),
              child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                  Text(
                    "Promo Hari Ini",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffee7f74)),
                  ),
                  Text(
                    "Khusus untuk kamu",
                    style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
                  ),
                  ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  
                  "Cari Kategori         ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(17, 18, 17, 1),
                  ),
                ),
                Text(
                  "                                              Lihat semua",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffee7f74),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                width: 100,
                height: 114,
                child: Stack(
                  children: <Widget>[
                  Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                  width: 100,
                  height: 114,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.all(Radius.circular(10)),
                  color : Color.fromRGBO(255, 255, 255, 1),
                  ),
                  ),
                  ),
                  Positioned(
                    top: 69,
                    left: 13,
                    child: Text(
                      'Nasi goreng', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 25,
                    child: Container(
                      width: 49,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                        image: AssetImage('assets/image/Fried rice.png'),
                        fit: BoxFit.fitWidth
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 89,
                    left: 13,
                    child: Text(
                      '120 orang jastip', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 10,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  ]
                )
              ),
              Container(
                width: 100,
                height: 114,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                      width: 100,
                      height: 114,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.all(Radius.circular(10)),  
                        color : Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 69,
                      left: 35,
                      child: Text(
                        'Kopi', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w700,
                          height: 1
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 26,
                      child: Container(
                        width: 49,
                        height: 49,
                        decoration: BoxDecoration(
                          image : DecorationImage(
                            image: AssetImage('assets/image/Coffe cup.png'),
                            fit: BoxFit.fitWidth
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 89,
                      left: 15,
                      child: Text(
                        '100 orang jastip', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Color.fromRGBO(78, 77, 77, 1),
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                        ),
                      ),
                    ),
                  ]
                )
              ),
              Container(
                width: 100,
                height: 114,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                      width: 100,
                      height: 114,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.all(Radius.circular(10)),  
                        color : Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 69,
                      left: 35,
                      child: Text(
                        'Baju', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w700,
                          height: 1
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 26,
                      child: Container(
                        width: 49,
                        height: 49,
                        decoration: BoxDecoration(
                          image : DecorationImage(
                            image: AssetImage('assets/image/T shirt.png'),
                            fit: BoxFit.fitWidth
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 89,
                      left: 18,
                      child: Text(
                        '90 orang jastip', 
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Color.fromRGBO(78, 77, 77, 1),
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                        ),
                      ),
                    ),
                  ]
                )
              ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  
                  "Pilih Jastiper         ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(17, 18, 17, 1),
                  ),
                ),
                Text(
                  "                                              Lihat semua",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffee7f74),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 380,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ),
                  Positioned(
                    top: 18,
                    left: 80,
                    child: Text(
                      'Idgar Raka', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 80,
                    child: Text(
                      '1.450 point',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 165,
                    child: Text(
                      '⭐⭐⭐⭐⭐',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(195, 195, 195, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                          image: AssetImage('assets/image/idgar.png'),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(60, 59)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 380,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ),
                  Positioned(
                    top: 18,
                    left: 80,
                    child: Text(
                      'Reynia Putri', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 80,
                    child: Text(
                      '1.400 point',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 165,
                    child: Text(
                      '⭐⭐⭐⭐⭐',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(195, 195, 195, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                          image: AssetImage('assets/image/reynia.png'),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(60, 59)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 380,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ),
                  Positioned(
                    top: 18,
                    left: 80,
                    child: Text(
                      'Rendi Alzar', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 80,
                    child: Text(
                      '1.300 point',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 165,
                    child: Text(
                      '⭐⭐⭐⭐⭐',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(195, 195, 195, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                          image: AssetImage('assets/image/rendi.png'),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(60, 59)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 380,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ),
                  Positioned(
                    top: 18,
                    left: 80,
                    child: Text(
                      'Vania Flatin', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 80,
                    child: Text(
                      '1.200 point',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 165,
                    child: Text(
                      '⭐⭐⭐⭐⭐',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(195, 195, 195, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                          image: AssetImage('assets/image/vania.png'),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(60, 59)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 380,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ),
                  Positioned(
                    top: 18,
                    left: 80,
                    child: Text(
                      'Rafa Septian', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 42,
                    left: 80,
                    child: Text(
                      '1.000 point',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(78, 77, 77, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 165,
                    child: Text(
                      '⭐⭐⭐⭐⭐',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(195, 195, 195, 1),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 49,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                          image: AssetImage('assets/image/rafa.png'),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(60, 59)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
