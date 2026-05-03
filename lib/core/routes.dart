import 'package:flutter/material.dart';
import '../features/map/screens/detail_filled_view.dart';
import '../features/map/screens/detail_view.dart';
import '../features/map/screens/experience_view.dart';
import '../features/map/screens/map_view.dart';
import '../features/progress/screens/progress_view.dart';
import '../features/progress/screens/progress_view_alt.dart';
import '../features/settings/screens/edit_profile_view.dart';
import '../features/settings/screens/settings_view.dart';

class Routes {
  static const String mapView = '/';
  static const String detailView = '/detail';
  static const String detailFilledView = '/detail_filled';
  static const String experienceView = '/experience';
  static const String progressView = '/progress';
  static const String progressViewAlt = '/progress_alt';
  static const String settingsView = '/settings';
  static const String editProfileView = '/edit_profile';

  static final Map<String, WidgetBuilder> routes = {
    mapView: (context) => const MapView(),
    detailView: (context) => const DetailView(),
    detailFilledView: (context) => const DetailFilledView(),
    experienceView: (context) => const ExperienceView(),
    progressView: (context) => const ProgressView(),
    progressViewAlt: (context) => const ProgressViewAlt(),
    settingsView: (context) => const SettingsView(),
    editProfileView: (context) => const EditProfileView(),
  };
}
