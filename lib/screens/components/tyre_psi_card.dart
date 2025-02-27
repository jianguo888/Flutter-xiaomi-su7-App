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
import 'package:tesla_animated_app/models/TyrePsi.dart';
import '../../constanins.dart';

/// 轮胎气压卡片组件
/// 该组件用于显示特斯拉汽车单个轮胎的状态信息，包括：
/// - 气压值（PSI单位）
/// - 温度（摄氏度）
/// - 低气压警告状态
class TyrePsiCard extends StatelessWidget {
  const TyrePsiCard({
    Key? key,
    required this.isBottomTwoTyre, // 标识是否为后轮
    required this.tyrePsi,         // 轮胎气压数据模型
  }) : super(key: key);

  /// 用于区分前后轮的标识
  /// true: 表示这是后轮
  /// false: 表示这是前轮
  final bool isBottomTwoTyre;

  /// 包含轮胎所有状态信息的数据模型
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      // 根据气压状态设置不同的边框和背景颜色
      decoration: BoxDecoration(
        // 低气压时显示红色背景，否则显示白色半透明背景
        color: tyrePsi.isLowPressure ? redColor.withOpacity(0.1) : Colors.white10,
        // 低气压时显示红色边框，否则显示主题色边框
        border: Border.all(
            color: tyrePsi.isLowPressure ? redColor : primaryColor, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      // 根据是否为后轮使用不同的布局
      child: isBottomTwoTyre
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                lowPressureText(context),    // 低气压警告文本
                const Spacer(),
                psiText(context, psi: tyrePsi.psi.toString()),  // 气压值
                const SizedBox(height: defaultPadding),
                Text(                        // 温度显示
                  "${tyrePsi.temp}\u2103",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          : Column(
              // ... 前轮布局，与后轮相反
            ),
    );
  }

  /// 创建低气压警告文本组件
  /// 当轮胎气压过低时显示的警告文字
  /// 包含两行文本：
  /// 1. "LOW" - 使用大号字体
  /// 2. "PRESSURE" - 使用中号字体
  Column lowPressureText(BuildContext context) {
    return Column(
      children: [
        Text(
          "Low".toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text(
          "Pressure".toUpperCase(),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  /// 创建气压值显示组件
  /// @param psi 当前气压值
  /// 使用富文本显示气压值和单位，例如："32 psi"
  /// 其中数值部分使用大号字体，单位使用小号字体
  Text psiText(BuildContext context, {required String psi}) {
    return Text.rich(
      TextSpan(
        text: psi,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
        children: [
          TextSpan(
            text: "psi",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
