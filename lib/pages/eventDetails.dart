import 'package:flutter/material.dart';
import 'package:flutterapp1/Components/hashTagCard.dart';
import 'package:flutterapp1/main.dart';
import 'package:flutterapp1/pages/homePage.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       
      AppBar(
        centerTitle: true,
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ),
                        );
                      },
          child: Container(
            margin: EdgeInsetsDirectional.only(start: 20),
            height: 48,
            width: 48,
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Colors.white,
                  ),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(16, 16, 16, 0.6)),
                ),
              ],
            ),
          ),
        ),
        title: Center(
          child: const Text(
            "About this event",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          
          Container(
                      margin: EdgeInsetsDirectional.only(end: 10),

            height: 48,
            width: 48,
            child: Stack(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("lib/assets/images/Ticket.png"),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(16, 16, 16, 0.6)),
                    ),
                  ],
                ),
          ),
            ],
       ),

      
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              children: [
                SizedBox(height: 30,),
                //image
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  width: 374,
                  height: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("lib/assets/images/bitcoin.jpg",
                        fit: BoxFit.cover),
                  ),
                ),

                //title

                const SizedBox(
                  height: 30,
                ),
                const Text("Introduction to Crypto Trading",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(
                  height: 20,
                ),

                //description

                const Text(
                    "This Beginners Masterclass is for Anyone serious about making money online by investing in the Crypto and Forex market ...",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  height: 20,
                ),

                //tags

                const Row(
                  children: [
                    HashTagCard(
                      title: "#Bitcoin",
                    ),
                    HashTagCard(
                      title: "#Forex",
                    ),
                    HashTagCard(
                      title: "#PassiveIncome",
                    ),
                  ],
                ),

                //date

                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    SizedBox(width: 10),
                    Text("Saturday, December 24",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left:35),
                  child: const Text("Starts at: 7:00PM",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(16, 16, 16, 0.6))),
                ),

                //bottom button
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              width: double.infinity,
              height: 64,
              decoration: const BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text("Book A ticket",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
