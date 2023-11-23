import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController useNetworkVideoPlayerController({
  required String video,
}) {
  return use<VideoPlayerController>(
    _VideoPlayerControllerHook(
      video: video,
    ),
  );
}

class _VideoPlayerControllerHook extends Hook<VideoPlayerController> {
  const _VideoPlayerControllerHook({
    required this.video,
    List<Object?>? keys,
  }) : super(keys: keys);

  final String video;

  @override
  HookState<VideoPlayerController, Hook<VideoPlayerController>> createState() =>
      _VideoPlayerControllerHookState();
}

class _VideoPlayerControllerHookState
    extends HookState<VideoPlayerController, _VideoPlayerControllerHook> {
  late final VideoPlayerController controller =
      VideoPlayerController.networkUrl(Uri.parse(hook.video));

  @override
  VideoPlayerController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useVideoPlayerController';
}
