import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_stack/image_stack.dart';
import 'package:ondemand/data/home/models/feature_playlist_model.dart'
    as playlist;
import 'package:timeago/timeago.dart' as timeago;

import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/colors.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view_model.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';

class PlaylistTab extends ConsumerStatefulWidget {
  const PlaylistTab({super.key});

  @override
  ConsumerState<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends ConsumerState<PlaylistTab> with BaseScreenView {
  int val = 0;
  int initialIndex = 0;
  late BottomNavigationViewModel _viewModel;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(bottomNavigationViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 2)).then((value) async {
      await _viewModel.allPlaylist(
          // LibraryListRequest(categoryId:AppCons

          // )
          );
      setState(() {
        initialIndex = 0;
      });
    });

    // _viewModel.getSubscriptionList();
  }

  List<String> chipsText = ["All", "featured", "Personal"];
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(bottomNavigationViewModel);
    return Scaffold(
      backgroundColor: Color(0xFF171718),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), child: CustomAppBar()),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF171718),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                    //     child: CustomSlidingSegmentedControl<int>(
                    //       initialValue: 1,
                    //       // innerPadding: EdgeInsets.all(8),
                    //       height: 35,
                    //       isShowDivider: true,
                    //       innerPadding: EdgeInsets.only(top: 0),
                    //       isStretch: true,
                    //       // fixedWidth: 80.w,
                    //       // fixedWidth: double.infinity,
                    //       children: {
                    //         1: Text(
                    //           "All",
                    //           style: TextStyle(
                    //             color:
                    //                 val == 1 ? Color(0xFF1AA2D9) : Colors.white,
                    //             fontSize: 10,
                    //             fontFamily: "Century",
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //         2: Text(
                    //           "Featured",
                    //           style: TextStyle(
                    //             color:
                    //                 val == 2 ? Color(0xFF1AA2D9) : Colors.white,
                    //             fontSize: 10,
                    //             fontFamily: "Century",
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //         3: Text(
                    //           "Personal",
                    //           style: TextStyle(
                    //             color:
                    //                 val == 3 ? Color(0xFF1AA2D9) : Colors.white,
                    //             fontSize: 10,
                    //             fontFamily: "Century",
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       },
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Color(0xFF6D6D6D)),
                    //         color: bgColor,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       dividerSettings: DividerSettings(
                    //           decoration:
                    //               BoxDecoration(color: Color(0xFF6D6D6D))),
                    //       thumbDecoration: BoxDecoration(
                    //         color: Color(0xFF161616),
                    //         border: Border.symmetric(
                    //           vertical: BorderSide(
                    //               // strokeAlign: BorderSide.strokeAlignCenter,
                    //               width: 1,
                    //               color: Color(0xFF6D6D6D)),
                    //         ),
                    //         borderRadius: BorderRadius.only(
                    //             topLeft: Radius.circular(val == 1
                    //                 ? 8
                    //                 : val == 2
                    //                     ? 0
                    //                     : 0),
                    //             bottomLeft: Radius.circular(val == 1
                    //                 ? 8
                    //                 : val == 2
                    //                     ? 0
                    //                     : 0),
                    //             topRight: Radius.circular(val == 3
                    //                 ? 8
                    //                 : val == 2
                    //                     ? 0
                    //                     : 0),
                    //             bottomRight: Radius.circular(val == 3
                    //                 ? 8
                    //                 : val == 2
                    //                     ? 0
                    //                     : 0)),
                    //       ),
                    //       duration: const Duration(milliseconds: 300),
                    //       curve: Curves.easeInToLinear,
                    //       onValueChanged: (v) {
                    //         // print(v);

                    //         setState(() {
                    //           val = v;
                    //         });
                    //         if (val == 1) {
                    //           setState(() {
                    //             _viewModel.featuredPlaylist();
                    //           });
                    //         } else if (val == 2) {
                    //           setState(() {
                    //             _viewModel.getpersonalPlaylist();
                    //           });
                    //         } else if (val == 0) {
                    //           setState(() {
                    //             _viewModel.getPlaylistList();
                    //           });
                    //         } else {}
                    //       },
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ...List.generate(
                            3,
                            (index3) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      val = index3;
                                    });
                                    if (val == 1) {
                                      setState(() {
                                        _viewModel.featuredPlaylist();
                                        _scrollController.animateTo(
                                          _scrollController
                                              .position.minScrollExtent,
                                          duration: Duration(seconds: 2),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      });
                                    } else if (val == 2) {
                                      setState(() {
                                        _viewModel.getpersonalPlaylist();
                                        _scrollController.animateTo(
                                          _scrollController
                                              .position.minScrollExtent,
                                          duration: Duration(seconds: 2),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      });
                                    } else if (val == 0) {
                                      setState(() {
                                        _viewModel.getPlaylistList();
                                        _scrollController.animateTo(
                                          _scrollController
                                              .position.minScrollExtent,
                                          duration: Duration(seconds: 2),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      });
                                    } else {}
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    margin: EdgeInsets.fromLTRB(
                                        index3 == 0 ? 16 : 8,
                                        12,
                                        index3 == 2 ? 16 : 8,
                                        0),
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
                    Spacer(),
                    addPlaylist(context)
                  ],
                ),
              ],
            ),
          ),
          // gapH16,
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // gapH8,
                  _viewModel.isPlaylistLoading
                      ? Container()
                      : Container(
                          decoration: BoxDecoration(color: Color(0xFF27272a)),
                          height: MediaQuery.of(context).size.height / 4.8,
                          // width: MediaQuery.of(context).size.width / 1.6,
                          child: ListView.builder(
                            itemCount: val == 0
                                ? _viewModel.allPlaylistList.length ?? 0
                                : val == 1
                                    ? _viewModel.featuredList.length ?? 0
                                    : _viewModel.personalPlaylist.length ?? 0,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  initialIndex = index;
                                  setState(() {});
                                },
                                child: playlistSwiper(
                                    index,
                                    val == 0
                                        ? _viewModel.allPlaylistList
                                        : val == 1
                                            ? _viewModel.featuredList
                                            : _viewModel.personalPlaylist)),
                          ),
                        ),
                  gapH12,
                  _viewModel.isPlaylistLoading ? Container() : heading(),
                  _viewModel.isPlaylistLoading
                      ? Container()
                      : playlists(
                          context,
                          val == 0
                              ? _viewModel.allPlaylistList[initialIndex].videos
                              : val == 1
                                  ? _viewModel.featuredList[initialIndex].videos
                                  : _viewModel
                                      .personalPlaylist[initialIndex].videos)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container heading() {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF171718)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 16),
            child: Text(
              val == 0
                  ? _viewModel.allPlaylistList[initialIndex].name
                          ?.toUpperCase() ??
                      ""
                  : val == 1
                      ? _viewModel.featuredList[initialIndex].name
                              ?.toUpperCase() ??
                          ""
                      : _viewModel.personalPlaylist[initialIndex].name
                              ?.toUpperCase() ??
                          "",
              style: TextStyle(
                  fontFamily: "Good",
                  fontSize: 18,
                  color: Color(0xFF1AA2D9),
                  fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color:
                          // Colors.white
                          Color(0xFF171718)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 30,
                                  color: Color(0xFF1AA2D9),
                                ),
                                gapW16,
                                Text(
                                  "Playlist Details".toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Good",
                                      color: Color(0xFF1AA2D9),
                                      fontSize: 15),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: Icon(
                                Icons.close,
                                size: 30,
                                color: Color(0xFF7D7878),
                              ),
                            ),
                          ],
                        ),
                        gapH16,
                        Text(
                          "About".toUpperCase(),
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFD9D9D9)),
                        ),
                        gapH16,
                        Row(
                          children: [
                            Text(
                              (initialIndex == 0 && (val == 0 || val == 1))
                                  ? "Featured Playlist"
                                  : "Personal Playlist",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFB3B3BB)),
                            ),
                            gapW16,
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFB3B3BB)),
                            ),
                            gapW16,
                            Text(
                              "Video Count: ${val == 0 ? _viewModel.allPlaylistList[initialIndex].videos?.length ?? 0 : val == 1 ? _viewModel.featuredList[initialIndex].videos?.length ?? 0 : _viewModel.personalPlaylist[initialIndex].videos?.length ?? 0} Videos",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFB3B3BB)),
                            ),
                          ],
                        ),
                        gapH20,
                        Text(
                          "Description".toUpperCase(),
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFD9D9D9)),
                        ),
                        gapH16,
                        Text(
                          val == 0
                              ? _viewModel.allPlaylistList[initialIndex]
                                      .description ??
                                  ""
                              : val == 1
                                  ? _viewModel.featuredList[initialIndex]
                                          .description ??
                                      ""
                                  : _viewModel.personalPlaylist[initialIndex]
                                          .description ??
                                      "",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFFB3B3BB)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 16),
              child: Icon(
                Icons.info_outline,
                size: 30,
                color: Color(0xFF1AA2D9),
              ),
            ),
          ),

          //   InkWell(
          //     onTap: () {
          //       setState(() {
          //         val == 0
          //             ? _viewModel.allPlaylistList[initialIndex].videos?.shuffle()
          //             : val == 1
          //                 ? _viewModel.featuredList[initialIndex].videos
          //                     ?.shuffle()
          //                 : _viewModel.personalPlaylist[initialIndex].videos
          //                     ?.shuffle();
          //       });
          //     },
          //     child: Container(
          //       margin: EdgeInsets.only(top: 0, bottom: 16, left: 16, right: 16),
          //       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(9),
          //           border: Border.all(color: Color(0xFF1AA2D9), width: 2)),
          //       child: Row(
          //         children: [
          //           Image.asset(
          //             "assets/icons/shuffle.png",
          //             height: 14,
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }

  InkWell addPlaylist(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              insetPadding: EdgeInsets.zero,
              titlePadding: EdgeInsets.zero,
              backgroundColor: Color(0xFF171718),
              surfaceTintColor: Color(0xFF171718),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NEW Playlist'.toUpperCase(),
                          style:
                              TextStyle(color: Color(0xFF008BC3), fontSize: 16),
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.black,
                        hintText: "Playlist Name",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            ))),
                  ),
                  gapH8,
                  TextFormField(
                    // maxLines: 6,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.black,
                        hintText: "Playlist description",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            ))),
                  ),
                  gapH8,
                  TextFormField(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        filled: true,
                        fillColor: Colors.black,
                        hintText: "Select a video to add to playlist",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFF323234),
                            ))),
                  ),
                  gapH16,
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: Text(
                    'Cancel'.toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xFF008BC3),
                          borderRadius: BorderRadius.circular(9)),
                      child: const Text(
                        'CREATE',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                  onPressed: () {
                    // Handle the submit action
                  },
                ),
              ],
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 8, 16, 0),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFF1AA2D9))),
        child: Icon(
          Icons.add,
          size: 18,
          color: Color(0xFF1AA2D9),
        ),
      ),
    );
  }

  Widget playlistSwiper(int index, List<playlist.ExistingVideo> videosList) {
    return Container(
      padding: EdgeInsets.all(8),

      // width: double.infinity,
      width: MediaQuery.of(context).size.width / 1.2,
      // height: 4,

      child: Container(
          padding: EdgeInsets.all(16),
          // width: MediaQuery.of(context).size.width / 2.3,
          // height: 150,
          // width: 150,
          decoration: BoxDecoration(
              color: Color(0xFF171718),
              boxShadow: [
                initialIndex == index
                    ? BoxShadow(
                        color: Color(0xFF3CB4E4).withOpacity(0.2),
                        blurRadius: 3,
                        spreadRadius: 4)
                    : BoxShadow()
              ],
              border: Border.all(
                  color: initialIndex != index
                      ? Colors.transparent
                      : Color(0xFF3CB4E4)),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/stack_playlist.png",
                    height: 70,
                  ),
                  gapW10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 3.5),
                        child: Text(
                          videosList[index].name ?? "",
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                      Text(
                        (index == 0 && (val == 0 || val == 1))
                            ? "Featured Playlist"
                            : "Personal Playlist",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
              gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${videosList[index].videos?.length ?? 0} Videos",
                    style: TextStyle(
                        color: Color(0xFF1AA2D9),
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                  InkWell(
                    onTap: () {
                      context.pushNamed(
                        AppRoute.videoPageView.name,
                        pathParameters: {
                          'id': videosList.first.videos?.first.id ?? ""
                        },
                      );
                      // navigateToScreen(AppRoute.videoPageView);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFF1AA2D9),
                          )),
                      child: Row(
                        children: [
                          Text(
                            "Play All".toUpperCase(),
                            style: TextStyle(
                                color: Color(0xFF1AA2D9),
                                fontWeight: FontWeight.w700,
                                fontSize: 13),
                          ),
                          Icon(
                            Icons.play_arrow,
                            color: Color(0xFF1AA2D9),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Widget playlists(BuildContext context, List<playlist.Video>? videoList) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Color(0xFF171718),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisExtent: MediaQuery.of(context).size.height / 3.7),
          shrinkWrap: true,
          itemCount: videoList?.length ?? 0,
          itemBuilder: (context, index) => LibraryItems(
                items: videoList![index],
                viewModel: _viewModel,
              )),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}

class LibraryItems extends StatefulWidget {
  const LibraryItems({
    super.key,
    required BottomNavigationViewModel viewModel,
    required this.items,
  }) : _viewModel = viewModel;

  final playlist.Video items;
  final BottomNavigationViewModel _viewModel;

  @override
  State<LibraryItems> createState() => _LibraryItemsState();
}

class _LibraryItemsState extends State<LibraryItems> with BaseScreenView {
  bool isSaved = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSaved = widget.items.wishlist ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          AppRoute.videoPageView.name,
          pathParameters: {'id': widget.items.id ?? ""},
        );
        // navigateToScreen(AppRoute.videoPageView);
      },
      child: Container(
        // height: MediaQuery.of(context).size.height / 3,
        color: Color(0xFF171718),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
                height: 80.h,
                imageUrl: widget.items.thumnailLink ?? "",
                imageBuilder: (context, imageProvider) {
                  return Container(
                    // margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                    height: 80.h,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: imageProvider)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 8, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/icons/save.png",
                                height: 14,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 2, 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Color(0xFF27272A),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                  "${convertTime(widget.items?.duration ?? 100)}",
                                  // (((widget.items.duration ?? 100) / 60)
                                  // .toStringAsFixed(2)),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  isSaved = !isSaved;
                                  setState(() {});
                                  if (isSaved) {
                                    widget._viewModel
                                        .saveVideo(widget.items.id ?? "");
                                  } else {
                                    widget._viewModel
                                        .unSaveVideo(widget.items.id ?? "");
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
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
                  );
                }),
            gapH8,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Text(
                (widget.items.title ?? "Title Not Available").toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 11.9,
                    color: Colors.white,
                    height: 0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8, left: 0),
              child: Wrap(
                runSpacing: 6,
                children: [
                  //   Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  //     decoration: BoxDecoration(
                  //         color: Color(0xFF4A023F),
                  //         borderRadius: BorderRadius.circular(4)),
                  //     child: Text(
                  //       "EXERCISE",
                  //       style: TextStyle(
                  //           fontSize: 8,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white),
                  //     ),
                  //   ),
                  //   gapW8,
                  //   Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  //     decoration: BoxDecoration(
                  //         color: Color(0xFF014966),
                  //         borderRadius: BorderRadius.circular(4)),
                  //     child: Text(
                  //       "STRENGTH",
                  //       style: TextStyle(
                  //           fontSize: 8,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white),
                  //     ),
                  //   )

                  ...List.generate(
                    widget.items.tagsData?.length ?? 0,
                    (index2) => Container(
                      constraints: BoxConstraints(maxWidth: 80),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          color: HexColor.fromHex(
                              widget.items.tagsData?[index2].color ??
                                  "0xFFFFFF"),
                          // Color(items?.tagsDetails?[index2].color
                          //         .replaceAll("#", "0xFF") ??
                          //     Colors.black),
                          borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        (widget.items.tagsData?[index2].name ?? "")
                            .toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
            gapH4,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
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

  String convertTime(int time) {
    print(time);
    int originalDuration = time;

    int hours = originalDuration ~/ 60;
    int minutes = originalDuration % 60;

    String newTime =
        '${hours.toString()}:${minutes.toString().padLeft(2, '0')}';

    return newTime;
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
