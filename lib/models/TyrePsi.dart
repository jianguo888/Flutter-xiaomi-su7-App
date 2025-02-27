/*
 * Copyright (c) 2024 坚果派
 * 
 * 微信公众号：nutpi
 * 官网：https://www.nutpi.net/
 * 
 * 未经授权，禁止任何形式的商业使用
 * 详细信息请参考项目根目录下的 README.md 文件
 */

class TyrePsi {
  final double psi;
  final int temp;
  final bool isLowPressure;

  TyrePsi({required this.psi, required this.temp, required this.isLowPressure});
}

final List<TyrePsi> demoPsiList = [
  TyrePsi(psi: 23.6, temp: 56, isLowPressure: true),
  TyrePsi(psi: 35.0, temp: 41, isLowPressure: false),
  TyrePsi(psi: 34.6, temp: 41, isLowPressure: false),
  TyrePsi(psi: 34.8, temp: 42, isLowPressure: false),
];
