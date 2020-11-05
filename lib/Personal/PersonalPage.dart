import 'package:flutter/material.dart';
import 'package:whatsapp_demo/Constants/Constants.dart';
import 'package:whatsapp_demo/Status/StatusView.dart';

var deGreen= Constants().deGreen;
var cardElevation= Constants().cardElevation;
var cardContHt= Constants().cardContHt;
var cardRadius= Constants().cardRadius;
var pageContHt= Constants().pageContHt;
var dpSize=Constants().dpSize;

class PersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: pageContHt,
      color: Colors.grey[100],
      child: ListView(
        children: [
          Container(height: 5,),
          StatusView(),
          Container(height: 1,),
          Card(
            elevation: cardElevation,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
            child:
            Container(height: cardContHt,
              child: Center(
                child: ListTile(
                  leading:ClipRRect(
                    borderRadius: BorderRadius.circular(dpSize),
                    child: Image(
                      image: NetworkImage( "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",),
                      width:dpSize,
                      height:dpSize,
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
                    borderRadius: BorderRadius.circular(dpSize),
                    child: Image(
                      image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      ),
                      width: dpSize,
                      height: dpSize,
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
                    borderRadius: BorderRadius.circular(dpSize),
                    child: Image(
                      image: NetworkImage(  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      ),
                      width: dpSize,
                      height: dpSize,
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
                    borderRadius: BorderRadius.circular(dpSize),
                    child: Image(
                      image: NetworkImage( "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      ),
                      width: dpSize,
                      height:dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage(  "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage(  "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
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
                    borderRadius: BorderRadius.circular(dpSize),
                    child: Image(
                      image: NetworkImage(  "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      ),
                      width: dpSize,
                      height: dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage( "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage(  "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage( "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
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
                  borderRadius: BorderRadius.circular(dpSize),
                  child: Image(
                    image: NetworkImage( "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    ),
                    width: dpSize,
                    height: dpSize,
                    fit: BoxFit.cover,
                  ),
                ),
                title:Text( "Litzy",textAlign: TextAlign.left,),
                subtitle: Text("message",textAlign: TextAlign.left),),
            ),
          ),),
        ],),);
  }
}
