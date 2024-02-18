import 'package:cardify/components/elevatedbtn.dart';
import 'package:flutter/material.dart';

class FaceDone extends StatelessWidget {
  const FaceDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            Container(
            width: 390,
            height: 700,
            decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg2.png'), 
              fit: BoxFit.cover,
            ),
          ),
            child:
            Column(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  margin:  const EdgeInsets.fromLTRB(258, 20, 0, 224),
                  width:  50,
                  height:  50,
                  child:
                  Image.asset('assets/cross.png',
                  width:  30,
                  height:  30,
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.fromLTRB(0, 0, 30, 150),
                  width:  136,
                  height:  136,
                  child:
                  Image.asset('assets/authdone.png',
                    width:  136,
                    height:  136,
                  ),
                ),
                const SizedBox(height: 20),
                CustomBottomButton(
                  onPressed:(){},
                  text:'Done'
                  ),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}