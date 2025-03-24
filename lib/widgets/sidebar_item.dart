// Primero, creamos una clase para manejar los datos del sidebar
import 'package:flutter/material.dart';

class SidebarItem {
  final String title;
  final IconData icon;
  final String route;
  final List<String>? subItems;

  SidebarItem({
    required this.title,
    required this.icon,
    required this.route,
    this.subItems,
  });

  static List<SidebarItem> items = [
    SidebarItem(
      title: 'All Inboxes',
      icon: Icons.inbox,
      route: '/inbox',
      subItems: ['Primary', 'Business', 'Projects', 'Game'],
    ),
    SidebarItem(
      title: 'Account',
      icon: Icons.account_circle,
      route: '/account',
      subItems: ['Profile', 'Settings', 'Security'],
    ),
    SidebarItem(
      title: 'All Sent',
      icon: Icons.send,
      route: '/sent',
      subItems: ['Emails', 'Notifications'],
    ),
    SidebarItem(
      title: 'Scheduled',
      icon: Icons.schedule,
      route: '/scheduled',
      subItems: ['Meetings', 'Reminders'],
    ),
  ];
}