
# dot_bottom_nav_bar

A flutter package that provides awesome bottom navigation bar with dot indicator.
## Installation

1. Add the latest version of package to your pubspec.yaml (and run an implicit `flutter pub get` ):
```yaml
dependencies:
  dot_bottom_nav_bar: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:dot_bottom_nav_bar/view/dot_bottom_nav_bar.dart';
```

## Example

<img src="https://www.uplooder.net/img/image/17/604ab15b5e5d1b8da69027005ead2cb0/Dot-Bottom-Nav-Bar.png" width="300" height="600"></img>

```dart@
Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: const Center(child: Text("Dot Bottom Nav Bar")),
      bottomNavigationBar: DotBottomNavBar(
          currentIndex: selectIndex,
          onTap: (value) {
            setState(() {
              selectIndex = value;
            });
          },
          items: [
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Home"),
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Explore"),
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Setting"),
          ]),
    );
```
