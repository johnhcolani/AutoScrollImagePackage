library auto_scroll_image;

import 'dart:async';
import 'package:flutter/material.dart';

/// A Flutter package for auto-scrolling images.
///
/// This package provides a widget for displaying a horizontal list of images
/// that automatically scrolls.
///
/// Users can customize the number of items, item width, and the duration of auto-scrolling.
///
/// Example:
/// ```dart
/// AutoScrollImage(
///   itemCount: 5,
///   itemWidth: 150.0,
///   autoScrollDuration: Duration(seconds: 1),
///   timerInterval: Duration(seconds: 3),
/// )
/// ```

class AutoScrollImage extends StatefulWidget {
  final int itemCount;
  final double itemWidth;
  final Duration autoScrollDuration;
  final Duration timerInterval;

  const AutoScrollImage({
    Key? key,
    this.itemCount = 10,
    this.itemWidth = 80.0,
    this.autoScrollDuration = const Duration(seconds: 1),
    this.timerInterval = const Duration(seconds: 1),
  }) : super(key: key);

  @override
  _AutoScrollImageState createState() => _AutoScrollImageState();
}

class _AutoScrollImageState extends State<AutoScrollImage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  bool scrollingRight = true;

  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  void startAutoScroll() {
    _timer = Timer.periodic(widget.timerInterval, (timer) {
      if (_scrollController.hasClients) {
        double targetPosition;
        if (scrollingRight) {
          targetPosition = _scrollController.position.pixels + widget.itemWidth;
        } else {
          targetPosition = _scrollController.position.pixels - widget.itemWidth;
        }

        if (targetPosition >= 0 &&
            targetPosition <= _scrollController.position.maxScrollExtent) {
          /// Scroll to the target position
          _scrollController.animateTo(
            targetPosition,
            duration: widget.autoScrollDuration,
            curve: Curves.easeInOut,
          );
        } else {
          /// Stop scrolling at the end
          _timer?.cancel();

          /// Delay for a moment to pause at the end
          Future.delayed(const Duration(milliseconds: 500), () {
            /// Change direction
            scrollingRight = !scrollingRight;

            /// Restart auto-scrolling
            startAutoScroll();
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 65.0,
        width: wi * 0.7,
        child: ListView.builder(
          controller: _scrollController,
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.itemCount,
          itemBuilder: (context, index) {
            String imagePath = 'assets/image_$index.png';

            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                width: widget.itemWidth,
                margin: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    width: widget.itemWidth,
                    height: widget.itemWidth,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
