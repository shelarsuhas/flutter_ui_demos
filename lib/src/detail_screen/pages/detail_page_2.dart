import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage2 extends StatefulWidget {
  final bool isDark;
  static final String path = 'lib/src/detail_screen/pages/detail_page_2.dart';

  const DetailPage2({Key key, this.isDark = true}) : super(key: key);
  @override
  _DetailPage2State createState() => _DetailPage2State(isDark: this.isDark);
}

class _DetailPage2State extends State<DetailPage2> {
  bool isDark;

  Color primaryGrey = Color(0xff8C9BB5);
  Color primaryColor = Color(0xff34333f);
  Color backgroundColor = Color(0xff2E2C39);
  Color lightBackground = Color(0xffF7F9FC);
  Color accentDark = Color(0xff7F9FF6);
  Color accentLight = Color(0xff2E4B9C);

  _DetailPage2State({this.isDark = true});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pop(context, isDark);
          return isDark;
        },
        child: Container(
          width: size.width,
          height: size.height,
          child: Scaffold(
            backgroundColor: isDark ? backgroundColor : lightBackground,
            appBar: AppBar(
              backgroundColor: isDark ? primaryColor : Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: primaryGrey,
                ),
                onPressed: () {
                  Navigator.pop(context, isDark);
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    isDark
                        ? FontAwesomeIcons.solidMoon
                        : FontAwesomeIcons.solidSun,
                    color: primaryGrey,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        isDark = !isDark;
                      },
                    );
                  },
                ),
              ],
            ),
            body: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/chair1.svg',
                      width: size.width / 2,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: size.width / 1.4,
                      decoration: BoxDecoration(
                        color: isDark ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.black12),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Classic Chair',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        isDark ? Colors.white : Colors.black87,
                                  ),
                                ),
                                Icon(
                                  Icons.share,
                                  color: primaryGrey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '\$45 ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: isDark ? accentDark : accentLight,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '\$55',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: primaryGrey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.yellow.shade600,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: primaryGrey,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Colors',
                        style: TextStyle(
                          fontSize: 18,
                          color: isDark ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        _buildColorBox(
                          Color(0xffE5BCBE),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _buildColorBox(
                          Color(0xffDEC369),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _buildColorBox(
                          Color(0xff55AECC),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _buildColorBox(
                          Color(0xff994C90),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _buildColorBox(
                          Color(0xff3D3D98),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 16,
                          color: isDark ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'This is an awesome Classic Chair. Great memory foam for comfort. It has the best lumber support. You will feel totally relaxed in this chair.',
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isDark ? primaryColor : lightBackground,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 3),
                                  blurRadius: 2,
                                  color: Colors.black12),
                            ],
                          ),
                          padding: const EdgeInsets.all(7),
                          child: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: isDark ? accentDark : accentLight,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FlatButton(
                            color: isDark ? accentDark : accentLight,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onPressed: () {},
                            child: Text(
                              'ADD TO MY CART',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildColorBox(Color color) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
    );
  }
}
