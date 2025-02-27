/*
 * Copyright (c) 2024 坚果派
 * 
 * 微信公众号：nutpi
 * 官网：https://www.nutpi.net/
 * 
 * 未经授权，禁止任何形式的商业使用
 * 详细信息请参考项目根目录下的 README.md 文件
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> tyres(BoxConstraints constrains) {
  return [
    Positioned(
      left: constrains.maxWidth * 0.2,
      top: constrains.maxHeight * 0.22,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      right: constrains.maxWidth * 0.2,
      top: constrains.maxHeight * 0.22,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      right: constrains.maxWidth * 0.2,
      top: constrains.maxHeight * 0.63,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      left: constrains.maxWidth * 0.2,
      top: constrains.maxHeight * 0.63,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
  ];
}
