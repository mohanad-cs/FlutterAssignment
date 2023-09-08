
import 'package:flutter/material.dart';

void main() {
  runApp(const MainLayoutDemo());
}

class MainLayoutDemo extends StatefulWidget {
  const MainLayoutDemo({super.key});

  @override
  State<MainLayoutDemo> createState() => _MainLayoutDemoState();
}

class _MainLayoutDemoState extends State<MainLayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Assingment",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Center(child: Text("Layouts")),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.cloud_outlined)),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            createBirthdayImageRow(),
            Column(
              children: [
                createBirthdatyTitleRow("My BirthDay"),
                const Divider(),
                creatDescrptionRow(),
                const Divider(),
                Row(
                  children: [
                    createWhtherIconColumn(),
                    createWhtherDescrptionColumn(),
                  ],
                ),
                const Divider(),
                creatGiftUsingRowsAndColumns(),
                const Divider(),
                createAvataerAndIconsWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget createBirthdayImageRow() {
  return const Expanded(
      child: Image(
    image: AssetImage("images/1.png"),
    fit: BoxFit.contain,
  ));
}

Widget createBirthdatyTitleRow(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 8),
    child: Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    ),
  );
}

Widget creatDescrptionRow() {
  return const Padding(
    padding: EdgeInsets.only(
      bottom: 1,
      top: 1,
      left: 8,
    ),
    child: Row(
      children: [
        Expanded(
            child: Text(
          "It's gong to be a great birthday. We are gotng out for dinner at my favonte place. then watch a movie after we go to the gelateria for ice cream and espresso.",
          textAlign: TextAlign.left,
        ))
      ],
    ),
  );
}

Widget createWhtherIconColumn() {
  return const Padding(
    padding: EdgeInsets.only(bottom: 8, right: 6, left: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.sunny,
          color: Colors.yellow,
        )
      ],
    ),
  );
}

Widget createWhtherDescrptionColumn() {
  return Expanded(
    child: const Padding(
      padding: EdgeInsets.all(3),
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("80° Clear",
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
          Text(
            "4500 San Alpho Dr.ve. Dallas. TX United States",
            textAlign: TextAlign.left,
          )
        ],
      ),
    ),
  );
}

Widget creatGiftUsingRowsAndColumns() {
  return Row(
    children: [
      Column(
        children: [
          giftRow("Gift 01"),
          giftRow("Gift 05"),
        ],
      ),
      Column(
        children: [
          giftRow("Gift 02"),
          giftRow("Gift 06"),
        ],
      ),
      Column(
        children: [
          giftRow("Gift 03"),
          giftRow("Gift 07"),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: giftRow("Gift 04"),
          ),
        ],
      )
    ],
  );
}

Widget giftRow(String giftName) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, bottom: 8),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: Icon(
              Icons.card_giftcard,
              color: Colors.blue[200],
            ),
          ),
          Container(margin: const EdgeInsets.all(5), child: Text(giftName))
        ],
      ),
    ),
  );
}

Widget createAvataerAndIconsWidget() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("images/2.png"),
          ),
        ),
        Expanded(
          child: const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("images/3.png"),
          ),
        ),
        Expanded(
          child: const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("images/4.png"),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 100),
          child: const Column(
            children: [
              Icon(Icons.cake),
              Icon(Icons.star_border_outlined),
              Icon(Icons.music_note),
            ],
          ),
        )
      ],
    ),
  );
}
