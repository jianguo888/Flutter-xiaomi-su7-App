# 小米 SU7 控制中心 App

基于 Flutter 开发的小米 SU7 智能汽车控制界面，展示了丰富的动画效果和交互体验。支持多平台运行，提供统一的用户体验。

## 项目特点

- 🚗 完整的小米 SU7 控制界面
- 🎯 流畅的动画效果
- 🌈 精美的 UI 设计
- 📱 响应式布局
- 🛠️ 清晰的代码结构

## 功能展示

- 车门智能控制动画
- 智能空调温度调节
- 电池状态实时监控
- 轮胎压力智能检测
- 整车状态数字化展示
- HyperOS 车机系统联动
- 小米生态链设备互联

## 预览

![动态效果](https://nutpi-e41b.obs.cn-north-4.myhuaweicloud.com/gif.gif)



## 开始使用

### 环境要求

- Flutter 3.21.0 或更高版本
- Dart 2.17.0 或更高版本
- iOS 11.0 / Android API 21 或更高版本

## 开发环境

### 必需工具
- Flutter SDK: 3.0.0 或更高版本
- Dart SDK: 2.17.0 或更高版本
- Git: 最新版本

### IDE 支持
- Android Studio 2021.1 或更高版本（推荐）
- Visual Studio Code 最新版本
- Trae
- IntelliJ IDEA 2021.1 或更高版本
- DevEco Studio 5.0.0 或更高版本（HarmonyOS 开发）

### 平台特定要求

#### iOS 开发
- macOS 操作系统
- Xcode 13.0 或更高版本
- CocoaPods 最新版本

#### Android 开发
- Android Studio
- Android SDK
- Java Development Kit (JDK) 11 或更高版本

#### Windows 开发
- Windows 10 或更高版本
- Visual Studio 2019 或更高版本
- Windows 10 SDK

#### macOS 开发
- macOS 10.15 或更高版本
- Xcode 最新版本

#### Linux 开发
- Ubuntu 20.04 LTS 或其他 Linux 发行版
- 必要的开发库

#### HarmonyOS 开发
- DevEco Studio
- HarmonyOS SDK
- OpenHarmony SDK

### 安装步骤

1. 克隆项目
```bash
git clone git@gitcode.com:nutpi/Flutter-Tesla-App.git
```

2. 安装依赖
```bash
flutter pub get
```

3. 运行项目
```bash
flutter run
```

## 项目结构

```
lib/
├── core/           # 核心功能
├── features/       # 功能模块
├── models/         # 数据模型
├── screens/        # 界面
├── widgets/        # 通用组件
└── main.dart       # 入口文件
```

## 使用的依赖

- flutter_svg: ^0.22.0 - SVG 图片渲染
- 更多依赖请查看 pubspec.yaml

## 开发工具推荐

### 3D 展示工具
- Windows: MokupFrames
- macOS: Rotato (官网：https://www.rotato.app/)
- Mokup Frames (官网：https://www.mokupframes.com/)



## 多平台构建指南

### iOS 构建
```bash
# 构建 iOS 应用
cd /Users/jianguo/Desktop/nutpi/project/Flutter-Tesla-App
flutter build ios

# 打开 Xcode 工程
open ios/Runner.xcworkspace

# 从 Xcode 构建和运行
# 选择目标设备并点击运行按钮

```

### Android 构建
```bash
# 构建 APK
flutter build apk --release

# 构建 Android App Bundle
flutter build appbundle

# 安装到连接的设备
flutter install
```

### Web 构建
```bash
# 构建 Web 应用
flutter build web

# 本地运行 Web 版本
flutter run -d chrome
```

### Windows 构建
```bash
# 确保已启用 Windows 桌面支持
flutter config --enable-windows-desktop

# 构建 Windows 应用
flutter build windows
```

### macOS 构建
```bash
# 确保已启用 macOS 桌面支持
flutter config --enable-macos-desktop

# 构建 macOS 应用
flutter build macos

# 创建 DMG 安装包（需要额外工具）
create-dmg "build/macos/Build/Products/Release/Tesla控制中心.app" "build/macos/Tesla控制中心.dmg"
```


### Linux 构建
```bash
# 确保已启用 Linux 桌面支持
flutter config --enable-linux-desktop

# 安装依赖（Ubuntu/Debian）
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

# 构建 Linux 应用
flutter build linux
```

## 贡献指南

1. Fork 项目
2. 创建特性分支
3. 提交改动
4. 发起 Pull Request

## 版权信息

© 2024 坚果派. 保留所有权利。

- 作者：坚果派
- 微信公众号：nutpi
- 官网：[https://www.nutpi.net/](https://www.nutpi.net/)

## 许可证

本项目采用 MIT 许可证，详情请参见 LICENSE 文件。

## 联系方式

如有任何问题或建议，欢迎通过以下方式联系：

- 微信公众号：nutpi
- 官网：[https://www.nutpi.net/](https://www.nutpi.net/)

## 致谢

感谢所有为本项目做出贡献的开发者。



