import 'package:flutter/material.dart';

class PopularEventsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color colour;
  const PopularEventsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        //color: Colors.redAccent,
        color: const Color(0xfff3f3f3),
      ),
      height: 48,
      width: 139,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                child: Icon(
                  icon,
                  size: 24,
                  color: Colors.white,
                ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: colour),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text(title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }
}