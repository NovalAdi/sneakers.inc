import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter/detailScreen.dart';
import 'package:submission_flutter/model/sneakers.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sneakers.INC'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return List();
          } else if (constraints.maxWidth <= 1200) {
            return GridList(gridCount: 4);
          } else {
            return GridList(gridCount: 6);
          }
        },
      ),
    );
  }
}

class List extends StatelessWidget {
  final img = [
    'https://videohive.img.customer.envatousercontent.com/files/320417885/Artboard%201.png?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=6651cd7a814505316861b15407e82655',
    'https://img.okezone.com/content/2021/04/12/194/2393505/ini-deretan-brand-sneakers-keren-diskon-sampai-50-10-hanya-di-the-f-thing-TvbEFQ0TWK.jpg',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/new-arrivals-trends-discount-offer-on-shoes-p-design-template-1c2c3f8437823d580ecb9dba18a0ed71_screen.jpg?ts=1607504993',
    'https://www.blibli.com/page/wp-content/uploads/Jakarta-Sneaker-Day_Banner-KT.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider.builder(
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height),
            itemBuilder: (context, index, realindex) {
              final image = img[index];
              return ImageCarousel(context, image, index);
            },
            itemCount: img.length,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.33, left: 16),
          child: Text(
            'Sneakers List',
            style: TextStyle(
                fontFamily: 'PoppinsBold',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.40,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              final Sneakers shoes = SneakersList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(shoes: shoes);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 8.0,
                  ),
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 5,
                            color: Colors.grey,
                          ),
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            child: Image.network(shoes.imageUrl[0]),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  shoes.nama,
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  shoes.harga,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'PoppinsBold',
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  shoes.type,
                                  style: TextStyle(
                                    fontFamily: 'PoppinsRegular',
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: SneakersList.length,
          ),
        ),
      ],
    );
  }

  Widget ImageCarousel(BuildContext context, String image, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 3),
      ),
      margin: EdgeInsets.only(right: 8, left: 8, top: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          image,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: 10,
        ),
      ),
    );
  }
}

class GridList extends StatelessWidget {
  late final int gridCount;
  GridList({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.63,
      crossAxisCount: gridCount,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: SneakersList.map((data) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(shoes: data);
            }));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  data.imageUrl[0],
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 8),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        data.nama,
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        maxFontSize: 16,
                        minFontSize: 4,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      AutoSizeText(
                        data.harga,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PoppinsBold',
                          color: Colors.deepOrange,
                        ),
                        maxFontSize: 14,
                        minFontSize: 8,
                      ),
                      SizedBox(height: 4),
                      AutoSizeText(
                        data.type,
                        style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                        ),
                        maxFontSize: 12,
                        minFontSize: 8,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}