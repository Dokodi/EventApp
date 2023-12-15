import 'package:flutter/material.dart';
import 'package:flutterapp1/Components/menuItems.dart';
import 'package:popover/popover.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [
    itemInvite,
    itemSave,
    itemCalendar,
    itemAttending
  ];

  static const itemInvite = MenuItem(
    text: 'Invite',
    icon: Icons.share,
  );
  static const itemSave = MenuItem(
    text: 'Save',
    icon: Icons.bookmark_border,
  );

  static const itemCalendar = MenuItem(
    text: 'Calendar',
    icon: Icons.calendar_month,
  );

  static const itemAttending =
      MenuItem(text: 'Attensding', icon: Icons.people_outline);
}
