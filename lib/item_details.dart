import 'package:ecommerce/add_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String image;

  DetailScreen({
    Key key,
    @required this.name,
    @required this.image,
  }) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // double payment = 240;
  // double = payment * number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    height: MediaQuery.of(context).size.height * .9,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 170, left: 20, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 45,
                              letterSpacing: 1.2,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Tools',
                            style: TextStyle(color: Colors.black38),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: 'price\n'),
                                TextSpan(
                                    text: '\$${240}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        )),
                              ],
                            ),
                          ),
                          Text(
                            'Colors',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SlideDots(
                                    color: Theme.of(context).primaryColor,
                                    isSelected: true,
                                  ),
                                  SlideDots(
                                    color: Colors.yellow,
                                    isSelected: false,
                                  ),
                                  SlideDots(
                                    color: Colors.grey,
                                    isSelected: false,
                                  ),
                                ],
                              ),
                              CartCounter(),
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Text(
                              '''10th Gen Intel Core i5,processor,1.1GHz up to 3.5GHz 8GB of 3733MHz LPDDR4X Memory, 512GB SSD storage Intel Iris Plus Graphics Thunderbolt 3 Ports 2 Backlit Keyboard – US English Retina Display WithTouch ID sensor''',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(height: 200),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add_shopping_cart,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    child: FlatButton(
                                      color: Theme.of(context).primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'BUY NOW',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon:
                                    Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              IconButton(
                                icon: Icon(Icons.shopping_cart,
                                    color: Colors.white),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => AddCart(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemNo = 50;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            onPressed: () {
              if (itemNo > 50) {
                setState(() {
                  itemNo -= 50;
                });
              }
            },
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            itemNo.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlineButton(
            onPressed: () {
              setState(() {
                itemNo += 50;
              });
            },
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }
}

class SlideDots extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const SlideDots({
    Key key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: EdgeInsets.only(
        top: 5,
        right: 5,
      ),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
