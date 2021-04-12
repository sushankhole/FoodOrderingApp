import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 0),
            child: Text(
              '      Menu ='
              '\n      \n      Mango Daiquiri \n      Rs. 140.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Combine half the mango, half the rum, half the vodka, 3/4 cup lemon juice and 1/2 cup sugar syrup in a blender. Blend until smooth. Add half the crushed ice. Blend until just combined. Pour into 6 cocktail glasses and serve immediately. Transparent. Semi-Transparent. Repeat using remaining ingredients.',
        // '\n \n मिसळ पाव कडधान्यांची रस्सा असलेली उसळ, पोहे, त्यावर भेळ व फरसाण फरसाण घालून पावासोबत खाल्ला जात असलेला पदार्थ. हा पदार्थ तसा आधुनिक पाककृती आहे. परंतु मसालेदार चव व सहजतेने उपलब्धता यामुळे प्रसिद्ध आहे. यात कोल्हापूरी मिसळ, पुणेरी मिसळ,नाशिक मिसळ, दही मिसळ,नादखुळा मिसळ,गुजराती मिसळ,फराळी मिसळ इत्यादी प्रकारही केले जातात.',
        softWrap: true,
      ),
    );

    Widget buttonsection = Container(
      padding: const EdgeInsets.all(5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text('Add To Cart'),
        onPressed: () {},
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text("Mango  Daiquiri"),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/mangda.png',
            width: 500,
            height: 250,
            fit: BoxFit.fill,
          ),
          titleSection,
          textSection,
          buttonsection,
        ],
      ),
    );
  }
}
