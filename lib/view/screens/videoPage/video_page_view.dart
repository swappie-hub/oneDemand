import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:intl/intl.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/videoDetail/models/add_comments_model.dart';
import 'package:ondemand/data/videoDetail/models/video_detail_model.dart'
    as Products;
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view_model.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';
import 'package:ondemand/view/screens/login/login_view_model.dart';
import 'package:ondemand/view/screens/videoPage/video_page_view_model.dart';
import 'package:pod_player/pod_player.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPageView extends ConsumerStatefulWidget {
  final String id;
  const VideoPageView({required this.id, super.key});

  @override
  ConsumerState<VideoPageView> createState() => _VideoPageViewState();
}

class _VideoPageViewState extends ConsumerState<VideoPageView>
    with BaseScreenView {
  PodPlayerController? controller;
  late VideoPageViewModel _viewModel;
  late LoginViewModel _viewModel2;

  bool isSaved = false;
  bool isBottomSheetopen = false;
  String videoID = "";
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _viewModel = ref.read(videoPageViewModel);
    _viewModel2 = ref.read(authViewModel);

    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 200)).then((value) async {
      await _viewModel.getVideoDetails(widget.id).then((value) async {
        Uri uri = await Uri.parse(
            _viewModel.videoDetailResponse?.first.videolink ?? "");
        print("this is the video id" + uri.toString());

        videoID = await uri.pathSegments.last;

        print("this is the video id" + videoID);
        String token = "8cbbea3472c5fce4625f7d61ee437a86";
        final Map<String, String> headers = <String, String>{};
        headers['Authorization'] = 'Bearer ${token}';
        controller = await PodPlayerController(
          playVideoFrom: PlayVideoFrom.vimeoPrivateVideos(
              // _viewModel.videoDetailResponse?.videolink ?? "",
              videoID,
              httpHeaders: headers),
        )
          ..initialise();
      });
      controller?.pause();
      _viewModel.getComments(widget.id);
      await _viewModel.getPlaylistList();
      await _viewModel2.isSubscribed(context);

      isSaved = _viewModel.videoDetailResponse?.first.savedvideo ?? false;
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(videoPageViewModel);
    _viewModel2 = ref.watch(authViewModel);

    return Scaffold(
      backgroundColor: Color(0xFF171718),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: CustomAppBar(
            showBack: true,
          )),
      body: controller == null
          ? Container()
          : Column(
              children: [
                // controller?.isInitialised ?? false
                //     ?
                !(AppConstants.isSubscribed)
                    ? Container(
                        height: 100,
                        width: double.infinity,
                        child: Center(
                          child: Text("Please Subscribe"),
                        ),
                      )
                    : PodVideoPlayer(
                        alwaysShowProgressBar: true, controller: controller!),
                // : Center(
                //     child: CircularProgressIndicator(),
                //   ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH12,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width /
                                            1.98),
                                child: Text(
                                  (_viewModel.videoDetailResponse?.first
                                              .title ??
                                          "")
                                      .toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 7, 8, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSaved = !isSaved;
                                        });
                                        if (isSaved) {
                                          ref
                                              .read(bottomNavigationViewModel)
                                              .saveVideo(_viewModel
                                                      .videoDetailResponse
                                                      ?.first
                                                      .id ??
                                                  "");
                                        } else {
                                          ref
                                              .read(bottomNavigationViewModel)
                                              .unSaveVideo(_viewModel
                                                      .videoDetailResponse
                                                      ?.first
                                                      .id ??
                                                  "");
                                        }
                                      },
                                      child: Column(
                                        children: [
                                          isSaved
                                              ? Icon(
                                                  Icons.favorite_outline,
                                                  size: 20,
                                                  color: Colors.white,
                                                )
                                              : Icon(
                                                  Icons.favorite,
                                                  size: 20,
                                                  color: Colors.red,
                                                ),
                                          // Image.asset(
                                          //   "assets/icons/like.png",
                                          //   height: 18,
                                          //   color: Colors.white,
                                          // ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Save".toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    gapW8,
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return StatefulBuilder(builder:
                                                (BuildContext context, setSt) {
                                              return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  insetPadding: EdgeInsets.zero,
                                                  titlePadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Color(0xFF171718),
                                                  surfaceTintColor:
                                                      Color(0xFF171718),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 8,
                                                                  horizontal:
                                                                      16),
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xFF008BC3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9)),
                                                          child: const Text(
                                                            'SAVE',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15),
                                                          )),
                                                      onPressed: () {
                                                        _viewModel
                                                            .addVideoToPlaylistHome(
                                                                widget.id,
                                                                context);

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
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Add to playlist'
                                                                  .toUpperCase(),
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Good",
                                                                  color: Color(
                                                                      0xFF3CB4E4),
                                                                  fontSize: 16),
                                                            ),
                                                            InkWell(
                                                                onTap: () {
                                                                  context.pop();
                                                                },
                                                                child: Icon(
                                                                    Icons
                                                                        .close))
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Color(
                                                                    0xFF27272A)),
                                                      )
                                                    ],
                                                  ),
                                                  content: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        ...List.generate(
                                                            _viewModel
                                                                    .getAllPlaylistResponse
                                                                    ?.length ??
                                                                0,
                                                            (index) => Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          right:
                                                                              8),
                                                                  child: Column(
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          setSt(
                                                                              () {
                                                                            if (_viewModel.selectedPlayList.contains(_viewModel.getAllPlaylistResponse?[index])) {
                                                                              _viewModel.selectedPlayList.remove(_viewModel.getAllPlaylistResponse?[index]);
                                                                            } else {
                                                                              _viewModel.selectedPlayList.add(_viewModel.getAllPlaylistResponse?[index] ?? GetAllPlaylistResponse(label: _viewModel.getAllPlaylistResponse?[index].label, value: _viewModel.getAllPlaylistResponse?[index].value));
                                                                              // _viewModel.durations.add("5");
                                                                            }
                                                                          });
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(_viewModel.getAllPlaylistResponse?[index].label ?? ""),
                                                                              Container(
                                                                                height: 18,
                                                                                width: 18,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: !_viewModel.selectedPlayList.contains(_viewModel.getAllPlaylistResponse?[index]) ? Colors.transparent : Color(0xFF008BC3), border: Border.all(color: _viewModel.selectedPlayList.contains(_viewModel.getAllPlaylistResponse?[index]) ? Colors.transparent : Colors.white)),
                                                                                child: Icon(
                                                                                  Icons.check,
                                                                                  size: 10,
                                                                                  color: _viewModel.selectedPlayList.contains(_viewModel.getAllPlaylistResponse?[index]) ? Colors.white : Colors.transparent,
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
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.playlist_add,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                          // gapH8,
                                          Text(
                                            "ADD to playlist".toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 8, top: 8, left: 16),
                          child: Wrap(
                            children: [
                              ...List.generate(
                                _viewModel.videoDetailResponse?.first
                                        .tagsDetails?.length ??
                                    0,
                                (index) => Container(
                                  margin: EdgeInsets.only(right: 8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: HexColor.fromHex(_viewModel
                                              .videoDetailResponse
                                              ?.first
                                              .tagsDetails?[index]
                                              .color ??
                                          "0xFFFFFF"),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    (_viewModel.videoDetailResponse?.first
                                                .tagsDetails?[index].name ??
                                            "")
                                        .toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => MoreDescriptionBottomSheet(
                                fulldescription: _viewModel
                                        .videoDetailResponse?.first.description
                                        ?.replaceAll("<p>", "")
                                        .replaceAll("</p>", "") ??
                                    "",
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Text(
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xFFACACAC)),
                                    _viewModel.videoDetailResponse?.first
                                            .description
                                            ?.replaceAll("<p>", "")
                                            .replaceAll("</p>", "") ??
                                        "",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                  ),
                                ),
                                _viewModel.videoDetailResponse?.first
                                            .description ==
                                        null
                                    ? Container()
                                    : Text(
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1AA2D9)),
                                        "  More")
                              ],
                            ),
                          ),
                        ),
                        _viewModel.videoDetailResponse?.first.productsData
                                    ?.isEmpty ??
                                true
                            ? Container()
                            : InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) => ProductsBottomSheet(
                                      products: _viewModel.videoDetailResponse
                                          ?.first.productsData,
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(
                                    "SHOW PRODUCTS SEEN IN VIDEO",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1AA2D9)),
                                  ),
                                ),
                              ),
                        gapH16,
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        gapH8,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "RECOMMENDED VIDEOS",
                            style: TextStyle(
                                fontFamily: "Good",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF149BD1)),
                          ),
                        ),
                        gapH8,
                        Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                _viewModel.recommendedVideoResponse?.length ??
                                    0,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                controller?.dispose();
                                context.pushReplacementNamed(
                                  AppRoute.videoPageView.name,
                                  pathParameters: {
                                    'id': _viewModel
                                            .recommendedVideoResponse?[index]
                                            .id ??
                                        ""
                                  },
                                );
                              },
                              child: CachedNetworkImage(
                                  imageUrl: _viewModel
                                          .recommendedVideoResponse?[index]
                                          .thumnailLink ??
                                      "",
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                          left: index == 0 ? 16 : 16,
                                          right: index == 9 ? 16 : 0),
                                      height: 89,
                                      width: 159,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: imageProvider)),
                                    );
                                  }),
                            ),
                          ),
                        ),
                        gapH8,
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 1,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                        GestureDetector(
                          onVerticalDragDown: (d) {
                            if (!isBottomSheetopen) {
                              isBottomSheetopen = true;
                              setState(() {});
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => ChatBottomSheet(
                                  videoID: widget.id,
                                  videoPageViewModel: _viewModel,
                                ),
                              ).then((value) {
                                isBottomSheetopen = false;
                                setState(() {});
                              });
                            }
                          },
                          onTap: () {
                            if (!isBottomSheetopen) {
                              isBottomSheetopen = true;
                              setState(() {});

                              showModalBottomSheet(
                                context: context,
                                builder: (context) => ChatBottomSheet(
                                  videoID: widget.id,
                                  videoPageViewModel: _viewModel,
                                ),
                              ).then((value) {
                                isBottomSheetopen = false;
                                setState(() {});
                              });
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(
                                0xFF171718,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    children: [
                                      gapH16,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "COMMUNITY CHAT",
                                            style: TextStyle(
                                                fontFamily: "Good",
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF1AA2D9)),
                                          ),
                                          Icon(
                                            Icons.expand_less_outlined,
                                            size: 40,
                                            color: Color(0xFF149BD1),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                gapH16,
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1b1b1c),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                                      ),
                                      gapW16,
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            if (!isBottomSheetopen) {
                                              isBottomSheetopen = true;
                                              setState(() {});
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (context) =>
                                                    ChatBottomSheet(
                                                  videoID: widget.id,
                                                  videoPageViewModel:
                                                      _viewModel,
                                                ),
                                              );
                                            } else {
                                              isBottomSheetopen = false;
                                              setState(() {});
                                            }
                                          },
                                          child: TextField(
                                            enabled: false,
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 16,
                                                    right: 16,
                                                    top: 4,
                                                    bottom: 4),
                                                filled: true,
                                                fillColor: Colors.black,
                                                hintText: "Write a comment",
                                                hintStyle: TextStyle(
                                                    color: Color(0xFF71717A),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        )),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                    )),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                    )),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ))),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          // navigateToScreen(AppRoute.subscriptionView);
                                        },
                                        child: Container(
                                          // width: double.infinity,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),

                                          // height: 39.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            gradient: LinearGradient(colors: [
                                              Color(0xFF033245),
                                              Color(0xFF51CBFC)
                                            ]),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "POST",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                gapH16,
                                _viewModel.commentsResponse?.comments?.length !=
                                        0
                                    ? Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 25,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: NetworkImage(_viewModel
                                                                      .commentsResponse
                                                                      ?.comments
                                                                      ?.first
                                                                      .image ??
                                                                  "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                                                    ),
                                                    gapW8,
                                                    Text(
                                                      _viewModel
                                                              .commentsResponse
                                                              ?.comments
                                                              ?.first
                                                              .userDetails
                                                              ?.first
                                                              .firstname ??
                                                          "",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11,
                                                          color: Color(
                                                              0xFf4A6C7A)),
                                                    ),
                                                    gapW8,
                                                    Text(
                                                      DateFormat('MMMM d, yyyy')
                                                          .format(_viewModel
                                                                  .commentsResponse
                                                                  ?.comments
                                                                  ?.first
                                                                  .createdAt ??
                                                              DateTime.now()),
                                                      // "September 14, 2023",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 8,
                                                          color: Color(
                                                              0xFf71717A)),
                                                    )
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.more_vert_outlined,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                child: Text(
                                                  _viewModel
                                                          .commentsResponse
                                                          ?.comments
                                                          ?.first
                                                          .content ??
                                                      "",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            gapH8,
                                          ],
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          "Tap here to join the chat! Ask any questions or share your insights.",
                                          style: TextStyle(
                                              color: Color(0xFFACACAC),
                                              fontSize: 11),
                                        ),
                                      ),
                                gapH32,
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

