import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference tasksCollection =
      FirebaseFirestore.instance.collection('tasks');

  Stream<QuerySnapshot<Object?>> getTasks() {
    return tasksCollection.snapshots();
  }

  Future<bool> createTasks(Map<String, dynamic> data) async {
    try {
      await tasksCollection.add(data);
      return true;
    } on FirebaseException {
      return false;
    }
  }

  Future<bool> updateTasks({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      await tasksCollection.doc(id).update(data);
      return true;
    } on FirebaseException {
      return false;
    }
  }

  Future<bool> removeTasks(String id) async {
    try {
      await tasksCollection.doc(id).delete();
      return true;
    } on FirebaseException {
      return false;
    }
  }
}
