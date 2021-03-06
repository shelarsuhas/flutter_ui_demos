import 'package:flutter/material.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_2.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_3.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_4.dart';
import 'package:flutter_ui_demos/src/home/pages/home_3.dart';
import 'package:flutter_ui_demos/src/login/pages/forgot_password_page_1.dart';
import 'package:flutter_ui_demos/src/login/pages/login_page_4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/common_models/list_item.dart';
import '../src/detail_screen/pages/detail_page_1.dart';
import '../src/home/pages/home_1.dart';
import '../src/home/pages/home_2.dart';
import '../src/login/pages/login_page_1.dart';
import '../src/login/pages/login_page_2.dart';
import '../src/login/pages/login_page_3.dart';
import '../src/login/pages/register_page_1.dart';
import '../src/login/pages/register_page_2.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

final List<dynamic> routes = [
  ListItem(
    name: 'Login/Register',
    icon: Icons.person,
    subItems: [
      SubListItem(
        name: 'Login Page 1',
        page: LoginPage1(),
        icon: Icons.person,
        path: LoginPage1.path,
      ),
      SubListItem(
        name: 'Login Page 2',
        page: LoginPage2(),
        icon: Icons.person,
        path: LoginPage1.path,
      ),
      SubListItem(
        name: 'Login Page 3',
        page: LoginPage3(),
        icon: Icons.person,
        path: LoginPage3.path,
      ),
      SubListItem(
        name: 'Login Page 4',
        page: LoginPage4(),
        icon: Icons.person,
        path: LoginPage4.path,
      ),
      SubListItem(
        name: 'Register Page 1',
        page: RegisterPage1(),
        icon: Icons.person_add,
        path: RegisterPage1.path,
      ),
      SubListItem(
        name: 'Register Page 2',
        page: RegisterPage2(),
        icon: Icons.person_add,
        path: RegisterPage2.path,
      ),
      SubListItem(
        name: 'Forgot Password Page 1',
        page: ForgotPasswordPage1(),
        icon: Icons.lock,
        path: ForgotPasswordPage1.path,
      ),
    ],
  ),
  ListItem(
    name: 'Home',
    icon: FontAwesomeIcons.home,
    subItems: [
      SubListItem(
        name: 'Home Page 1',
        page: HomePage1(),
        icon: Icons.home,
        path: HomePage1.path,
      ),
      SubListItem(
        name: 'Home Page 2 (Dark/Light mode)',
        page: HomePage2(),
        icon: Icons.home,
        path: HomePage2.path,
      ),
      SubListItem(
        name: 'Home Page 3',
        page: HomePage3(),
        icon: Icons.home,
        path: HomePage3.path,
      ),
    ],
  ),
  ListItem(
    name: 'Detail Page',
    icon: FontAwesomeIcons.columns,
    subItems: [
      SubListItem(
        name: 'Detail Page 1',
        page: DetailPage1(),
        icon: Icons.details,
        path: DetailPage1.path,
      ),
      SubListItem(
        name: 'Detail Page 2 (Dark/Light mode)',
        page: DetailPage2(),
        icon: Icons.details,
        path: DetailPage2.path,
      ),
      SubListItem(
        name: 'Detail Page 3',
        page: DetailPage3(),
        icon: Icons.details,
        path: DetailPage3.path,
      ),
      SubListItem(
        name: 'Detail Page 4',
        page: DetailPage4(),
        icon: Icons.details,
        path: DetailPage4.path,
      ),
    ],
  ),
];
