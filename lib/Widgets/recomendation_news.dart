import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class RecomendationNews extends StatelessWidget {
  final String newsImage;
  final String sourceNews;
  final String infoNews;
  const RecomendationNews(
      {super.key,
      required this.newsImage,
      required this.sourceNews,
      required this.infoNews});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Image.asset(
                        newsImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sourceNews,
                        style: const TextStyle(
                          fontSize: 16,
                          color: titleText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              infoNews,
                              style: const TextStyle(
                                fontSize: 8,
                                color: text,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:
                    Icon(Icons.more_horiz_outlined, size: 30, color: titleText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
