import 'package:flutter/material.dart';
import 'package:flutterapp1/Components/forstedGlass.dart';
import 'package:flutterapp1/Components/menuItems.dart';
import 'package:flutterapp1/Components/menuItemsss.dart';
import 'package:flutterapp1/Components/popularEventsCard.dart';
import 'package:flutterapp1/pages/eventDetails.dart';
// import 'package:popover/popover.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(
              height: 30,
            ),

            //Search Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: 382,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xfff3f3f3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Container(
                    width: 250,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search event...',
                      ),
                    ),
                  ),
                  Icon(Icons.tune),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            const Text("Popular Events",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),

            const SizedBox(
              height: 30,
            ),

            //Sliding Row

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularEventsCard(
                    colour: Color.fromRGBO(0, 194, 71, 1),
                    title: "Upcoming",
                    icon: Icons.calendar_month,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  PopularEventsCard(
                    colour: Color.fromRGBO(255, 187, 28, 1),
                    title: "Seminar",
                    //Update Icon
                    icon: Icons.network_cell,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  PopularEventsCard(
                    colour: Color.fromRGBO(255, 51, 51, 1),
                    title: "Outreach",
                    icon: Icons.spa,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  PopularEventsCard(
                    colour: Color.fromRGBO(0, 76, 232, 1),
                    title: "Virtual",
                    //Update Icon
                    icon: Icons.live_tv,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //Bird Picture

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              alignment: Alignment.center,
              height: 430,
              width: 320,
              child: Stack(
                children: [
                  GestureDetector(
                     onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EventDetails(),
                          ),
                        );
                      },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "lib/assets/images/bird.jpg",
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 15,
                    child: Stack(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(33, 33, 33, 0.7),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
            
                  //FrostedGlass
                  Positioned(
                    bottom: -5,
                    left: 25,
                    child: FrostedGlassBox(
                                  
                                  theWidth: 280,
                                  theHeight: 60,
                                  theChild: Container(
                                    padding: EdgeInsets.only(left:15,top:5, right: 15),
                                    child: Row(                 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Holiday Inn Hotel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text("Sunday, December 11",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ))
                        ],
                      ),
                      Container(
                        height: 32,
                        width: 71,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("Outreach",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      )
                    ],
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
    );
  }
}
