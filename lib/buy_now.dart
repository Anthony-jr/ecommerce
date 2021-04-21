import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  final _acnumber = TextEditingController();
  final _accvv = TextEditingController();
  final _expire = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.blueGrey,
            letterSpacing: 1.4,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/nmb.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _fieldArea(
                      context,
                      'Enter card number',
                      'Card Number',
                      _acnumber,
                      Icon(
                        Icons.format_list_numbered,
                        color: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 20),
                    _fieldArea(
                      context,
                      'Enter expire date MM/DD',
                      'Expire Date',
                      _expire,
                      Icon(
                        Icons.format_list_numbered,
                        color: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 20),
                    _fieldArea(
                      context,
                      'Enter CVV ',
                      'CVV',
                      _accvv,
                      Icon(
                        Icons.format_list_numbered_rtl_outlined,
                        color: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '*CVV are three digits located at the back of card',
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                child: Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Items',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        '\$${'24,000'}',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 18),
              child: Container(
                height: MediaQuery.of(context).size.height * .06,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'continue'.toUpperCase(),
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
    );
  }

  Widget _fieldArea(BuildContext context, String hint, String label,
      TextEditingController controller, Icon icon) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      validator: (input) => input.length < 4 ? "Invalid credential" : null,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Color(0xff154863),
          ),
          gapPadding: 10,
        ),
        prefixIcon: icon,
      ),
    );
  }
}
