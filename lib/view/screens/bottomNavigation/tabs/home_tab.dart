import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/home/models/home_model.dart';
import 'package:ondemand/helpers/locator.dart';
import 'package:ondemand/services/user_detail_service.dart';
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
  int val = 0;
  final ScrollController _scrollController = ScrollController();

  List<String> chipsText = [
    "Featured",
    "Recent",
  ];
  late BottomNavigationViewModel _viewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(bottomNavigationViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 2)).then((value) async {
      _viewModel.toggleLoading();
      await _viewModel.getHomeView(isReccent: false);
      await _viewModel.getPlaylistList();

      // await _viewModel.getTags();

      _viewModel.toggleLoading();
    });

    // _viewModel.getSubscriptionList();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(bottomNavigationViewModel);
    return Scaffold(
      backgroundColor: Color(0xFF171718),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            centerTitle: true,
            backgroundColor: kBlack,
            // leadingWidth: 120,
            // leading: Padding(
            //     padding: const EdgeInsets.only(left: 16, top: 14),
            //     child: Text(
            //       "Home",
            //       style: TextStyle(color: Colors.white, fontFamily: 'Good'),
            //     )),
            
            title: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset(
                "assets/images/appbar_logo.png",
                height: 30.52.h,
              ),
            ),
            // actions: [
            //   InkWell(
            //     onTap: () {
            //       // navigateToScreen(AppRoute.searchVideoView);
            //     },
            //     child: Icon(
            //       Icons.notifications,
            //       color: Colors.white,
            //     ),
            //   ),
              // gapW16
              // Padding(
              //   padding: const EdgeInsets.only(left: 16, right: 16),
              //   child: Icon(
              //     Icons.notifications,
              //     color: Colors.white,
              //   ),
              // )
            // ],
          )),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF171718),
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ...List.generate(
                          chipsText.length,
                          (index3) => InkWell(
                                onTap: () {
                                  setState(() {
                                    val = index3;
                                    if (val == 0) {
                                      _viewModel.getHomeView();
                                      _scrollController.animateTo(
                                        _scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 2),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                    } else {
                                      _viewModel.getHomeView(isReccent: true);
                                      _scrollController.animateTo(
                                        _scrollController
                                            .position.minScrollExtent,
                                        duration: Duration(seconds: 2),
                                        curve: Curves.fastOutSlowIn,
                                      );
                                    }
                                  });

                                  // _viewModel.setVideoList(
                                  //   val,
                                  // );
                                  // if (val == 1) {
                                  //   setState(() {
                                  //     _viewModel.featuredPlaylist();
                                  //   });
                                  // } else if (val == 2) {
                                  //   setState(() {
                                  //     _viewModel.getpersonalPlaylist();
                                  //   });
                                  // } else if (val == 0) {
                                  //   setState(() {
                                  //     _viewModel.getPlaylistList();
                                  //   });
                                  // } else {}
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  margin: EdgeInsets.fromLTRB(
                                      index3 == 0 ? 16 : 8,
                                      12,
                                      index3 == 3 ? 16 : 8,
                                      12),
                                  decoration: BoxDecoration(
                                      boxShadow: val == index3
                                          ? [
                                              BoxShadow(
                                                  color: Color(0xFF3CB4E4)
                                                      .withOpacity(0.2),
                                                  blurRadius: 3,
                                                  spreadRadius: 4)
                                            ]
                                          : [],
                                      color: val == index3
                                          ? Colors.black
                                          : bgColor,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          color: val == index3
                                              ? Color(0xFF1AA2D9)
                                              : Color(0xFF6D6D6D))),
                                  child: Text(
                                    chipsText[index3].toUpperCase(),
                                    style: TextStyle(
                                      color: val == index3
                                          ? Color(0xFF1AA2D9)
                                          : Colors.white,
                                      fontSize: 10,
                                      fontFamily: "Century",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ))
                    ],
                  ),
                ),

                // Padding(
                // padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
//                   child: CustomSlidingSegmentedControl<int>(
//                     initialValue: 1,
//                     height: 35,

//                     innerPadding: EdgeInsets.only(top: 0),

//                     isStretch: true,

//                     children: {
//                       1: Text(
//                         "Featured".toUpperCase(),
//                         style: TextStyle(
//                           color: val == 1 ? Color(0xFF1AA2D9) : Colors.white,
//                           fontSize: 10,
//                           fontFamily: "Century",
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       2: Text(
//                         "Recent".toUpperCase(),
//                         style: TextStyle(
//                           color: val == 2 ? Color(0xFF1AA2D9) : Colors.white,
//                           fontSize: 10,
//                           fontFamily: "Century",
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     },
//                     // height: 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Color(0xFF6D6D6D)),
//                       color: bgColor,
//                       borderRadius: BorderRadius.circular(8),
//                     ),

//                     thumbDecoration: BoxDecoration(
//                       color: Color(0xFF161616),
// // Border.all(color: Color(0xFF6D6D6D))
//                       border: Border.symmetric(
//                           vertical: BorderSide(color: Color(0xFF6D6D6D))),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(val == 1 ? 8 : 0),
//                           bottomLeft: Radius.circular(val == 1 ? 8 : 0),
//                           topRight: Radius.circular(val == 2 ? 8 : 0),
//                           bottomRight: Radius.circular(val == 2 ? 8 : 0)),
//                     ),
//                     duration: const Duration(milliseconds: 300),

