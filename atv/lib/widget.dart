import 'package:flutter/material.dart';

class widget extends StatelessWidget {
const widget({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: const Text('Produto'),
                tileColor: Colors.amber,
                onTap: () {},
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.menu),
            );
        },
        separatorBuilder: (BuildContext context, int Index) => const Divider(color: Colors.white,),
    );
  }
}