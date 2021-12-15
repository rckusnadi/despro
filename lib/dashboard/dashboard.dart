import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Title 1",
      subtitle: "Subtitle 1",
      event: "Function",
      img: "");

  Items item2 = new Items(
    title: "Title 2",
    subtitle: "Subtitle 2",
    event: "Function",
    img: "",
  );
  Items item3 = new Items(
    title: "Title 3",
    subtitle: "Subtitle 3",
    event: "Function",
    img: "",
  );
  Items item4 = new Items(
    title: "Title 4",
    subtitle: "Subtitle 4",
    event: "Function",
    img: "",
  );
  Items item5 = new Items(
    title: "Title 5",
    subtitle: "Subtitle 5",
    event: "Function",
    img: "",
  );
  Items item6 = new Items(
    title: "Title 6",
    subtitle: "Subtitle 6",
    event: "Function",
    img: "",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img, width: 42),
                SizedBox(height: 14),
                Text(
                  data.title,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  data.subtitle,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  data.event,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}