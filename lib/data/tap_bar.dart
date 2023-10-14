class TapBar {
  final int id;
  final String regularImg;
  final String selectedImg;
  final String path;

  const TapBar({
    required this.id,
    required this.regularImg,
    required this.selectedImg,
    required this.path,
  });
}

final List<TapBar> tapBarItems = [
  const TapBar(
    id: 0,
    regularImg: "assets/images/tap_bar/home.png",
    selectedImg: "assets/images/tap_bar/home_selected.png",
    path: '/',
  ),
  const TapBar(
    id: 1,
    regularImg: "assets/images/tap_bar/workout.png",
    selectedImg: "assets/images/tap_bar/workout_selected.png",
    path: '/workout',
  ),
  const TapBar(
    id: 2,
    regularImg: "assets/images/tap_bar/statistic.png",
    selectedImg: "assets/images/tap_bar/statistic_selected.png",
    path: '/statistic',
  ),
  const TapBar(
    id: 3,
    regularImg: "assets/images/tap_bar/settings.png",
    selectedImg: "assets/images/tap_bar/settings_selected.png",
    path: '/settings',
  ),
];
