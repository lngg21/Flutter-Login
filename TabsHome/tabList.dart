import 'package:flutter/material.dart';

class TabList extends StatefulWidget {
  const TabList({super.key});

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  late TextEditingController control;
  late List<Text> myList;

  @override
  void initState() {
    super.initState();
    control = TextEditingController();
    myList = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextField(
            controller: control,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Insira um novo item",
            )),
        ElevatedButton(
          onPressed: () {
            myList.add(Text(control.text));
          },
          child: const Text("Add"),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: myList[index],
              );
            },
          ),
        ),
        Text("Testando"),
      ]),
    );
  }
}
