import 'package:flutter/material.dart';
import 'package:whatsapp_demo/Constants/Constants.dart';

import 'Status.dart';

 final deGreen= Constants().deGreen;

class StatusView extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 106,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: _status.map((status) {
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
          }).toList(),
        ));
  }
}
