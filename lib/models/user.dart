import 'package:firebase_database/firebase_database.dart';

class Users
{
  late String id;
  late String name;
  late String phone;
  late String email;

  Users({required this.id, required this.name, required this.email, required this.phone});

  Users.fromSnapshot(DataSnapshot<Map<String, dynamic>> dataSnapshot)
  {
    id = dataSnapshot.key!;
    name = dataSnapshot.value![name];
    email = dataSnapshot.value![email];
    phone = dataSnapshot.value![phone];
  }
  
}
