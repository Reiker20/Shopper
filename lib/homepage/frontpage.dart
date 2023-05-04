import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*25/100,
                  child: Stack(
                      children: <Widget>[
                        _top(),
                        _saldo()
                      ]
                  )
              ),
            Column(
              children: [
                _promo(),
                SizedBox(height: 10,),
                _category(),
                SizedBox(height: 10,),
                _jastiper()
                      ],
                    ),
        ]
      )
      )
    );
  }

  _top(){
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: Container(
          height: MediaQuery.of(context).size.height*15/100,
          decoration: BoxDecoration(
            color: Palette.activeColor,
          ),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width- 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Palette.activeColor2,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: Icon(CupertinoIcons.person, size: 30, color: Colors.black45,)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              SizedBox(height: 3,),
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
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
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
              ),
            ],
          ),
        ));
  }
  _saldo(){
    return Positioned(
      top: MediaQuery.of(context).size.height*13/100,
      child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width- 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saldo Saya",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      "Rp. 100.000.00",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width- 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _saldoItem(item: 1),
                        _saldoItem(item: 2),
                        _saldoItem(item: 3),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
    );
  }
  _promo(){
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width- 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Container(
          margin: EdgeInsets.all(15),
          child:
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width- 40,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promo Bulanan",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Icon(CupertinoIcons.info_circle, color: Palette.activeColor, size: 15,)
                  ],
                ),),
              SizedBox(height: 5),
              Text(
                "Dapatkan 1x pengiriman gratis untuk 10 kali pemesanan berturut-turut!",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54),
              ),
              SizedBox(height: 10,),
              _map()
            ],
          ),
        ),
    );
  }
  _category(){
    return Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width- 40,
          child: Column(
            children: [
              _topSection(name: 'Paling Banyak Dicari'),
              SizedBox(height: 10,),
              _categoryItem()
            ],
        ) );
  }
  _jastiper(){
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width- 40,
      child: Column(
        children: [
          _topSection(name: 'Pilih Jastiper '),
          _jastiperTile(name: 'Hero Yamada', points: 125),
          _jastiperTile(name: 'Hero Yamada', points: 125),
          _jastiperTile(name: 'Hero Yamada', points: 125),
          _jastiperTile(name: 'Hero Yamada', points: 125),
          _jastiperTile(name: 'Hero Yamada', points: 125),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
  _jastiperTile({String? name, int? points}){
    return Container(
      margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Colors.grey),height: 50,width: 50,),
              SizedBox(width: 20,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name!, style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5,),
                      Text('${points} points ', style: TextStyle(color: Colors.black54, fontSize: 12, ),)
                    ],
                  )),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Colors.black54),child: Container(margin: EdgeInsets.all(8),child: Icon(CupertinoIcons.checkmark_alt_circle, size: 18,color: Colors.white,))),
            ],
          ),
        ));
  }

  _map(){
   return Row(
     children: [
       _promoItem(item: 1),
       _line(),
       _promoItem(item: 2),
       _line(),
       _promoItem(item: 3),
       _line(),
       _promoItem(item: 4),
       _line(),
       _promoItem(item: 5),
     ],
   ) ;
  }
  _promoItem({int? item}){
    return Container(
        decoration: BoxDecoration(
            color: item==1?Palette.check:item==2?Palette.check2:item==3?Palette.check3:item==4?Palette.check4:item==5?Palette.check5:Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          child:Icon(CupertinoIcons.checkmark_alt_circle, color: Colors.white, size: 20),)
    );
  }
  _saldoItem({int? item}){
    return Column(
      children: [
        Icon(item==1?Icons.add_box_outlined:item==2?CupertinoIcons.qrcode_viewfinder:item==3?Icons.send_outlined:null, color: Palette.activeColor, size: 25,),
        Text(item==1?'Top Up':item==2?'Bayar':item==3?'Kirim':'', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 12),)
      ],
    );
  }
  _line(){
    return Container(
      color: Palette.activeColor,
      height: 2,
      width: 20,
    );
  }
  _topSection({String? name}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name!, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
        Text('Lihat Lebih', style: TextStyle(color: Palette.activeColor, fontSize: 12, ),),
      ],
    );
  }
  _categoryItem(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _categoryItems(name: 'Nasi goreng',people: 120),
        _categoryItems(name: 'Kopi',people: 100),
        _categoryItems(name: 'Baju',people: 90),
      ],
    );
  }
  _categoryItems({String? name, int? people}){
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          child:Column(children: [
            Icon(Icons.fastfood_outlined, color: Colors.black, size: 45,),
            SizedBox(height: 10,),
            Text(name!,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
            SizedBox(height: 5,),
            Text('${people!} orang jastip',style: TextStyle(color: Colors.black54, fontSize: 10),)
          ]),)
    );
  }
}
