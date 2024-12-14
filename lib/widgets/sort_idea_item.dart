import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/screens/ideas/list_of_topics_screen.dart';

import 'cusotm_icon.dart';
import 'custom_color.dart';

class SortIdeaItem extends StatefulWidget {
  const SortIdeaItem({super.key});

  @override
  State<SortIdeaItem> createState() => _SortIdeaItemState();
}

class _SortIdeaItemState extends State<SortIdeaItem> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 6,
            color: Colors.white,
          )
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: CustomColor.backGroundColor,
            borderRadius: BorderRadius.circular(22),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListOfTopicsScreen(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(22),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 13),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(-90 / 360),
                      child: CustomIcon(
                        icon: 'list',
                        size: 23,
                        color: CustomColor.greenColor2,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'موضوع',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'YB',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 15,
                    width: 15,
                    child: Visibility(
                      visible: (index == 0) ? true : false,
                      child: Divider(
                        color: (index == 0)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                        thickness: 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 25,
                  width: 70,
                  child: Center(
                    child: Text(
                      'جدیدترین',
                      style: TextStyle(
                        fontFamily: 'YB',
                        fontSize: 12,
                        color: (index == 0)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 15,
                    width: 15,
                    child: Visibility(
                      visible: (index == 1) ? true : false,
                      child: Divider(
                        color: (index == 1)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                        thickness: 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 25,
                  width: 70,
                  child: Center(
                    child: Text(
                      'برگزیده',
                      style: TextStyle(
                        fontFamily: 'YB',
                        fontSize: 12,
                        color: (index == 1)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 15,
                    width: 15,
                    child: Visibility(
                      visible: (index == 2) ? true : false,
                      child: Divider(
                        color: (index == 2)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                        thickness: 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 25,
                  width: 70,
                  child: Center(
                    child: Text(
                      'پربازدید',
                      style: TextStyle(
                        fontFamily: 'YB',
                        fontSize: 12,
                        color: (index == 2)
                            ? CustomColor.greenColor2
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
