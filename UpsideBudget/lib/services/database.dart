import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService{
  
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection = Firestore.instance.collection('users');

  Future updateAllUserInfo(String firstName, String lastName, List nameOfExpenses, List dateOfExpenses, List costOfExpenses, List userMonthlyExpenses)
  async {
    return await userCollection.document(uid).setData({
      'First Name': firstName,
      'Last Name': lastName,
      'Monthly Expenses List': userMonthlyExpenses,
      'Name Of Expenses List': nameOfExpenses,
      'Cost Of Expenses List': costOfExpenses,
      'Date Of Expenses List': dateOfExpenses,
    });
  }

  Stream<QuerySnapshot> get userSnapshot{
      return userCollection.snapshots();
  }
}