import 'package:flutter/material.dart';
import 'package:news/Screens/home_screen.dart';
import 'package:news/constants.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              //head
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const HomeScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 28,
                      color: titleText,
                    ),
                  ),
                  const Text(
                    'Entertainmet',
                    style: TextStyle(
                      color: titleText,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(),
                ],
              ),

              //News title
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'DICE has announced that the seventh season of Battlefield 2042 will include two new maps instead of the traditional one',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: titleText,
                  ),
                ),
              ),

              //News image
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Image.asset(
                      'img/new.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //source name

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'img/playground.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        const Text(
                          'Playground',
                          style: TextStyle(
                            fontSize: 18,
                            color: titleText,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                        size: 30,
                        color: titleText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      'DICE has announced that the seventh season of Battlefield 2042 will include two new maps instead of the traditional one. In addition to the news that two maps will appear in the game, two major new updates have been announced. On January 30, Update 3.3 will be released, including quality of life improvements, including the Portal Sqaud Viewer modifier and Improved Map Rotations. Update 6.4 will be released on February 20 and will include Permanent Server Updates, Improved Aircraft Collisions and HUD Vehicle Gunner Directions.',
                      style: TextStyle(fontSize: 14, color: text),
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
