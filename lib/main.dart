import 'package:flutter/material.dart';

void main() {
  runApp(const StromleserApp());
}

class StromleserApp extends StatelessWidget {
  const StromleserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StromleserScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StromleserScreen extends StatelessWidget {
  const StromleserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF17191D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17191D),
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
              },
              child: Container(
                  height: size.height * 0.036,
                  width: size.width * 0.18,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey[500],
                    size: 17,
                  )),
            ),
          ],
        ),
        title: Text(
          'MoeCellNicco',
          style: TextStyle(color: Colors.grey[500], fontSize: 17),
        ),
        actions: [
          GestureDetector(
            onTap: () {
            },
            child: Container(
              height: size.height * 0.036,
              width: size.height * 0.036,
              decoration: BoxDecoration(
                  color: const Color(0xFF2C2C2E),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.settings,
                color: Colors.grey[500],
                size: 17,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.045,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/image.png',
                height: size.height * 0.28,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Text(
                      'Ausgang',
                      style: TextStyle(color: Colors.grey[500], fontSize: 13),
                    ),
                    Text(
                      '--',
                      style: TextStyle(color: Colors.grey[500], fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.024),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.42,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.grey[500],
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: size.width * 0.42,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.watch_later_outlined,
                      color: Colors.grey[500],
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.04),
            const Divider(
              color: Color(0xFF2C2C2E),
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Energy',
                  style: TextStyle(color: Colors.grey[500], fontSize: 18),
                ),
                Container(
                  width: size.width * 0.32,
                  height: size.height * 0.042,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month_outlined,
                          color: Colors.grey[500], size: 18),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        '2024-10-25',
                        style: TextStyle(color: Colors.grey[500], fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.042),
            Text(
              'Consumption',
              style: TextStyle(color: Colors.grey[500], fontSize: 13),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              '0',
              style: TextStyle(color: Colors.grey[500], fontSize: 25),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/image2.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
