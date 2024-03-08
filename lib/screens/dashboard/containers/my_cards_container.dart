import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:cardify/screens/dashboard/widgets/card.dart';
import 'package:cardify/screens/dashboard/widgets/optionsButton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "My Cards",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 250, // Specify your desired height
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 157 / 250,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            const CardComponent(color: Pallete.darkBlue, bgImage: Assets.cardBg1),
            const CardComponent(color: Pallete.pink),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: i,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OptionButton(icon: Assets.payment, text: "Payment"),
              SizedBox(
                width: 20,
              ),
              OptionButton(icon: Assets.send, text: "Send"),
              SizedBox(
                width: 20,
              ),
              OptionButton(icon: Assets.recieve, text: "Recieve"),
              SizedBox(
                width: 20,
              ),
              OptionButton(icon: Assets.more, text: "More")
            ],
          ),
        )
      ],
    );
  }
}
