// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:task_master/Classes/Tasks.dart';
import 'package:task_master/Classes/app/ColorsData.dart';
import 'package:task_master/firestore_service.dart';
import 'package:task_master/widgets/BasePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getAllTasks() => FirestoreService().getTasks();

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Home Page',
      body: [
        Flexible(
          child: StreamBuilder<Object>(
            stream: getAllTasks(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                // log('Error: ${snapshot.error}');
                return const Center(child: Text('Something went wrong'));
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                // log('Loading...');
                return CircularProgressIndicator.adaptive(
                  backgroundColor: ColorsData().backgroundColor(context),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                );
              } else {
                List tasks = snapshot.data.docs
                    .map((e) => Tasks.fromMap(e.data()))
                    .toList();
                // log('Data: ${snapshot.data.docs}');

                return ListView(
                  children: tasks
                      .map(
                        (e) => ListTile(
                          title: Text(e.name),
                          subtitle: Text(e.description),
                          trailing: Checkbox(
                            value: e.check,
                            onChanged: (value) {
                              setState(() {
                                e.check = value!;
                              });
                            },
                          ),
                        ),
                      )
                      .toList(),
                );
              }
            },
          ),
        ),
      ],
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  getList(AsyncSnapshot snapshot) {}
}
