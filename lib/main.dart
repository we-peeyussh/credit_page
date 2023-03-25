import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class MyItem {
  final String dataAbove;
  final String dataBelow;

  MyItem(this.dataAbove, this.dataBelow);
}

final List<MyItem> items = [
  MyItem(
      '₹ 15,000 से ₹ 2,00,000 तक क्रेडिट प्राप्त करें', 'अपने व्हील्सआई एप पर'),
  MyItem(
      '₹ 15,000 से ₹ 2,00,000 तक क्रेडिट प्राप्त करें', 'अपने व्हील्सआई एप पर'),
  MyItem(
      '₹ 15,000 से ₹ 2,00,000 तक क्रेडिट प्राप्त करें', 'अपने व्हील्सआई एप पर'),
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credit"),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/st_credit_spiral_yellow_bg.png',
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            right: 10,
            left: 10,
            child: Image.asset(
              'assets/images/st_banner_alert_announcement_blue_offer.png',
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 15,
            right: 80,
            left: 80,
            child: Text(
              'WheelsEye Credit Offer',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 0,
            child: Image.asset(
              'assets/images/st_money_wallet_cash_hand_offer.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'सब्सक्रिप्शन शुल्क:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text.rich(TextSpan(
                  children: <TextSpan>[
                    new TextSpan(
                      text: '\₹ 1999',
                      style: new TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    new TextSpan(
                      text: ' \₹ 999 /-',
                      style: new TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 10),
                Text(
                  'वैधता 12 महीने',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 123,
            left: 130,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green, // Replace with the color you want
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '  50% छूट  ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 180, bottom: 72),
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'क्रेडिट से आपको मिलने वाले लाभ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 120, top: 20),
                                child: Text(
                                  items[index].dataAbove,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 25, bottom: 20),
                                child: Text(
                                  items[index].dataBelow,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueAccent.shade400),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(200, 60)),
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Credit Application In Process",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.green,
                  );
                },
                child: Text(
                  'Apply For Credit',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
