import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage2 extends StatefulWidget {
  static final String path = 'lib/src/home/pages/home_2.dart';
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2>
    with SingleTickerProviderStateMixin {
  bool isDark;
  Color primaryGrey = Color(0xff8C9BB5);
  Color primaryColor = Color(0xff34333f);
  Color backgroundColor = Color(0xff2E2C39);
  Color lightBackground = Color(0xffF7F9FC);
  Color accentDark = Color(0xff7F9FF6);
  Color accentLight = Color(0xff2E4B9C);

  TabController _tabController;
  @override
  void initState() {
    isDark = true;
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Theme(
        data: ThemeData(
          accentColor: isDark ? accentDark : accentLight,
        ),
        child: Container(
          width: size.width,
          height: size.height,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: isDark ? primaryColor : lightBackground,
              leading: Icon(
                FontAwesomeIcons.cameraRetro,
                color: primaryGrey,
              ),
              title: TextField(
                style: TextStyle(
                  color: primaryGrey,
                ),
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 5.0),
                  suffixIcon: Icon(
                    Icons.search,
                    color: primaryGrey,
                  ),
                  hintStyle: TextStyle(
                    color: primaryGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: primaryGrey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: primaryGrey,
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isDark = !isDark;
                      },
                    );
                  },
                  icon: Icon(
                    isDark
                        ? FontAwesomeIcons.solidMoon
                        : FontAwesomeIcons.solidSun,
                    color: primaryGrey,
                  ),
                )
              ],
              bottom: TabBar(
                indicatorWeight: 5.0,
                controller: _tabController,
                isScrollable: true,
                labelColor: isDark ? accentDark : accentLight,
                unselectedLabelColor: primaryGrey,
                tabs: [
                  Tab(
                    text: 'Trending',
                  ),
                  Tab(
                    text: 'Featured',
                  ),
                  Tab(
                    text: 'New',
                  ),
                  Tab(
                    text: 'Sale',
                  ),
                  Tab(
                    text: 'Most Ordered',
                  ),
                ],
              ),
            ),
            body: Container(
              color: isDark ? backgroundColor : Colors.blueGrey.shade50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 1 / 1.4,
                  children: [
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair1.svg',
                        name: 'Classic Chair',
                        price: 45,
                        rating: 4.5,
                        isLiked: true),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair2.svg',
                        name: 'Comfort Chair',
                        price: 65,
                        rating: 4.2,
                        isLiked: false),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair3.svg',
                        name: 'High Chair',
                        price: 75,
                        rating: 4.3,
                        isLiked: false),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair4.svg',
                        name: 'Elegant Chair',
                        price: 95,
                        rating: 4.9,
                        isLiked: false),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair5.svg',
                        name: 'Leisure Chair',
                        price: 55,
                        rating: 4.1,
                        isLiked: true),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair3.svg',
                        name: 'Modern Chair',
                        price: 45,
                        rating: 4.2,
                        isLiked: true),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair1.svg',
                        name: 'Classic Chair',
                        price: 45,
                        rating: 4.5,
                        isLiked: false),
                    _buildCard(
                        size: size,
                        svgPath: 'assets/svgs/chair2.svg',
                        name: 'Comfort Chair',
                        price: 65,
                        rating: 4.2,
                        isLiked: true),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomNavBar(),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      color: isDark ? primaryColor : Colors.white,
      child: BottomNavigationBar(
        currentIndex: _cIndex,
        iconSize: 28,
        backgroundColor: isDark ? primaryColor : Colors.white,
        unselectedItemColor: primaryGrey,
        selectedItemColor: isDark ? accentDark : accentLight,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: new Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.apps), title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), title: new Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: new Text(''))
        ],
        onTap: (index) {
          _incrementTab(index);
        },
      ),
    );
  }

  Padding _buildCard({
    @required Size size,
    @required String svgPath,
    @required String name,
    @required int price,
    @required double rating,
    @required bool isLiked,
  }) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () async {
          bool result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage2(
                isDark: this.isDark,
              ),
            ),
          );

          setState(
            () {
              isDark = result;
            },
          );
        },
        child: Card(
          color: isDark ? primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: size.width / 2.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: isLiked
                          ? isDark ? accentDark : accentLight
                          : primaryGrey,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: SvgPicture.asset(
                        svgPath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '\$$price ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: isDark ? accentDark : accentLight,
                          ),
                          children: [
                            TextSpan(
                              text: '\$${price + 10}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: primaryGrey,
                                decoration: TextDecoration.lineThrough,
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
                            rating.toString(),
                            style: TextStyle(
                              color: primaryGrey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
