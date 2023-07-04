import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/1.2.1.%20ModeChanagerProvider.dart';
import '../../widgets/1. appbar.dart';
import '../../widgets/2. appBarDrawer.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  List shortFeed = [
    {
      'id': '1',
      'path': 'assets/images/dw1.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw2.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw3.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw4.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw5.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw6.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw7.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw8.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw9.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw10.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw11.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw12.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
    {
      'id': '1',
      'path': 'assets/images/dw13.jpg',
      'title': 'Title',
      'uploader': 'uploaderName'
    },
  ];

  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDetails(),
      drawer: const AppBarDrawer(),
      body: Consumer<ModeChanger>(
        builder: (context, value, child) {
          return CarouselSlider(
            items: shortFeed.map((e) {
              return Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              offset: const Offset(4, 5),
                              blurRadius: 2,
                              spreadRadius: 2)
                        ],
                        image: DecorationImage(
                            image: AssetImage(e['path']), fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['title'].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/person.jpg'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                e['uploader'].toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 35,
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  value.setLikesCon();
                                  value.likesCon
                                      ? value.addLikes()
                                      : value.removeLikes();
                                  setState(() {});
                                },
                                icon: value.likesCon
                                    ? const Icon(
                                        Icons.thumb_up,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    : const Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                              ),
                              Text(
                                value.likes.toString(),
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            }).toList(),
            carouselController: carouselController,
            options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: false,
                aspectRatio: 0.56,
                viewportFraction: 1,
                scrollDirection: Axis.vertical,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          );
        },
      ),
    );
  }
}
