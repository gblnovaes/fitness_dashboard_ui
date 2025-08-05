import 'package:fitness_dashboard_ui/constants/constants.dart';
import 'package:fitness_dashboard_ui/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return ListView.builder(
      itemCount: data.menuItems.length,
      itemBuilder: (context, index) {
        return buidMenuEntry(data, index);
      },
    );
  }

  Widget buidMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: defautlPadding,
      ),
      decoration: BoxDecoration(
        color: isSelected ? selectionColor : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          // Handle navigation or other actions here
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13.0,
                vertical: 7,
              ),
              child: Icon(
                data.menuItems[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
                size: 24,
              ),
            ),

            Text(
              data.menuItems[index].title,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
