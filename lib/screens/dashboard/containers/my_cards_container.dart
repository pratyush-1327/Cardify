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
        const Text(
          "My Cards",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          height: 10.0,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0, // Specify your desired height
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 157 / 250,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            CardComponent(
              color: Pallete.blue.withOpacity(0.68),
            ),
            CardComponent(color: Pallete.purple.withOpacity(0.51)),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: i,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OptionButton(icon: Assets.payment, text: "Payment"),
              OptionButton(icon: Assets.send, text: "Send"),
              OptionButton(icon: Assets.recieve, text: "Recieve"),
              OptionButton(icon: Assets.more, text: "More")
            ],
          ),
        )
      ],
    );
  }
}
