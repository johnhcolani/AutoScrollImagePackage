<!--
    Developer: John Colani
    Github: https://github.com/johnhcolani
-->

A Flutter package for auto-scrolling images.
By integrating Auto Scroll Image, you gain the capability to effortlessly incorporate scrolling advertisements tailored to your app's content. This versatile feature enhances the visual appeal of your app and injects a dynamic and engaging element into its interface. Whether showcasing products, promotions, or captivating visuals related to your app's subject matter, Auto Scroll Image ensures a lively and interactive user experience. Moreover, it is compatible with iOS, Android, macOS, and web platforms, offering a seamless scrolling experience across a diverse range of devices, making your app stand out with vibrant and attention-grabbing content.

## Features

- A Flutter package for auto-scrolling images.
- This package provides a widget for displaying a horizontal list of images
  that automatically scrolls.
- Users can customize the number of items, item width, and the duration of auto-scrolling.
- For web page take care of width of SizedBox to see image scrolling

## Getting started
# auto_scrolling_image
## A view of the Package
![gif_file](https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/76a05a4d-5677-4625-8180-ca74749744ac)

### make an assets folder in root of the project:

<img width="241" alt="image" src="https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/5ff98268-2aa2-4b44-8327-948532177673">


### Example for adding auto_scroll_image to pubspec.yaml

```dart
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.6
  auto_scroll_image: ^0.2.2-dev

assets:
  - assets/

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

flutter:
  uses-material-design: true

```
import :
```
import 'package:auto_scroll_image/auto_scroll_image.dart';
```

then add AutoScrollImage to your class:
```dart
home: Scaffold(
        appBar: AppBar(
          title: Text('Your App'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Your other widgets can go here

            // Example usage of AutoScrollImage
            AutoScrollImage(
              itemCount: 10, // Customize itemCount
              itemWidth: 50.0, // Customize itemWidth
              autoScrollDuration: Duration(seconds: 2), // Customize autoScrollDuration
              timerInterval: Duration(seconds: 2), // Customize timerInterval
            ),

            // More of your widgets can follow here
          ],
        ),
      ),
```
### final result would be on Android:
### Android
<img width="241" alt="Android" src="https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/ba9e2a51-7554-4cca-8d1d-62ac0d7268b2">


### iOS:
<img width="241" alt="iOS" src="https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/0a4b1660-44b0-4416-9945-b1cca952b915">

### macOS:
<img width="806" alt="macOS" src="https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/bd2f408d-91c1-4611-a0dc-000e508d3db7">

### Web:
<img width="1196" alt="Web" src="https://github.com/johnhcolani/auto_scrolling_image/assets/91166301/62b9e6d2-c5ef-4266-85ed-484f6156cc52">
## Usage
You can take a look at example bellow and customise it with your needs;


```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
              appBar: AppBar(
                title: const Text('Auto Scroll Image'),
              ),
              body: AutoScrollImage(
                itemCount: 10, // Customize itemCount
                itemWidth: 50.0, // Customize itemWidth
                autoScrollDuration: Duration(seconds: 2), // Customize autoScrollDuration
                timerInterval: Duration(seconds: 2), // Customize timerInterval
    ),
    );
  }
}



```

## Additional information
This package facilitates seamless image scrolling on your screen, 
making it ideal for showcasing advertisements or demonstrating your
app's capabilities. Enhance user engagement by effortlessly presenting
a dynamic list of images with this easy-to-use solution,
