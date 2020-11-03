import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_demo/Status/Status.dart';


class Home extends StatelessWidget {
  final List<Status> _status = [
    Status(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Status(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sylvester"),
    Status(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Status(
        "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Mckenzie"),
    Status(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Buster"),
    Status(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Carlie"),
    Status(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Edison"),
    Status(
        "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Flossie"),
    Status(
        "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lindsey"),
    Status(
        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Freddy"),
    Status(
        "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Litzy")
  ];
  final double cardContHt=85;
  final Color deContBG=Colors.white;
  final double cardRadius=5;
  final double cardElevation=3;
  final Color deGreen=Colors.green;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 7,
            backgroundColor: Colors.white,
            title: Text("Whatsapp",style: TextStyle(color: deGreen),),
            actions:<Widget> [
              Icon(Icons.search,color: deGreen,size: 25,),
              Icon(Icons.more_vert,color: deGreen,size: 25),
            ],
          ),
          body:Column(
            children: [
              Container(height: 5,),
              Container(height:106,child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children:_status.map((status) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(65),
                          border: Border.all(
                            width: 3,
                            color: deGreen,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(
                            2,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(status.image),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(status.name),
                    ],
                  );
                }).toList(),)),
              Container(height: 1,color:Colors.black26,),
              Container(height: 580,
                color: deContBG,
                child: ListView(
                  children: [
                    Container(height: 3,),
                    Card(elevation: cardElevation,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      child:
                    Container(height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image(
                            image: NetworkImage( "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",),
                            width:65,
                            height:65,
                            fit: BoxFit.cover,
                          ),
                            ),
                          title:Text( "Jazmin",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,
                      child:
                    Container(
                        height:cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                              ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Sylvester",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,
                      child:
                    Container(
                      height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Lavina",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,
                      child:
                      Container(
                        height: cardContHt,
                        child: Center(
                          child: ListTile(
                            leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                              child: Image(
                              image: NetworkImage( "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Mckenzie",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                        ),
                      ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,child:
                    Container(
                       height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(  "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Buster",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,child:
                    Container( height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(  "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text("Carlie",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
                      elevation: cardElevation,
                      child:
                     Container(
                       height: cardContHt,
                       child: Center(
                         child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(  "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Edison",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                       ),
                     ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),elevation: cardElevation,child:
                    Container(
                      height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage( "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Flossie",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),elevation: cardElevation,child:
                    Container( height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage(  "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                  ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Lindsey",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),elevation: cardElevation,child:
                    Container( height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage( "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text("Freddy",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),elevation: cardElevation,child:
                    Container( height: cardContHt,
                      child: Center(
                        child: ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image(
                              image: NetworkImage( "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                                ),
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title:Text( "Litzy",textAlign: TextAlign.left,),
                          subtitle: Text("message",textAlign: TextAlign.left),),
                      ),
                    ),),
                  ],),),
            ],
          ),
          bottomNavigationBar: DefaultTabController(
            length: 4,
            initialIndex: 1,
            child: BottomAppBar(elevation: 10,
              child: TabBar(
                indicator: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: deGreen,
                        width: 3.0
                    ),
                  ),
                ),
                isScrollable: false,
                indicatorColor:deGreen,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                tabs: [
                 Container(width:5,child: Icon(Icons.camera_alt,color: deGreen,),),
                 Tab(child: Text("Private",style: TextStyle(color: deGreen),)),
                 Tab(child: Text("Groups",style: TextStyle(color: deGreen),)),
                 Tab(child: Text("Calls",style: TextStyle(color: deGreen),))
            ],),),
          ),
        ),
      ),
    );
  }
}
