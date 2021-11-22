import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {

  final Color background;
  final Icon icon;
  final String title;
  final String subTitle;

  DashboardContainer({required this.background, required this.icon, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: background.withAlpha(50),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {

          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 30,
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                icon,
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ),
                Text(subTitle, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}