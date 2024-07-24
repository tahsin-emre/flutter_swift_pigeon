import 'package:flutter/material.dart';
import 'package:flutter_swift_pigeon/pigeon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: HomeView());
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController uidCont = TextEditingController();
  User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pigeon_Flutter_Swift'),
        ),
        body: Column(
          children: [
            Text('UserID: ${user?.id} - UserName: ${user?.name}'),
            TextField(controller: uidCont),
            ElevatedButton(
              onPressed: _getUser,
              child: const Text('Get User'),
            ),
          ],
        ));
  }

  Future _getUser() async {
    final response = await UserApi().getUser(uidCont.text);
    setState(() => user = response);
  }
}