//                     curve: Curves.easeInToLinear,
//                     onValueChanged: (v) {
//                       // print(v);
//                       _viewModel.getHomeView();
//                       setState(() {
//                         val = v;
//                       });
//                     },
//                   ),
//                 ),
              ],
            ),
          ),
          // gapH16,
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
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
          _viewModel.videos?.isEmpty ?? true
              ? Container()
              : Expanded(
                  child: ListView.builder(
                      controller: _scrollController,
                      shrinkWrap: true,
                      itemCount: _viewModel.videos?.length ?? 0,
                      itemBuilder: (context, index) => HomeItems(
                            index: index,
                            viewModel: _viewModel,
                            items: _viewModel.videos?[index] ?? null,
                          )),
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
        if (AppConstants.isSubscribed) {
          context.pushNamed(
            AppRoute.videoPageView.name,
            pathParameters: {'id': widget.items?.id ?? ""},
          );
        } else {
          context.pushNamed(AppRoute.subscriptionView.name);
        }

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
                            // getPlaylist(context),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 8, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [getPlaylist(context)],
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
                                      convertTime(
                                          widget.items?.duration ?? 100),
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
            // gapH16,
          ],
        ),
      ),
    );
  }

  String convertTime(int time) {
    int originalDuration = time;

    int hours = originalDuration ~/ 60;
    int minutes = originalDuration % 60;

    String newTime =
        '${hours.toString()}:${minutes.toString().padLeft(2, '0')}';

    return newTime;
  }

  Widget getPlaylist(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(builder: (BuildContext context, setSt) {
                return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    insetPadding: EdgeInsets.zero,
                    titlePadding: EdgeInsets.zero,
                    backgroundColor: Color(0xFF171718),
                    surfaceTintColor: Color(0xFF171718),
                    actions: <Widget>[
                      TextButton(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                                color: Color(0xFF008BC3),
                                borderRadius: BorderRadius.circular(9)),
                            child: const Text(
                              'SAVE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        onPressed: () {
                          if (widget.items != null) {
                            widget.viewModel
                                .addVideoToPlaylistHome(widget.items, context);
                          }
                          // _viewModel.setSortBy(
                          //     _viewModel.sortBy ?? AppConstants.latest,
                          //     val,
                          //     context);
                          // Handle the submit action
                        },
                      ),
                    ],
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add to playlist'.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: "Good",
                                    color: Color(0xFF3CB4E4),
                                    fontSize: 16),
                              ),
                              InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Icon(Icons.close))
                            ],
                          ),
                        ),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFF27272A)),
                        )
                      ],
                    ),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...List.generate(
                              widget.viewModel.getAllPlaylistResponse?.length ??
                                  0,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setSt(() {
                                              if (widget
                                                  .viewModel.selectedPlayList
                                                  .contains(widget.viewModel
                                                          .getAllPlaylistResponse?[
                                                      index])) {
                                                widget
                                                    .viewModel.selectedPlayList
                                                    .remove(widget.viewModel
                                                            .getAllPlaylistResponse?[
                                                        index]);
                                              } else {
                                                widget.viewModel.selectedPlayList.add(widget
                                                            .viewModel
                                                            .getAllPlaylistResponse?[
                                                        index] ??
                                                    GetAllPlaylistResponse(
                                                        label: widget
                                                            .viewModel
                                                            .getAllPlaylistResponse?[
                                                                index]
                                                            .label,
                                                        value: widget
                                                            .viewModel
                                                            .getAllPlaylistResponse?[
                                                                index]
                                                            .value));
                                                // _viewModel.durations.add("5");
                                              }
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(widget
                                                        .viewModel
                                                        .getAllPlaylistResponse?[
                                                            index]
                                                        .label ??
                                                    ""),
                                                Container(
                                                  height: 18,
                                                  width: 18,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                      color: !widget.viewModel
                                                              .selectedPlayList
                                                              .contains(widget
                                                                      .viewModel
                                                                      .getAllPlaylistResponse?[
                                                                  index])
                                                          ? Colors.transparent
                                                          : Color(0xFF008BC3),
                                                      border: Border.all(
                                                          color: widget
                                                                  .viewModel
                                                                  .selectedPlayList
                                                                  .contains(widget.viewModel.getAllPlaylistResponse?[index])
                                                              ? Colors.transparent
                                                              : Colors.white)),
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 10,
                                                    color: widget.viewModel
                                                            .selectedPlayList
                                                            .contains(widget
                                                                    .viewModel
                                                                    .getAllPlaylistResponse?[
                                                                index])
                                                        ? Colors.white
                                                        : Colors.transparent,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        gapH4,
                                      ],
                                    ),
                                  ))
                        ]));
              });
            },
          );
        },
        child: Image.asset(
          "assets/icons/save.png",
          height: 18,
        ));
  }
}

class CustomAppBar extends StatefulWidget {
  final bool showBack;
  final bool isSearchDisabled;
  const CustomAppBar({
    super.key,
    this.showBack = false,
    this.isSearchDisabled = false,
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
        widget.isSearchDisabled
            ? Container()
            : InkWell(
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
