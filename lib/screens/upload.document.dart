import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadDocument extends StatefulWidget {
  static const uploadDocumentRoute = "/uploaddocumnet";
  const UploadDocument({super.key});

  @override
  State<UploadDocument> createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
  String? selectedValue;
  List<String> items = [
    "Aaddhar",
    "Voter Id",
    "PAN",
    "Passport",
    "Driving Licence"
  ];
  @override
  Widget build(BuildContext context) {
    print('called');
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/bg2.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'ID Proof',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 127, 127, 127),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 127, 127, 127),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/bg2.png",
                            ),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.transparent,
                      ),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                      iconSize: 30,
                      iconEnabledColor: Color.fromARGB(226, 255, 63, 162),
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/bg2.png",
                            ),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      offset: const Offset(0, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all(4),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
                Container(
                  height: 333,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: const Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 4, color: Color(0xFFFF3FA2)),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: InkWell(
                      radius: 100,
                      borderRadius: BorderRadius.circular(35),
                      splashFactory:
                          InkSparkle.constantTurbulenceSeedSplashFactory,
                      onTap: () {},
                      splashColor: const Color(0xFFFF3FA2).withOpacity(0.4),
                      child: const Icon(Icons.add_rounded,
                          size: 150, color: Color(0xFFFF3FA2))),
                ),
                Text(
                  'Note- For faster document verification, a DigiLocker® approved document is preferred.',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    height: 0,
                  ),
                ),
              ]),
        ),
        bottomNavigationBar: Container(
          height: 53,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 67, vertical: 20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.00, -0.05),
              end: Alignment(-1, 0.05),
              colors: [Color(0xFF4564FF), Color(0x6BFF3FA2)],
            ),
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 10,
                offset: Offset(1, 5),
                spreadRadius: 0,
              )
            ],
          ),
          child: InkWell(
            radius: 150,
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
            onTap: () {},
            borderRadius: BorderRadius.circular(35),
            splashColor: Colors.white,
            child: Center(
              child: Text(
                'Submit',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
