import 'package:better_player/src/video_player/video_player.dart';

class MockVideoPlayerController extends VideoPlayerController {
  MockVideoPlayerController() : super(autoCreate: false) {
    value = VideoPlayerValue(duration: const Duration());
  }

  bool isLoopingState = false;
  double volume = 0.0;
  double speed = 1.0;

  @override
  Future<void> play() async {
    value = value.copyWith(isPlaying: true);
    return;
  }

  @override
  Future<void> pause() async {
    value = value.copyWith(isPlaying: false);
    return;
  }

  @override
  Future<void> setLooping(bool looping) async {
    isLoopingState = looping;
  }

  void setBuffering(bool buffering) {
    value = value.copyWith(isBuffering: buffering);
  }

  void setDuration(Duration duration) {
    value = value.copyWith(duration: duration);
  }

  @override
  Future<void> seekTo(Duration? position) async {
    value = value.copyWith(position: position);
  }

  @override
  Future<Duration?> get position async => value.position;

  @override
  Future<void> setVolume(double volume) async {
    this.volume = volume;
  }

  @override
  Future<void> setSpeed(double speed) async {
    this.speed = speed;
  }

  @override
  Future<void> setAssetDataSource(String dataSource,
      {String? package,
      bool? showNotification,
      String? title,
      String? author,
      String? imageUrl,
      String? notificationChannelName,
      Duration? overriddenDuration,
      String? activityName}) async {}
}
