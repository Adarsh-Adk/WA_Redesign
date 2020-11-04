import 'package:flutter/material.dart';
import 'package:whatsapp_demo/Constants/Constants.dart';


var pageContHt = Constants().pageContHt;

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: pageContHt,
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              title: Text("TecDetox Community",textAlign: TextAlign.left),
              subtitle: Text("Message",textAlign: TextAlign.left),
            ),
          )
        ],
      ),
    );
  }
}
