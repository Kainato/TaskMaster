import 'package:flutter/material.dart';
import 'package:task_master/widgets/BaseDrawer.dart';

class BasePage extends StatelessWidget {
  final String title;
  final List<Widget> body;
  final navigationItem;
  final FloatingActionButton? floatingActionButton;

  const BasePage({
    Key? key,
    required this.title,
    required this.body,
    this.navigationItem,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: BaseDrawer(navigationItem: navigationItem),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
