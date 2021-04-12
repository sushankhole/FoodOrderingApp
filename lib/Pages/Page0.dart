import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
//
        SizedBox(height: 15.0),
        CarouselSlider(
          height: 220.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slide1.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slide2.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/slide3.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Text("   Offers For You !!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            )),
        SizedBox(height: 15.0),
        CarouselSlider(
          height: 250.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(minutes: 1),
          viewportFraction: 0.8,
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/mis.png'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/oraj.png'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/drw.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/oraj.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Image.asset(
          'assets/offlo.jpg',
          width: 500,
          height: 250,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
