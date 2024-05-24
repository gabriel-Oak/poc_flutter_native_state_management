import 'package:flutter/material.dart';

class LayoutBreakpoints {
  const LayoutBreakpoints({
    this.xs = 480.0,
    this.sm = 640.0,
    this.md = 1200.0,
    this.lg = 1400.0,
    this.xl = 1800.0,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  bool isDownXs(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth <= xs;
  }

  bool isUpXs(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth >= xs;
  }

  bool isDownSm(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth <= sm;
  }

  bool isUpSm(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth >= sm;
  }

  bool isDownMd(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth <= md;
  }

  bool isUpMd(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth >= md;
  }

  bool isDownLg(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth <= lg;
  }

  bool isUpLg(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth >= lg;
  }

  bool isDownXl(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth <= xl;
  }

  bool isUpXl(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth >= xl;
  }
}
