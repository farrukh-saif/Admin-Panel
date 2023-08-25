import 'package:admin_panel/utils/app_session.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: widget.screenSize.height,
      color: Colors.black12,
      child: Column(
        children: [
          SizedBox(
            height: widget.screenSize.height / 3,
            child: const Center(
              child: Text(
                "Project Name Here",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 110,
            child: ElevatedButton(
              onPressed: () {
                AppSession().subpage.value = Subpage.dashboard;
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black26),
              ),
              child: const Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 110,
            child: ElevatedButton(
              onPressed: () {
                AppSession().subpage.value = Subpage.controlPanel;
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black26),
              ),
              child: const Text(
                "Control Panel",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 110,
            child: ElevatedButton(
              onPressed: () {
                AppSession().subpage.value = Subpage.manageUsers;
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black26),
              ),
              child: const Text(
                "Manage Users",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
