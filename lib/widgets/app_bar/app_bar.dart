import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/app_bar/widgets/appBarActions.dart';
import 'package:flutter_app/widgets/app_bar/widgets/appBarLeading.dart';
import 'package:flutter_app/widgets/app_bar/widgets/appBarTitle.dart';

PreferredSizeWidget? appBar = AppBar(
  leading: appBarLeading,
  title: appBarTitle,
  actions: appBarActions,
  shadowColor: Colors.black45,
  elevation: 3,
);