class MoreDescriptionBottomSheet extends StatelessWidget with BaseScreenView {
  final String fulldescription;
  const MoreDescriptionBottomSheet({
    super.key,
    required this.fulldescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(
          0xFF171718,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          gapH6,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                gapH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Color(0xFF149BD1),
                        ),
                        gapW8,
                        Text(
                          "DESCRIPTION",
                          style: TextStyle(
                              fontFamily: "Good",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF149BD1)),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(
                          size: 40,
                          Icons.expand_more_outlined,
                          color: Color(0xFF149BD1),
                        ))
                  ],
                ),
              ],
            ),
          ),
          gapH16,
          InkWell(
            onTap: () {
              String? extractedUrl = extractUrl(fulldescription);
              launchUrl(Uri.parse(extractedUrl ?? ""));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // child: Text(
              //   fulldescription,
              //   style: TextStyle(fontSize: 11),
              // ),
              child: Html(
                data: fulldescription,
                // padding: EdgeInsets.all(8.0),
                onLinkTap: (url, attributes, element) =>
                    {launchUrl(Uri.parse(url ?? ""))},
                // onLinkTap: (url) {
                //   print("Opening $url...");
                // },
              ),
            ),
          ),
          gapH32,
        ],
      ),
    );
  }

  String? extractUrl(String htmlString) {
    RegExp regExp = RegExp(
      r'(https?://[^\s]+)',
      caseSensitive: false,
      multiLine: false,
    );

    final matches = regExp.allMatches(htmlString);
    for (final Match match in matches) {
      return match.group(0); // Return the first URL found
    }
    return null; // No URL found
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    // context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}

class ProductsBottomSheet extends StatefulWidget {
  final List<Products.ProductsDatum>? products;
  const ProductsBottomSheet({
    super.key,
    this.products,
  });

  @override
  State<ProductsBottomSheet> createState() => _ProductsBottomSheetState();
}

class _ProductsBottomSheetState extends State<ProductsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(
          0xFF171718,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                gapH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "PRODUCTS SEEN IN VIDEO",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF149BD1)),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(Icons.close))
                  ],
                ),
              ],
            ),
          ),
          gapH16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.products?.length ?? 0,
                (index) => InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        "https://thegodfreymethod.com/products/" +
                                widget.products![index].handle.toString() ??
                            ""));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        height: 100,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            // shape: BoxShape.circle
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    widget.products?[index].images?[0].src ??
                                        ""))),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://thegodfreymethod.com/products/" +
                                      widget.products![index].handle
                                          .toString() ??
                                  ""));
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white)),
                          child: Text(
                            "SHOP NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          gapH32,
        ],
      ),
    );
  }
}

