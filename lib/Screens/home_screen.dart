import 'package:flutter/material.dart';
import 'package:news/Widgets/Search.dart';
import 'package:news/Widgets/category_list.dart';
import 'package:news/Widgets/recomendation_news.dart';
import 'package:news/Widgets/trend_tile.dart';
import 'package:news/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List trendImage = [
    'img/first.jpg',
    'img/second.jpg',
    'img/third.jpg',
    'img/fourth.jpg',
    'img/fivith.jpg',
  ];

  List trendSource = [
    'Bloomberg',
    'Playground',
    'BBC News',
    'RBK',
    'ONT',
  ];

  List trendText = [
    'DICE has annonced that the seventh season of Battlefield 2042 will include two new maps instead of the traditional one',
    'Why is the world investing so much in semiconductors?',
    'Bitcoin: Crypto fans can now invest in exchange-traded funds - but what are they?',
    'New material found by AI could reduce lithium use in batteries',
    'Animators say AI is not going to get you an Oscar',
  ];

  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              //head
              const Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: titleText),
                    bottom: BorderSide(width: 1, color: titleText),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Today's News",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: titleText,
                          ),
                        ),
                        Text(
                          "Thuesday, Jan, 11, 2024",
                          style: TextStyle(
                            fontSize: 14,
                            color: text,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_outlined,
                        color: text,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              //search Container
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  children: [
                    const SearchContainer(),
                    const Padding(
                      padding: EdgeInsets.only(left: 14),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5.5,
                      height: 40,
                      decoration: BoxDecoration(
                        color: searchButton,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: text,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //categories
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return const CategoryList(categoryName: 'All');
                    },
                  ),
                ),
              ),

              //TrendNews
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return TrendTile(
                      trendImage: trendImage[index],
                      trendSource: trendSource[index],
                      trendText: trendText[index],
                    );
                  },
                ),
              ),

              //Recomendation News
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Recomendation news',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: titleText,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: 140,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return RecomendationNews(
                        newsImage: trendImage[index],
                        sourceNews: trendSource[index],
                        infoNews: trendText[index],
                      );
                    },
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
