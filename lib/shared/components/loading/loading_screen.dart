import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gd_store/shared/components/loading/loading_screen_controller.dart';
import 'package:gd_store/utils/constants/constants.dart';

class LoadingScreen {
  // Singleton definition for LoadingScreen
  LoadingScreen._sharedInstance();
  static final LoadingScreen _shared = LoadingScreen._sharedInstance();

  factory LoadingScreen.instance() => _shared;

  LoadingScreenController? _controller;

  void show({
    required BuildContext context,
    String text = 'Loding',
  }) {
    if (_controller?.updateLoadingScreen(text) ?? false) {
      return;
    } else {
      _controller = showOverlay(context: context, text: text);
    }
  }

  // Funcion to close the loading screen
  void hide() {
    _controller?.closeLoadingScreen();
    _controller = null;
  }

  LoadingScreenController? showOverlay({
    required BuildContext context,
    required String text,
  }) {
    final state = Overlay.of(context);

    final textController = StreamController<String>();
    textController.add(text);

    // This is used to get the size of the screen
    // final renderbox = context.findRenderObject() as RenderBox;

    final _device = Dims.deviceSize;

    final overlay = OverlayEntry(
      builder: (context) => Material(
        color: Colors.black.withAlpha(150),
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: _device.width * 0.8,
              maxHeight: _device.height * 0.8,
              minWidth: _device.width * 0.5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircularProgressIndicator(),
                    const SizedBox(
                      height: 10,
                    ),
                    StreamBuilder<String>(
                      stream: textController.stream,
                      builder: (context, snapshot) {
                        return Text(
                          snapshot.data ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.black),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    state.insert(overlay);

    return LoadingScreenController(
      closeLoadingScreen: () {
        textController.close();
        overlay.remove();
        return true;
      },
      updateLoadingScreen: (text) {
        textController.add(text);
        return true;
      },
    );
  }
}
