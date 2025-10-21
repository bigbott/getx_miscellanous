import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../presentation/android_settings/android_settings_binding.dart';
import '../presentation/android_settings/android_settings_view.dart';
import '../presentation/async_examples/async_examples_binding.dart';
import '../presentation/async_examples/async_examples_view.dart';
import '../presentation/audio/audio_binding.dart';
import '../presentation/audio/audio_view.dart';
import '../presentation/button_style/button_style_binding.dart';
import '../presentation/button_style/button_style_view.dart';
import '../presentation/buttons/buttons_binding.dart';
import '../presentation/buttons/buttons_view.dart';
import '../presentation/checkmark_example/checkmark_example_binding.dart';
import '../presentation/checkmark_example/checkmark_example_view.dart';
import '../presentation/color_examples/color_examples_binding.dart';
import '../presentation/color_examples/color_examples_view.dart';
import '../presentation/example/example_binding.dart';
import '../presentation/example/example_view.dart';
import '../presentation/gallery/gallery_binding.dart';
import '../presentation/gallery/gallery_view.dart';
import '../presentation/gesture_drag/gesture_drag_binding.dart';
import '../presentation/gesture_drag/gesture_drag_view.dart';
import '../presentation/gesture_official/gesture_official_binding.dart';
import '../presentation/gesture_official/gesture_official_view.dart';
import '../presentation/gesture_pan/gesture_pan_binding.dart';
import '../presentation/gesture_pan/gesture_pan_view.dart';
import '../presentation/gesture_pinch/gesture_pinch_binding.dart';
import '../presentation/gesture_pinch/gesture_pinch_view.dart';
import '../presentation/gesture_swipe/gesture_swipe_binding.dart';
import '../presentation/gesture_swipe/gesture_swipe_view.dart';
import '../presentation/grammary/grammary_binding.dart';
import '../presentation/grammary/grammary_view.dart';
import '../presentation/home/home_binding.dart';
import '../presentation/home/home_view.dart';
import '../presentation/hourglass-loader/hourglass_loader_binding.dart';
import '../presentation/hourglass-loader/hourglass_loader_view.dart';
import '../presentation/hourglass/hourglass_official_view.dart';
import '../presentation/inkwell/inkwell_binding.dart';
import '../presentation/inkwell/inkwell_view.dart';
import '../presentation/liquid_progress_bar/liquid_progress_bar_binding.dart';
import '../presentation/liquid_progress_bar/liquid_progress_bar_view.dart';
import '../presentation/list/list_binding.dart';
import '../presentation/list/list_view.dart';
import '../presentation/m3-shapes/m3_shapes_binding.dart';
import '../presentation/m3-shapes/m3_shapes_view.dart';
import '../presentation/mix1/mix1_binding.dart';
import '../presentation/mix1/mix1_view.dart';
import '../presentation/my/my_view.dart';
import '../presentation/notifications/notifications_binding.dart';
import '../presentation/notifications/notifications_view.dart';
import '../presentation/pin_code/pin_code_binding.dart';
import '../presentation/pin_code/pin_code_view.dart';
import '../presentation/rounded_progress_bar/rounded_progress_bar_binding.dart';
import '../presentation/rounded_progress_bar/rounded_progress_bar_view.dart';
import '../presentation/settings_ui/settings_ui_binding.dart';
import '../presentation/settings_ui/settings_ui_view.dart';
import '../presentation/star_menu_demo/star_menu_demo_binding.dart';
import '../presentation/star_menu_demo/star_menu_demo_view.dart';
import '../presentation/star_menu_official/star_menu_official_binding.dart';
import '../presentation/star_menu_official/star_menu_official_view.dart';
import '../presentation/web_chrome_settings/web_chrome_settings_binding.dart';
import '../presentation/web_chrome_settings/web_chrome_settings_view.dart';
import '../presentation/welcome/welcome_binding.dart';
import '../presentation/welcome/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        transition: Transition.cupertino),
    GetPage(
      name: _Paths.SETTINGS_UI,
      page: () => const SettingsUiView(),
      binding: SettingsUiBinding(),
    ),
    GetPage(
      name: _Paths.LIST,
      page: () => const ListScreen(),
      binding: ListBinding(),
      maintainState: false,
    ),
    GetPage(
      name: _Paths.GALLERY,
      page: () => const GalleryView(),
      binding: GalleryBinding(),
    ),
    GetPage(
      name: _Paths.ANDROID_SETTINGS,
      page: () => const AndroidSettingsView(),
      binding: AndroidSettingsBinding(),
    ),
    GetPage(
      name: _Paths.WEB_CHROME_SETTINGS,
      page: () => const WebChromeSettingsView(),
      binding: WebChromeSettingsBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.EXAMPLE,
      page: () => const ExampleView(),
      binding: ExampleBinding(),
    ),
    GetPage(
      name: _Paths.CHECKMARK_EXAMPLE,
      page: () => const CheckmarkExampleView(),
      binding: CheckmarkExampleBinding(),
    ),
    GetPage(
      name: _Paths.PIN_CODE,
      page: () => PinCodeView(),
      binding: PinCodeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.AUDIO,
      page: () => const AudioView(),
      binding: AudioBinding(),
    ),
    GetPage(
      name: _Paths.GRAMMARY,
      page: () => const GrammaryView(),
      binding: GrammaryBinding(),
    ),
    GetPage(
      name: _Paths.BUTTONS,
      page: () => const ButtonsView(),
      binding: ButtonsBinding(),
    ),
    GetPage(
      name: _Paths.BUTTON_STYLE,
      page: () => const ButtonStyleView(),
      binding: ButtonStyleBinding(),
    ),
    GetPage(
      name: _Paths.MY,
      page: () => const MyView(),
    ),
    GetPage(
      name: _Paths.INKWELL,
      page: () => const InkwellView(),
      binding: InkwellBinding(),
    ),
    GetPage(
      name: _Paths.GESTURE_OFFICIAL,
      page: () => const GestureOfficialView(),
      binding: GestureOfficialBinding(),
    ),
    GetPage(
        name: _Paths.GESTURE_PAN,
        page: () => const GesturePanView(),
        binding: GesturePanBinding(),
        transition: Transition.cupertino),
    GetPage(
        name: _Paths.GESTURE_DRAG,
        page: () => const GestureDragView(),
        binding: GestureDragBinding(),
        transition: Transition.cupertino),
    GetPage(
        name: _Paths.GESTURE_SWIPE,
        page: () => const GestureSwipeView(),
        binding: GestureSwipeBinding(),
        transition: Transition.noTransition),
    GetPage(
      name: _Paths.GESTURE_PINCH,
      page: () => const GesturePinchView(),
      binding: GesturePinchBinding(),
    ),
    GetPage(
      name: _Paths.COLOR_EXAMPLES,
      page: () => const ColorExamplesView(),
      binding: ColorExamplesBinding(),
    ),
    GetPage(
      name: _Paths.ASYNC_EXAMPLES,
      page: () => const AsyncExamplesView(),
      binding: AsyncExamplesBinding(),
    ),
    GetPage(
      name: _Paths.ROUNDED_PROGRESS_BAR,
      page: () => const RoundedProgressBarView(),
      binding: RoundedProgressBarBinding(),
    ),
    GetPage(
      name: _Paths.LIQUID_PROGRESS_BAR,
      page: () => const LiquidProgressBarView(),
      binding: LiquidProgressBarBinding(),
    ),
    GetPage(
      name: _Paths.STAR_MENU_DEMO,
      page: () => StarMenuDemoView(),
      binding: StarMenuDemoBinding(),
    ),
    GetPage(
      name: _Paths.STAR_MENU_OFFICIAL,
      page: () => const StarMenuOfficialView(),
      binding: StarMenuOfficialBinding(),
    ),
    GetPage(
      name: _Paths.MIX1,
      page: () => const Mix1View(),
      binding: Mix1Binding(),
    ),
    GetPage(
      name: _Paths.M3_SHAPES,
      page: () => const M3ShapesView(),
      binding: M3ShapesBinding(),
    ),
    GetPage(
      name: _Paths.HOURGLASS_OFFICIAL,
      page: () => AnimatedHourglass(),
    ),
    GetPage(
      name: _Paths.HOURGLASS_LOADER,
      page: () => const HourglassLoaderView(),
      binding: HourglassLoaderBinding(),
    ),
  ];
}
