import 'package:flutter/material.dart';
import 'package:flutter_ui_demos/presentation/features/login/pages/login_page_2.dart';

import '../data/common_models/list_item.dart';
import '../presentation/features/login/pages/login_page_1.dart';
import '../presentation/features/login/pages/register_page_1.dart';

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
        name: 'Register Page 1',
        page: RegisterPage1(),
        icon: Icons.person_add,
        path: RegisterPage1.path,
      ),
    ],
  )
];
