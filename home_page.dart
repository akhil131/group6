// ignore_for_file: prefer_const_constructors

import 'package:cms/main.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const home_page());
}

class home_page extends StatefulWidget {
  const  home_page ({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Bottom NavBar Demo',
      theme: ThemeData(
        fontFamily: 'SpaceMono',
            //selection colour
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
    const Page6(),
    const Page7(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black26,
      appBar: AppBar(
        actions: [
          Icon(Icons.search,
              color: Colors.white
          ),
          IconButton(
            icon:Icon(Icons.more_vert,
                color: Colors.white
            ),
            onPressed: (){
              setState(() {
                pageIndex = 4;
              });
            },
          )
        ],

        // title: Text(
        // "hello",
        // style: TextStyle(
        //    color: Theme.of(context).primaryColor,
        //  fontSize: 25,
        //   fontWeight: FontWeight.w600,
        // ),
        //),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.black26,
        //drawer

        child: ListView(                  //drawer items
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              child: Text('More',
                  style: TextStyle(
                      color: Colors.grey[600])

              ),
            ),
            ListTile(
              title: Text('Home',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Scan QR Code',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Transactions',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Wallet',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Edit profile',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('settings',
                  style: TextStyle(
                      color: Colors.grey[600])),
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Help',
                  style: TextStyle(
                      color: Colors.grey[600])
              ),
              onTap: () {
                setState(() {
                  pageIndex = 5;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About us',
                  style: TextStyle(
                  color: Colors.grey[600])
            ),
              onTap: () {
                setState(() {
                  pageIndex = 6;
                });
                Navigator.pop(context);           //drawer items
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out',
                style: TextStyle(
                    color: Colors.grey[600])
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp())   );     //drawer items
              },
            ),
          ],
        ),

      ),
      body:

      pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

    );
  }

  Container buildMyNavBar(BuildContext context) {

    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black26,          //bottom navigation bar
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(               //bottom navigation buttons
              Icons.home_filled,
              color: Colors.white,
              size: 35,

            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.currency_exchange,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.currency_exchange_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.qr_code,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,              //bottom navigation buttons
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  @override
  Widget build(BuildContext context) => Column(

      children:<Widget>[
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/cat.png'
              ),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),

     Container(
       padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      color: Colors.black26,
      child: TextField(
        style: TextStyle(color: Colors.white60),
        controller: startController,
        decoration:  InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            labelText: 'Closest Bus Terminal',
            labelStyle:TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Colors.grey[900]
        ),
      ),
    ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          color: Colors.black26,
          child: TextField(
            style: TextStyle(color: Colors.white60),
            controller: endController,
            decoration:  InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                labelText: 'Destination',
                labelStyle:TextStyle(color: Colors.white38),
                filled: true,
                fillColor: Colors.grey[900]
            ),
          ),
        ),
        Container(
            height: 50,
            width: 200,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(
              child: const Text('Done'),
              onPressed: () {
                debugPrint(startController.text);
                debugPrint(endController.text);

              },
            )
        ),
    ],
    );
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(                             //page2
      color: Colors.black26,
      child: Center(
        child: Text(
          "Wallet & Transactions",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(                               //page3
      color: Colors.black26,
      child: Center(
        child: Text(
          "QR Code Payment",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(                                 //page 4
      color: Colors.black26,
      child: Center(
        child: Text(
          "user information",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {                    //page5
    return Container(
      color: Colors.black26,
      child: Center(
        child: Text(
          "settings",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {                    //page6
    return Container(
      color: Colors.black26,
      child: Center(
        child: Text(
          "Help",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {                    //page7
    return Container(
      color: Colors.black26,
      child: Center(
        child: Text(
          "About us",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
