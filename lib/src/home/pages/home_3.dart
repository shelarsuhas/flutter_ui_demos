import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage3 extends StatefulWidget {
  static final String path = 'lib/src/home/pages/home_3.dart';

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  int _bottomTabValue;
  int _groupValue;

  @override
  void initState() {
    _bottomTabValue = 1;
    _groupValue = 2;
    super.initState();
  }

  final Color backgroundColor = Color(0xffEAEAEA);

  final Color iconColor = Color(0xff203A43);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        baseColor: Color(0xffEAEAEA),
        accentColor: Colors.cyan,
        lightSource: LightSource.topLeft,
        shadowLightColor: Colors.white,
        depth: 8,
        intensity: 0.8,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        _buildToolbar(context),
                        SizedBox(
                          height: 20,
                        ),
                        _buildSearchBar(),
                        SizedBox(
                          height: 20,
                        ),
                        _buildOptions(),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Recently Played',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _buildRecentlyPlayed(context),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Top Podcasts',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _buildTopPodcast(context)
                      ],
                    ),
                  ),
                ),
                _buildBottomBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded _buildTopPodcast(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: backgroundColor,
          child: Column(
            children: List.generate(
              10,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: InkWell(
                    onTap: () {
                      _navigateToDetail(context);
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                              color: backgroundColor,
                              depth: 3,
                              intensity: 0.9,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/band4.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Do you see what I see?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Cerita Horror True Story',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '47 Eps',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Row _buildOptions() {
    return Row(
      children: [
        NeumorphicRadio(
          style: _buildTopButtonStyle(),
          child: SizedBox(
            height: 40,
            width: 70,
            child: Center(
              child: Text('Music'),
            ),
          ),
          value: 1,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        SizedBox(
          width: 20,
        ),
        NeumorphicRadio(
          style: _buildTopButtonStyle(),
          child: SizedBox(
            height: 40,
            width: 70,
            child: Center(
              child: Text('Podcast'),
            ),
          ),
          value: 2,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        SizedBox(
          width: 20,
        ),
        NeumorphicRadio(
          style: _buildTopButtonStyle(),
          child: SizedBox(
            height: 40,
            width: 70,
            child: Center(
              child: Text('Music'),
            ),
          ),
          value: 3,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
      ],
    );
  }

  Container _buildSearchBar() {
    return Container(
      width: double.infinity,
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: Color(0xffDDDDDD),
            depth: -3,
            intensity: 0.9,
            shape: NeumorphicShape.convex),
        child: TextField(
          cursorColor: Colors.black87,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: iconColor,
            ),
            hintText: 'Search for songs, artist, podcasts etc.',
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 5.0,
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Row _buildToolbar(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 55,
          child: NeumorphicButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: NeumorphicStyle(
              color: backgroundColor,
              depth: 3,
              intensity: 1,
            ),
            child: Center(
              child: NeumorphicIcon(
                Icons.arrow_back,
                style: NeumorphicStyle(
                  color: iconColor,
                  shape: NeumorphicShape.concave,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              'Caesar Candil!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 55,
          width: 55,
          child: NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              color: backgroundColor,
              depth: 3,
              intensity: 1,
            ),
            child: Center(
              child: NeumorphicIcon(
                FontAwesomeIcons.user,
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

  Container _buildBottomBar() {
    return Container(
      child: Container(
        width: double.infinity,
        height: 65,
        child: Neumorphic(
          style: NeumorphicStyle(
            lightSource: LightSource.bottom,
            intensity: 0.7,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NeumorphicRadio(
                style: _buildNeumorphicRadioStyle(),
                child: SizedBox(
                  height: 40,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.home,
                      color: iconColor,
                    ),
                  ),
                ),
                value: 1,
                groupValue: _bottomTabValue,
                onChanged: (value) {
                  setState(() {
                    _bottomTabValue = value;
                  });
                },
              ),
              NeumorphicRadio(
                style: _buildNeumorphicRadioStyle(),
                child: SizedBox(
                  height: 40,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.folder_open,
                      color: iconColor,
                    ),
                  ),
                ),
                value: 2,
                groupValue: _bottomTabValue,
                onChanged: (value) {
                  setState(() {
                    _bottomTabValue = value;
                  });
                },
              ),
              NeumorphicRadio(
                style: _buildNeumorphicRadioStyle(),
                child: SizedBox(
                  height: 40,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.headset,
                      color: iconColor,
                    ),
                  ),
                ),
                value: 3,
                groupValue: _bottomTabValue,
                onChanged: (value) {
                  setState(() {
                    _bottomTabValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _buildRecentlyPlayed(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _navigateToDetail(context);
              },
              child: Container(
                width: 130,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    color: backgroundColor,
                    depth: 3,
                    intensity: 0.9,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/band1.png',
                          ),
                        ),
                        Text(
                          'Kang Desain',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Bang Be, Candil Dan, Mas Upi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _navigateToDetail(context);
              },
              child: Container(
                width: 130,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    color: backgroundColor,
                    depth: 3,
                    intensity: 0.9,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/band2.png',
                          ),
                        ),
                        Text(
                          'Kang Desain',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Bang Be, Candil Dan, Mas Upi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _navigateToDetail(context);
              },
              child: Container(
                width: 130,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    color: backgroundColor,
                    depth: 3,
                    intensity: 0.9,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/band3.png',
                          ),
                        ),
                        Text(
                          'Kang Desain',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Bang Be, Candil Dan, Mas Upi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {
                _navigateToDetail(context);
              },
              child: Container(
                width: 130,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    color: backgroundColor,
                    depth: 3,
                    intensity: 0.9,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/band4.png',
                          ),
                        ),
                        Text(
                          'Kang Desain',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Bang Be, Candil Dan, Mas Upi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  NeumorphicRadioStyle _buildNeumorphicRadioStyle() {
    return NeumorphicRadioStyle(
      selectedColor: Color(0xffDDDDDD),
      unselectedColor: backgroundColor,
      unselectedDepth: 3,
      selectedDepth: -5,
      intensity: 0.9,
      shape: NeumorphicShape.concave,
    );
  }

  NeumorphicRadioStyle _buildTopButtonStyle() {
    return NeumorphicRadioStyle(
      selectedColor: Color(0xffDDDDDD),
      unselectedColor: backgroundColor,
      unselectedDepth: 3,
      selectedDepth: -3,
      intensity: 0.8,
      shape: NeumorphicShape.concave,
    );
  }

  _navigateToDetail(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailPage4()));
  }
}