class ChatBottomSheet extends ConsumerStatefulWidget {
  final VideoPageViewModel videoPageViewModel;
  final String videoID;
  const ChatBottomSheet({
    super.key,
    required this.videoPageViewModel,
    required this.videoID,
  });

  @override
  ConsumerState<ChatBottomSheet> createState() => _ChatBottomSheetState();
}

class _ChatBottomSheetState extends ConsumerState<ChatBottomSheet>
    with BaseScreenView {
  bool showReply = true;
  FocusNode f1 = FocusNode();
  TextEditingController _commentsController = new TextEditingController();
  String replyid = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Color(
          0xFF171718,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                gapH10,
                Container(
                  height: 4,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF9a989b),
                      borderRadius: BorderRadius.circular(10)),
                ),
                gapH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "COMMUNITY CHAT",
                          style: TextStyle(
                              fontFamily: "Good",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1AA2D9)),
                        ),
                        gapW10,
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Color(0xFF014966),
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            widget.videoPageViewModel?.commentsResponse?.total
                                    .toString() ??
                                "0",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        Icons.expand_more_outlined,
                        size: 40,
                        color: Color(0xFF149BD1),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          gapH16,
          Container(
            margin: EdgeInsets.only(left: 16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xFF1b1b1c),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8))),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                ),
                gapW16,
                Expanded(
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    controller: _commentsController,
                    focusNode: f1,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 16, right: 16, top: 4, bottom: 4),
                        filled: true,
                        fillColor: Colors.black,
                        hintText: "Write a comment",
                        hintStyle: TextStyle(
                            color: Color(0xFF71717A),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ))),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ref
                        .watch(videoPageViewModel)
                        .addComments(
                            AddCommentsRequest(
                                content: _commentsController.text,
                                replyTo: replyid != "" ? replyid : null,
                                videoId: widget.videoID),
                            context)
                        .then((value) {
                      replyid = "";
                      _commentsController.clear();
                      setState(() {});
                    });
                    // navigateToScreen(AppRoute.subscriptionView);
                  },
                  child: Container(
                    // width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),

                    // height: 39.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          colors: [Color(0xFF033245), Color(0xFF51CBFC)]),
                    ),
                    child: Center(
                      child: Text(
                        "POST",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          gapH16,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: widget.videoPageViewModel.commentsResponse?.comments
                        ?.length ??
                    0,
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 1,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(widget
                                                .videoPageViewModel
                                                .commentsResponse
                                                ?.comments?[index]
                                                .image ??
                                            "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                              ),
                              gapW8,
                              Text(
                                widget
                                        .videoPageViewModel
                                        .commentsResponse
                                        ?.comments?[index]
                                        .userDetails
                                        ?.first
                                        .firstname ??
                                    "",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Color(0xFf4A6C7A)),
                              ),
                              gapW8,
                              Text(
                                DateFormat('MMMM d, yyyy').format(widget
                                        .videoPageViewModel
                                        .commentsResponse
                                        ?.comments?[index]
                                        .createdAt ??
                                    DateTime.now()),
                                // "September 14, 2023",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    color: Color(0xFf71717A)),
                              )
                            ],
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            widget.videoPageViewModel.commentsResponse
                                    ?.comments?[index].content ??
                                "",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                      gapH8,
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                showReply = !showReply;
                                setState(() {});
                              },
                              child: Text(
                                showReply ? "Hide Replies" : "View Replies",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Color(0xFF0B6386)),
                              ),
                            ),
                            gapW8,
                            InkWell(
                              onTap: () {
                                replyid = widget
                                        .videoPageViewModel
                                        .commentsResponse
                                        ?.comments?[index]
                                        .id ??
                                    "";
                                f1.requestFocus();
                              },
                              child: Text(
                                "Reply",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Color(0xFF78787A)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: showReply,
                        child: Column(
                          children: [
                            ...List.generate(
                                widget.videoPageViewModel.commentsResponse
                                        ?.comments?[index].replies?.length ??
                                    0,
                                (index2) => Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                            image: NetworkImage(widget
                                                                        .videoPageViewModel
                                                                        .commentsResponse
                                                                        ?.comments?[
                                                                            index]
                                                                        .replies?[
                                                                            index2]
                                                                        .images
                                                                        ?.isEmpty ??
                                                                    true
                                                                ? "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"
                                                                : widget
                                                                        .videoPageViewModel
                                                                        .commentsResponse
                                                                        ?.comments?[
                                                                            index]
                                                                        .replies?[
                                                                            index2]
                                                                        .images
                                                                        ?.first
                                                                        .url ??
                                                                    "https://img.freepik.com/premium-vector/businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-4382.jpg"))),
                                                  ),
                                                  gapW8,
                                                  Text(
                                                    widget
                                                            .videoPageViewModel
                                                            .commentsResponse
                                                            ?.comments?[index]
                                                            .replies?[index2]
                                                            .userDetails
                                                            ?.first
                                                            .firstname ??
                                                        "",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xFf4A6C7A)),
                                                  ),
                                                  gapW8,
                                                  Text(
                                                    DateFormat('MMMM d, yyyy')
                                                        .format(widget
                                                                .videoPageViewModel
                                                                .commentsResponse
                                                                ?.comments?[
                                                                    index]
                                                                .replies?[
                                                                    index2]
                                                                .createdAt ??
                                                            DateTime.now()),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8,
                                                        color:
                                                            Color(0xFf71717A)),
                                                  )
                                                ],
                                              ),
                                              Icon(
                                                Icons.more_vert_outlined,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16),
                                              child: Text(
                                                widget
                                                        .videoPageViewModel
                                                        .commentsResponse
                                                        ?.comments?[index]
                                                        .replies?[index2]
                                                        .content ??
                                                    "",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          gapH32,
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushReplacementNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message.toString()),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // TODO: implement showSnackbar
  }
}
