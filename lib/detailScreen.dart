import 'package:flutter/material.dart';
import 'package:submission_flutter/mainImage.dart';
import 'package:submission_flutter/model/sneakers.dart';

class DetailScreen extends StatelessWidget {
  int selectedImg = 0;
  late final Sneakers shoes;
  DetailScreen({required this.shoes});

  var fontSubjudul =
      TextStyle(fontFamily: 'PoppinsBold', fontWeight: FontWeight.bold);
  var fontDetail =
      TextStyle(fontFamily: 'PoppinsRegular', fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return WebDetail(context);
        } else {
          return MobileDetail(context);
        }
      },
    );
  }

  Scaffold MobileDetail(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                MainImage(shoes: shoes),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      shoes.nama,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PoppinsBold'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey, width: 4),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset(shoes.imageType, height: 50),
                        SizedBox(height: 8),
                        Text(shoes.type)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(shoes.imageBrand, height: 50),
                        SizedBox(height: 8),
                        Text(shoes.brand)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                shoes.harga,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PoppinsBold',
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Detail', style: fontSubjudul),
                  SizedBox(height: 4),
                  Text(
                    shoes.detail,
                    style: fontDetail,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Material', style: fontSubjudul),
                  SizedBox(height: 4),
                  Text(
                    shoes.material,
                    style: fontDetail,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PoppinsBold',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold WebDetail(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, 5), blurRadius: 5, color: Colors.grey),
          ],
        ),
        margin: EdgeInsets.all(24),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 55,
                      ),
                      child: SingleChildScrollView(child: MainImage(shoes: shoes))),
                    ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: Text(
                                      shoes.nama,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'PoppinsBold'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 24),
                                  child: Text(
                                    shoes.harga,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'PoppinsBold',
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 24),
                                  child: FavoriteButton(),
                                )
                              ],
                            ),
                            SizedBox(height: 16),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey, width: 4),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Image.asset(shoes.imageType, height: 50),
                                        SizedBox(height: 8),
                                        Text(shoes.type)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(shoes.imageBrand, height: 50),
                                        SizedBox(height: 8),
                                        Text(shoes.brand)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16, left: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Detail', style: fontSubjudul),
                                  SizedBox(height: 4),
                                  Text(
                                    shoes.detail,
                                    style: fontDetail,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Material', style: fontSubjudul),
                                  SizedBox(height: 4),
                                  Text(
                                    shoes.material,
                                    style: fontDetail,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Order',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
