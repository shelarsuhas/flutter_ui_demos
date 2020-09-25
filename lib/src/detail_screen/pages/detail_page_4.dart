import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage4 extends StatelessWidget {
  static final String path = "lib/src/login/pages/detail_page_4.dart";
  final Color backgroundColor = Color(0xffEAEAEA);
  final Color neumorphicBaseColor = Color(0xffDDDDDD);
  final Color iconColor = Color(0xff203A43);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData(
        primaryColor: backgroundColor,
      ),
      child: NeumorphicTheme(
        theme: NeumorphicThemeData(
          iconTheme: IconThemeData(
            color: iconColor,
          ),
          baseColor: backgroundColor,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
          accentColor: iconColor,
          depth: 3,
          intensity: 1,
        ),
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildAlbumArt(size),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTitle(size),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '21.44',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '38.18',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    NeumorphicSlider(
                      min: 0,
                      max: 10,
                      value: 6,
                      style: SliderStyle(
                        variant: iconColor,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NeumorphicButton(
                          onPressed: () {},
                          style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          child: Icon(Icons.shuffle),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: NeumorphicButton(
                            onPressed: () {},
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                            ),
                            child: Icon(Icons.skip_previous),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          child: NeumorphicButton(
                            onPressed: () {},
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                              depth: -2,
                              color: neumorphicBaseColor,
                            ),
                            child: Icon(Icons.pause),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: NeumorphicButton(
                            onPressed: () {},
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                            ),
                            child: Icon(Icons.skip_next),
                          ),
                        ),
                        NeumorphicButton(
                          onPressed: () {},
                          style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          child: Icon(Icons.repeat),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildTitle(Size size) {
    return Container(
      width: size.width / 1.5,
      child: Text(
        'Ep.2 - Flutter Widgets - Flutter UI/UX. Working with Flutter to build beautiful UI.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }

  Container _buildAlbumArt(Size size) {
    return Container(
      width: size.width / 1.3,
      height: size.width / 1.3,
      child: Neumorphic(
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: SvgPicture.asset(
            'assets/svgs/album_art.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  NeumorphicAppBar _buildAppBar(BuildContext context) {
    return NeumorphicAppBar(
      title: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'PLAYING FROM PODCAST',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
            Text(
              'Kang Desain',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(
        size: 30,
        color: iconColor,
      ),
      actions: [
        Container(
          height: 50,
          width: 50,
          child: NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              color: backgroundColor,
              depth: 4,
              intensity: 0.9,
            ),
            child: Center(
              child: NeumorphicIcon(
                Icons.more_vert,
                size: 30,
                style: NeumorphicStyle(
                  color: iconColor,
                  shape: NeumorphicShape.concave,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
