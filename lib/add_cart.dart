import 'package:ecommerce/buy_now.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCart extends StatefulWidget {
  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              ItemSelected(
                name: 'Robbers',
                amount: '1,440',
                items: '60',
                image: 'assets/tools/robbers.jpeg',
                company: 'Yutong',
              ),
              SizedBox(height: 20),
              ItemSelected(
                name: 'Overhead crane',
                amount: '14,400',
                items: '600',
                image:
                    'assets/tools/WhatsApp Image 2021-03-23 at 19.18.26.jpeg',
                company: 'SOUTH KOREA HHI',
              ),
              SizedBox(height: 20),
              ItemSelected(
                name: 'axies',
                amount: '1,440',
                items: '250',
                image: 'assets/tools/axies.jpeg',
                company: 'Betchtel Company',
              ),
              SizedBox(height: 20),
              ItemSelected(
                name: 'Robbers',
                amount: '1,440',
                items: '60',
                image: 'assets/tools/robbers.jpeg',
                company: 'Yutong',
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Total  ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$${'120,000'}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 18),
                child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => BuyScreen()));
                    },
                    child: Text(
                      'PROCEED TO BUY',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemSelected extends StatelessWidget {
  final String name;
  final String amount;
  final String image;
  final String items;
  final String company;
  ItemSelected({this.name, this.image, this.company, this.amount, this.items});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.withOpacity(.2),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      width: 150,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name.toUpperCase(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          company.toUpperCase(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Total items ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              items,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Total Amount: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\$$amount',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    onPressed: () {})
              ],
            ),
          )),
    );
  }
}
