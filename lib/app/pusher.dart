import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();

Future<void> init() async {
  await pusher.init(
    apiKey: "03bc938e1f50ad1ec1a2",
    cluster: "eu",
    onConnectionStateChange: (currentState, previousState) {},
    onError: (message, code, error) {
      print("object");
    },
  );
}
