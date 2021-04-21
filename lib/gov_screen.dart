import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GovScreen extends StatefulWidget {
  @override
  _GovScreenState createState() => _GovScreenState();
}

class _GovScreenState extends State<GovScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemList(
                company: 'Angola Investment Center',
                country: 'Angola',
                desc:
                    'Angola Government like to invite investors on Diamond opportunities as the fifth biggest producer of the world in the year of 2006. Lunda Norte area main geologists of the world estimate that the alluvial has the total up of 130 Millions of carats..',
                logo: AssetImage('assets/flags/angola.png'),
                image: AssetImage('assets/gov/angola.jpeg'),
                view: "30",
                likes: '212',
              ),
              ItemList(
                company: 'Ghana Investment Promotion Center (GIPC)',
                country: 'Ghana',
                desc:
                    'GIPC Like to invite investors on mobile sim card opportunities, telecom insiders estimate the mobile phone ownership is just approaching 16 Million. But telecom investors alike will see the greatest growth in Data Service',
                logo: AssetImage('assets/flags/ghana.png'),
                image: AssetImage('assets/gov/ghana.jpeg'),
                view: "15",
                likes: '2',
              ),
              ItemList(
                company: 'Nigeria Sovereign Investement Authority (NSIA)',
                country: 'Nigeria',
                desc:
                    'In a year Nigeria spends 22 Billion dollar on food importation Nigeria Government declare opportunity of any investors. 6.5 Million hectors for perment crops of coffe and industrial export Area of Plateau State',
                logo: AssetImage('assets/flags/nigeria.png'),
                image: AssetImage('assets/gov/nigeria.jpeg'),
                view: "3",
                likes: '15',
              ),
              ItemList(
                company: 'Cuba Oil Union (CUPET)',
                country: 'Cuba',
                desc:
                    '(CUPET) Has discovery of several dozens of extra heavy oil fields at North Cuba whose estimates exceed 15 Billion barrels of oil we invite all private energy sectors to negotiate about this opportunity',
                logo: AssetImage('assets/flags/cuba.png'),
                image: AssetImage('assets/gov/cuba.jpeg'),
                view: "38",
                likes: '12',
              ),
              ItemList(
                company: 'Tanzania Investment Center (TIC)',
                country: 'Tanzania',
                desc:
                    '(CUPET) Has discovery of several dozens of extra heavy oil fields at North Cuba whose estimates exceed 15 Billion barrels of oil we invite all private energy sectors to negotiate about this opportunity',
                logo: AssetImage('assets/flags/tanzania.png'),
                image: AssetImage('assets/gov/tz.jpeg'),
                view: "52",
                likes: '211',
              ),
              ItemList(
                company: 'Tanzania Investment Center (TIC)',
                country: 'Tanzania',
                desc:
                    'Tanzanian government has confirmed that about 2.17 trillion cubic feet (tcf) of natural gas reserves have been discovered in the coast region. More investors can negotiate with us on this opportunity',
                logo: AssetImage('assets/flags/tanzania.png'),
                image: AssetImage('assets/gov/tz22.jpeg'),
                view: "7",
                likes: '21',
              ),
              ItemList(
                company: 'Nigeria investment Authority',
                country: 'Nigeria',
                desc:
                    'Nigeria investement Authority like to share opportunoties of investement on Uranium..Uranium has several important industrial applications, but its principal use is as a fissionable material to produce nuclear fuel for electricity generation. ... As a result, uranium has become an increasingly valuable commodity in world markets.',
                logo: AssetImage('assets/flags/nigeria.png'),
                image: AssetImage('assets/gov/nigeria2.jpeg'),
                view: "13",
                likes: '34',
              ),
              ItemList(
                company: 'Ambassador John Kagusha',
                country: 'Tanzania',
                desc:
                    'Did you know Tanzanite is the gemstone investment opportunity of our generation and only find in TANZANIA".?..  TIA Tanzania invite all investors to invest in Tanzanite gemstone. Tanzanite is uniquely trichroic. This means that in its rough form, it radiates three different colors from each of its crystallographic axes: blue, violet and red. Once cut and polished, tanzanite ranges from electric violets to vibrant blues, deep royals, and rich indigos.',
                logo: AssetImage('assets/flags/tanzania.png'),
                image: AssetImage('assets/gov/tz3.jpeg'),
                view: "3",
                likes: '22',
              ),
              ItemList(
                company: 'Ethiopia Investement Comission',
                country: 'Ethiopia',
                desc:
                    'EIC in Ethiopia like to declare an opportunies area on BIOMETHANATION OF FLESHINGS AND SLUDGE..ETHIOPIA is the first largest livestock population on the African continent comprising 25 million cattle, 98% of which are indigenous breeds, complemented by 16.7 million goats, 8 million sheep, 2.4 million pigs, and 36 million chickens.. We assure investors safety and good facilities',
                logo: AssetImage('assets/flags/belgium.png'),
                image: AssetImage('assets/gov/sijui.jpeg'),
                view: "111",
                likes: '22',
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final String company;
  final String country;
  final String desc;
  final String view;
  final String likes;
  final ImageProvider logo;
  final ImageProvider image;

  ItemList(
      {this.company,
      this.country,
      this.desc,
      this.view,
      this.likes,
      this.logo,
      this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .08,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: logo,
                    radius: 20,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        company,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        country,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: image,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    Text(
                      likes + 'K Comments',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      view + 'K Views',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                Text(
                  desc,
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.height * .3,
                            child: TextField(
                              textInputAction: TextInputAction.go,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'write comment',
                                hintStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * .04,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.paperPlane,
                            size: 18,
                            color: Colors.blueGrey,
                          ),
                          onPressed: null)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
