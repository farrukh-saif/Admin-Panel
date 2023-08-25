import 'package:admin_panel/pages/control_panel.dart';
import 'package:admin_panel/pages/dashboard.dart';
import 'package:admin_panel/utils/app_session.dart';
import 'package:admin_panel/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    //Use value listenable builder to listen to changes in the value of the subpage
    return Row(
      children: [
        NavDrawer(screenSize: screenSize),
        Container(
          child: ValueListenableBuilder(
              valueListenable: AppSession().subpage,
              builder: (context, subpage, child) {
                switch (subpage) {
                  case Subpage.dashboard:
                    return const DashboardPage();
                  case Subpage.controlPanel:
                    return const ControlPanelPage();
                  case Subpage.manageUsers:
                    return Expanded(
                        child: Center(child: const Text("Manage Users")));
                }
              }),
        ),
      ],
    );
  }
}
