import 'package:flutter/material.dart';
import 'package:submission_flutter/model/sneakers.dart';

class MainImage extends StatefulWidget {
  const MainImage({Key? key, required this.shoes}) : super(key: key);
  final Sneakers shoes;

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: FittedBox(
              child: ClipRRect(
                child: Image.network(widget.shoes.imageUrl[selectedItem]),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ...List.generate(
                      widget.shoes.imageUrl.length, (index) => SmallImage(index))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector SmallImage(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Container(
        margin: EdgeInsets.all(4),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedItem == index ?Colors.deepOrange : Colors.transparent, width: 3)
        ),
        child: ClipRRect(
          child: Image.network(widget.shoes.imageUrl[index]),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
