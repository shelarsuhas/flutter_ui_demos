import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage3 extends StatelessWidget {
  static final String path = "lib/src/login/pages/detail_page_3.dart";
  final Color primaryColor = Color(0xffF43F3F);
  final Color backgroundColor = Color(0xff2F3035);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppBar appBar = AppBar();
    return Theme(
      data: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColor,
        backgroundColor: backgroundColor,
        iconTheme: IconThemeData(
          color: primaryColor,
          size: 16,
        ),
      ),
      child: Scaffold(
        appBar: appBar,
        backgroundColor: backgroundColor,
        body: Container(
          width: size.width,
          height: size.height -
              appBar.preferredSize.height -
              MediaQuery.of(context)
                  .padding
                  .top, // removes appbar n status bar padding
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svgs/nike_swoosh.svg'),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset('assets/svgs/nike_shoe.svg'),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Nike Air Max 270',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Opacity(
                          opacity: 0.52,
                          child: Text(
                            'PremiumID',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < 4 ? Icons.star : Icons.star_border,
                            );
                          }),
                        ),
                        SizedBox(height: 30),
                        Opacity(
                          opacity: 0.52,
                          child: Text(
                            'The Nike Air Max 270 get you ready for the lift off with materials and designst that nod to space exploration. Customise it here...',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Colors Available',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff5D5D5D),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: primaryColor,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xffFFA758),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff008DFF),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CHECKOUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '\$356',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Opacity(
                          opacity: 0.52,
                          child: Text(
                            '*Free Shipping',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
