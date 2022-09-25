import 'package:flutter/material.dart';
class UsersModel {
  final int id;
  final String name;
  final String phone;

  UsersModel({
   required this.id,
   required this.phone,
   required this.name,
});
}
class MessengerScreen extends StatelessWidget {
   MessengerScreen({Key? key}) : super(key: key);
 List<UsersModel>users =[
   UsersModel(
     id: 1,
     name: 'Abdelrahman Elsayed Ahmaed',
     phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),
   UsersModel(
       id: 1,
       name: 'Abdelrahman Elsayed Ahmaed',
       phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),
   UsersModel(
       id: 1,
       name: 'Abdelrahman Elsayed Ahmaed',
       phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),
   UsersModel(
       id: 1,
       name: 'Abdelrahman Elsayed Ahmaed',
       phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),
   UsersModel(
       id: 1,
       name: 'Abdelrahman Elsayed Ahmaed',
       phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),
   UsersModel(
       id: 1,
       name: 'Abdelrahman Elsayed Ahmaed',
       phone: '+201094480098'
   ),
   UsersModel(
       id: 2,
       name: 'Ahmed Elsayed Ahmaed',
       phone: '+20123543544525'
   ),
   UsersModel(
       id: 3,
       name: 'Mohamed Elsayed Ahmaed',
       phone: '+201841212541454'
   ),




 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) => buildUsersItem(
            users[index]
          ),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: users.length,
        ),
      ),
    );
  }

  Widget buildUsersItem(UsersModel user) => Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: Text(
              '${user.id}',
              style:const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:  [
              Text(
                user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.phone,
                style:const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      );
}
