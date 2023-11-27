import 'package:flutter/material.dart';

class BaseDrawer extends StatelessWidget {
  final navigationItem;
  const BaseDrawer({super.key, this.navigationItem});

  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
