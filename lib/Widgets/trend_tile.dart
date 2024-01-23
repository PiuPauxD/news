import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class TrendTile extends StatelessWidget {
  final String trendImage;
  final String trendSource;
  final String trendText;
  final String date;
  const TrendTile(
      {super.key,
      required this.trendImage,
      required this.trendSource,
      required this.trendText,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 250,
          child: Stack(
            children: [
              Image.asset(
                trendImage,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          trendSource,
                          style: const TextStyle(
                            fontSize: 16,
                            color: titleText,
                          ),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 16,
                            color: titleText,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        trendText,
                        style: const TextStyle(
                          fontSize: 14,
                          color: text,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
