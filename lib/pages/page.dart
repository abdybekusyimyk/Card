import 'package:bet_cart/wigets/botton.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 22, // Image radius
              backgroundImage: AssetImage('assets/images/ddd.jpg'),
            ),
            const SizedBox(
              width: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(color: Color(0xff122745), fontSize: 22),
                    children: [
                  TextSpan(
                      text: 'Hello,',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff122745),
                      )),
                  TextSpan(
                    text: ' Janth',
                  ),
                ]))
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              size: 28,
            ),
            color: const Color(0xff122745),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My wallet',
              style: TextStyle(color: Color(0xff122745), fontSize: 28),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 450,
                    height: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xff122745),
                        borderRadius: BorderRadius.circular(45)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Total Balance',
                          style: TextStyle(fontSize: 20, color: Colors.white60),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '6,354 MLR',
                          style: TextStyle(fontSize: 45, color: Colors.amber),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "Eq: 10,000",
                          style: TextStyle(color: Colors.white60, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                            label: const Text(
                              "Top up",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 33, 103, 215),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100))),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1.1,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: const BoxDecoration(
                          color: Color(0xffFBBC5B),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(45),
                              topLeft: Radius.circular(100))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Operations',
              style: TextStyle(color: Color(0xff122745), fontSize: 28),
            ),
            Row(
              children: [
                NewWidget(
                  icon: Icons.transfer_within_a_station,
                  text: 'Transfer',
                ),
                NewWidget(
                  icon: Icons.phone,
                  text: 'Airtime',
                ),
                NewWidget(
                  icon: Icons.payment,
                  text: 'Pay Bills',
                ),
                NewWidget(
                  icon: Icons.qr_code_scanner,
                  text: 'Qr Pay',
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Transactions',
              style: TextStyle(fontSize: 28, color: Color(0xff172847)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff000000),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.hd,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Flight Ticket',
                          style:
                              TextStyle(color: Color(0xff000000), fontSize: 18),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '23 Feb 2020',
                          style: TextStyle(
                              color: Color.fromARGB(255, 95, 93, 93),
                              fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 65,
                  height: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 227, 225, 225),
                      borderRadius: BorderRadius.circular(9)),
                  child: const Center(
                    child: Text(
                      '-20 MLR',
                      style: TextStyle(color: Color(0xff000000), fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              size: 32,
              color: Colors.black,
            ),
            label: '',
            backgroundColor: Colors.white.withOpacity(0.7),
          ),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.markunread,
                size: 32,
                color: Color.fromARGB(255, 155, 147, 147),
              ),
              label: '',
              backgroundColor: Colors.blue),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 32,
                color: Color.fromARGB(255, 155, 147, 147),
              ),
              label: '',
              backgroundColor: Colors.redAccent),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 32,
                color: Color.fromARGB(255, 155, 147, 147),
              ),
              label: '',
              backgroundColor: Colors.teal),
        ],
      ),
    );
  }
}
