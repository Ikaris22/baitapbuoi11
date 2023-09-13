import 'package:flutter/material.dart';
class Lists{
  IconData icon;
  String content;
  Lists (this.icon, this.content);
}
List<Lists> listview =[
  Lists(Icons.list_alt, 'My orders'),
  Lists(Icons.domain_verification, 'My Subscriptions'),
  Lists(Icons.location_on_outlined, 'My Addresses'),
  Lists(Icons.forum_outlined, 'FAQ'),
  Lists(Icons.headset_mic, 'Contact Us'),
  Lists(Icons.info_outline, 'About'),
  Lists(Icons.logout, 'Log Out')
];