import 'package:flutter/material.dart';
import 'package:flutterlaundry/login_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<String> gender = <String>[
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gender'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: gender.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(gender[index]),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),

        /*children: [
            ListTile(
              leading: const Icon(Icons.person, size: 20),
              title: const Text('Name', style: TextStyle(fontSize: 18)),
              subtitle: const Text('View and edit name',
                  style: TextStyle(fontSize: 14)),
              trailing: const Icon(Icons.edit, size: 20),
              tileColor: Colors.grey[50],
            ),
            ListTile(
              leading: const Icon(Icons.email, size: 20),
              title: const Text('Email', style: TextStyle(fontSize: 18)),
              subtitle: const Text('View and edit email',
                  style: TextStyle(fontSize: 14)),
              trailing: const Icon(Icons.edit, size: 20),
              tileColor: Colors.grey[50],
            ),
            ListTile(
              leading: const Icon(Icons.phone, size: 20),
              title: const Text('Phone', style: TextStyle(fontSize: 18)),
              subtitle: const Text('View and edit phone',
                  style: TextStyle(fontSize: 14)),
              trailing: const Icon(Icons.edit, size: 20),
              tileColor: Colors.grey[50],
            ),
            ListTile(
              leading: const Icon(Icons.info, size: 20),
              title: const Text('About us', style: TextStyle(fontSize: 18)),
              subtitle: const Text('About us', style: TextStyle(fontSize: 14)),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              ),
              trailing: const Icon(Icons.edit, size: 20),
              tileColor: Colors.grey[50],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'Y:\Project\2024 Mobile Dev\flutter_newapp\assets\images\profile.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text('Joe',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text('joe@mail.com',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/laundry');
                    },
                    child: const Text('Go to Laundry Page'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Log out'),
                  ),
                ],
              ),
            ),
          ]*/
      ),
    );
  }
}
