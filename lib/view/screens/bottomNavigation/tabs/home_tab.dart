import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ondemand/data/home/models/home_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/user_detail_service.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/colors.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view_model.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> with BaseScreenView {
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  int val = 1;

  late BottomNavigationViewModel _viewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(bottomNavigationViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 2)).then((value) async {
      _viewModel.toggleLoading();
      await _viewModel.getHomeView();

      // await _viewModel.getTags();

      _viewModel.toggleLoading();
    });

    // _viewModel.getSubscriptionList();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(bottomNavigationViewModel);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), child: CustomAppBar()),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF191919),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: CustomSlidingSegmentedControl<int>(
                    initialValue: 1,
                    height: 35,

                    innerPadding: EdgeInsets.only(top: 0),

                    isStretch: true,

                    children: {
                      1: Text(
                        "Featured",
                        style: TextStyle(
                          color: val == 1 ? Color(0xFF1AA2D9) : Colors.white,
                          fontSize: 10,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      2: Text(
                        "Recent",
                        style: TextStyle(
                          color: val == 2 ? Color(0xFF1AA2D9) : Colors.white,
                          fontSize: 10,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    },
                    // height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF6D6D6D)),
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    thumbDecoration: BoxDecoration(
                      color: Color(0xFF161616),
// Border.all(color: Color(0xFF6D6D6D))
                      border: Border.symmetric(
                          vertical: BorderSide(color: Color(0xFF6D6D6D))),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(val == 1 ? 8 : 0),
                          bottomLeft: Radius.circular(val == 1 ? 8 : 0),
                          topRight: Radius.circular(val == 2 ? 8 : 0),
                          bottomRight: Radius.circular(val == 2 ? 8 : 0)),
                    ),
                    duration: const Duration(milliseconds: 300),

                    curve: Curves.easeInToLinear,
                    onValueChanged: (v) {
                      // print(v);
                      _viewModel.getHomeView();
                      setState(() {
                        val = v;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          // gapH16,
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF033245).withOpacity(0.8),
                    Color(0xFF51CBFC)
                  ]),
            ),
            child: Center(
                child: Text(
              "WELCOME ${((_userDetailService.userDetailResponse?.firstname ?? "") + " " + (_userDetailService.userDetailResponse?.lastname ?? "")).toUpperCase()}!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            )),
          ),
          _viewModel.homeVideoResponse == null
              ? Container()
              : _viewModel.loading
                  ? Container()
                  : Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: val == 1
                            ? (_viewModel
                                    .homeVideoResponse?[0].videos?.length ??
                                0)
                            : _viewModel.homeVideoResponse?[1].videos?.length ??
                                0,
                        itemBuilder: (context, index) => HomeItems(
                            index: index,
                            viewModel: _viewModel,
                            items: val == 1
                                ? (_viewModel
                                        .homeVideoResponse?[0].videos?[index] ??
                                    null)
                                : _viewModel
                                        .homeVideoResponse?[1].videos?[index] ??
                                    null),
                      ),
                    )
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
    // TODO: implement navigateToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}

class HomeItems extends StatefulWidget {
  final int index;
  final Video? items;
  final BottomNavigationViewModel viewModel;
  const HomeItems({
    super.key,
    required this.index,
    this.items,
    required this.viewModel,
  });

  @override
  State<HomeItems> createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems> {
  bool isSaved = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSaved = widget.items?.savedvideo ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          AppRoute.videoPageView.name,
          pathParameters: {'id': widget.items?.id ?? ""},
        );
        // navigateToScreen(AppRoute.videoPageView);
      },
      child: Container(
        color: Color(0xFF171718),
        // height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: CachedNetworkImage(
                  height: 170.h,
                  imageUrl: widget.items?.thumnailLink ?? "",
                  imageBuilder: (context, imageProvider) => Container(
                        height: 170.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: imageProvider)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 8, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/save.png",
                                    height: 18,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 2, 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 4),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF27272A),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Text(
                                      "${(widget.items?.duration ?? 100) ~/ 60}:${((widget.items?.duration ?? 100) % 60)}",
                                      // totalSeconds ~/ 60
                                      // (
                                      // ((widget.items?.duration ?? 100) / 60)
                                      //     .toStringAsFixed(2)),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      isSaved = !isSaved;
                                      setState(() {});
                                      if (isSaved) {
                                        widget.viewModel
                                            .saveVideo(widget.items?.id ?? "");
                                      } else {
                                        widget.viewModel.unSaveVideo(
                                            widget.items?.id ?? "");
                                      }
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: !isSaved
                                          ? Icon(
                                              Icons.favorite_outline,
                                              color: Colors.black,
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                  // Image.asset(
                                  //   "assets/icons/like.png",
                                  //   height: 30,
                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            ),
            gapH4,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                (widget.items?.title?.toUpperCase() ?? "Title Not Available")
                    .toUpperCase(),
                style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16, top: 8, left: 16),
              child: Wrap(
                children: [
                  ...List.generate(
                    widget.items?.tagsDetails?.length ?? 0,
                    (index2) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          color: HexColor.fromHex(
                              widget.items?.tagsDetails?[index2].color ??
                                  "0xFFFFFF"),
                          // Color(items?.tagsDetails?[index2].color
                          //         .replaceAll("#", "0xFF") ??
                          //     Colors.black),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        (widget.items?.tagsDetails?[index2].name ?? "")
                            .toUpperCase(),
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            gapH8,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                timeago.format(widget.items?.releaseDateTime ?? DateTime.now()),
                style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF9E9E9E),
                    fontWeight: FontWeight.bold),
              ),
            ),
            gapH16,
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  final bool showBack;
  const CustomAppBar({
    super.key,
    this.showBack = false,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: kBlack,
      leadingWidth: widget.showBack ? 60 : 120,
      leading: widget.showBack
          ? InkWell(
              onTap: () {
                context.pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset(
                "assets/images/appbar_logo.png",
                height: 34.52.h,
              ),
            ),
      actions: [
        InkWell(
          onTap: () {
            navigateToScreen(AppRoute.searchVideoView);
          },
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        gapW16
        // Padding(
        //   padding: const EdgeInsets.only(left: 16, right: 16),
        //   child: Icon(
        //     Icons.notifications,
        //     color: Colors.white,
        //   ),
        // )
      ],
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
