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

import '../../constanins.dart';

class TeslaBottomNavigationBar extends StatelessWidget {
  const TeslaBottomNavigationBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: List.generate(
        navIconSrc.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIconSrc[index],
            color: index == selectedTab ? primaryColor : Colors.white54,
          ),
          label: "",
        ),
      ),
    );
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg",
];
