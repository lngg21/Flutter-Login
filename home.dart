import 'package:flutter/material.dart';
// import 'package:helloworld/TabsHome/tabHome.dart';
import 'package:helloworld/TabsHome/tabList.dart';
import 'package:helloworld/TabsHome/tabList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
              child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  print("home");
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              )
            ],
          )),
          appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: "Opções",
                )
              ]),
              centerTitle: true,
              title: const Text(
                "Compra Fácil",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue),
          body: const TabBarView(
            children: [
              //TabHome(),
              TabList()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "Face"),
            BottomNavigationBarItem(
                icon: Icon(Icons.telegram), label: "Telegram")
          ]),
        ));
  }
}
