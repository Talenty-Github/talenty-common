import 'package:flutter/material.dart';

class TalentyPopupMenuItem {
  VoidCallback onTap;
  String label;

  TalentyPopupMenuItem({required this.onTap, required this.label});
}

class TalentyPopupMenu extends StatelessWidget {
  final List<TalentyPopupMenuItem> menuItems;
  final Widget? child;
  const TalentyPopupMenu({required this.menuItems, this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (_) => menuItems
          .map(
            (TalentyPopupMenuItem menuItem) => PopupMenuItem<String>(
              onTap: menuItem.onTap,
              child: Text(menuItem.label),
            ),
          )
          .toList(),
      offset: const Offset(0.0, 72.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      constraints: const BoxConstraints(minWidth: 266.0),
      child: child,
    );
  }
}
