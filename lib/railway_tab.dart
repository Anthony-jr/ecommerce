import 'package:ecommerce/railway_info.dart';
import 'package:flutter/material.dart';

class RailwayTab extends StatefulWidget {
  @override
  _RailwayTabState createState() => _RailwayTabState();
}

class _RailwayTabState extends State<RailwayTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            RailwayScreen(
              name: 'BOEING COMPANY',
              country: 'USA',
              description:
                  'This is an American multinational corporation that designs, manufactures, and sells airplanes, rotorcraft, rockets, satellites, telecommunications equipment, and missiles worldwide.',
              image: AssetImage('assets/images/boeing.jpeg'),
              flags: AssetImage('assets/flags/united-states.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'Simiens mobility',
              country: 'CHINA',
              description:
                  'overhead crane manufacturer, Street Crane Company, installed the 42.9 metres long crane to handle the seven-section articulated trams weighing 56 tonnes per vehicle. Easy passenger access is provided by a low floor that is just 300mm from the rail. The overhead crane is essential for access and maintenance of the roof pantographs and to service the pods on the roof containing air-conditioning and other key electrical equipment.The 19 metre crane, with a 5.5 metre height of lift, spans three tracks within the depot and runs almost the full length of the building to give maximum flexibility in transporting materials.',
              image: AssetImage('assets/images/simiens.jpeg'),
              flags: AssetImage('assets/flags/china.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'maersk',
              country: 'CHINA',
              description:
                  'Deals with  Heavy Transport, the company is responsible for the marketing, commercial activities, engineering and project',
              image: AssetImage('assets/images/maersk.jpeg'),
              flags: AssetImage('assets/flags/china.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'Betchtel Company',
              country: 'USA',
              description:
                  'Deals with a global engineering, construction and project management company. The company works on projects that range from civil infrastructure, power, telecommunications and government services.',
              image: AssetImage('assets/images/brent.jpeg'),
              flags: AssetImage('assets/flags/united-states.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'Yutong',
              country: 'CHINA',
              description:
                  'This is a Chinese manufacturer of commercial vehicles, especially electric buses,.Yutong also covers areas of construction machinery, real estate, and other investment businesses.',
              image: AssetImage('assets/images/yutong.jpeg'),
              flags: AssetImage('assets/flags/china.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'Champions windows',
              country: 'USA',
              description:
                  'Deals with manufacturing of windows, doors and all of airport equipments',
              image: AssetImage('assets/images/champ.jpeg'),
              flags: AssetImage('assets/flags/united-states.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: "China CCECC's",
              country: 'CHINA',
              description:
                  'Deals with  international construction contracting, design and consulting services, economic and technical co-operation, and trading services. Among these activities, all kinds of construction contracting have been our major undertakings for over 40 years.',
              image: AssetImage('assets/images/ccecc.jpeg'),
              flags: AssetImage('assets/flags/china.png'),
            ),
            // SizedBox(height: 5),
            RailwayScreen(
              name: 'SOUTH KOREA HHI',
              country: 'SOUTH KOREA',
              description:
                  'SOUTH KOREA HHI has four core business divisions: Shipbuilding, Offshore & Engineering, Industrial Plant & Engineering, and Engine & Machinery. HHI also has five non-core related subsidiaries: Hyundai Electric & Energy Systems, Hyundai Construction Equipment, Hyundai Robotics, Hyundai Heavy Industries Green Energy, and Hyundai Global Service.',
              image: AssetImage('assets/images/champ.jpeg'),
              flags: AssetImage('assets/flags/south-korea.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class RailwayScreen extends StatelessWidget {
  final String description;
  final String name;
  final String country;
  final ImageProvider image;
  final ImageProvider flags;

  RailwayScreen(
      {Key key,
      @required this.name,
      @required this.country,
      @required this.description,
      @required this.image,
      @required this.flags})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => RailwayIndustry(
                      name: name,
                      country: country,
                      description: description,
                      image: image,
                      flags: flags,
                    )));
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: MediaQuery.of(context).size.height * .4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
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
            Positioned(
              bottom: 10,
              left: 0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .8,
                        child: Text(
                          name.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width * .8,
                        child: Text(
                          description,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: flags,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            country,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white60,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
