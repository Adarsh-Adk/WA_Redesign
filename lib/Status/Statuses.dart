import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsapp_demo/main.dart';

class Statuses extends StatelessWidget {
  String image;
  String name;
  int index;
  int length;

  Statuses(this.image, this.name, this.length, this.index);

  StoryController storyController = StoryController();

  Widget build(BuildContext context) {
    return Container(
      child: StoryView(
        controller: storyController,
        storyItems: [
          StoryItem.text(title: name,textStyle: TextStyle(decoration: TextDecoration.none,fontSize: 40), backgroundColor: deGreen),
          StoryItem.inlineImage(
              url: image, caption: null, controller: storyController),
        ],
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        },
        onComplete: () {
          if ((index + 1) < length) {
            print("index:$index,length:$length");
            Navigator.pop(context);
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
