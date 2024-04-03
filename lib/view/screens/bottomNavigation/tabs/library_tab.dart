import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/data/home/models/get_playlist_model.dart';
import 'package:ondemand/data/home/models/library_list_model.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view_model.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';

class LibraryView extends ConsumerStatefulWidget {
  const LibraryView({super.key});

  @override
  ConsumerState<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends ConsumerState<LibraryView> with BaseScreenView {
  int val = 0;
  final ScrollController _scrollController = ScrollController();

  bool isDurationOpen = false;
  bool isFocusOpen = false;
  bool isStrengthOpen = false;
  List<String> chipsText = [
    "ALL",
    "LESSONS",
    "EXERCISES",
    "ACROSS THE FLOOR",
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
      _viewModel.setVideoList(
        val,
      );
      await _viewModel.getPlaylistList();

      _viewModel.durations.clear();
      _viewModel.focus.clear();
      _viewModel.strength.clear();
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
          preferredSize: Size.fromHeight(40), child: CustomAppBar()),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF171718),
            ),
            child: Column(
              children: [
                //   Padding(
                //     padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                //     child: CustomSlidingSegmentedControl<int>(
                //       initialValue: 1,
                //       // innerPadding: EdgeInsets.all(8),
                //       height: 35,

                //       innerPadding: EdgeInsets.only(top: 0),
                //       isStretch: true,
                //       // fixedWidth: 80.w,
                //       // fixedWidth: double.infinity,
                //       children: {
                //         1: Text(
                //           "Lessons".toUpperCase(),
                //           style: TextStyle(
                //             color: val == 1 ? Color(0xFF1AA2D9) : Colors.white,
                //             fontSize: 10,
                //             fontFamily: "Century",
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         2: Text(
                //           "Exercises".toUpperCase(),
                //           style: TextStyle(
                //             color: val == 2 ? Color(0xFF1AA2D9) : Colors.white,
                //             fontSize: 10,
                //             fontFamily: "Century",
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         3: Text(
                //           "Across the Floor".toUpperCase(),
                //           style: TextStyle(
                //             color: val == 3 ? Color(0xFF1AA2D9) : Colors.white,
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
                //       thumbDecoration: BoxDecoration(
                //         color: Color(0xFF161616),
                //         border: Border.symmetric(
                //             vertical: BorderSide(color: Color(0xFF6D6D6D))),
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
                //           _viewModel.setVideoList(
                //             val,
                //           );
                //         });
                //       },
                //     ),
                //   ),
                SingleChildScrollView(
                  // controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ...List.generate(
                          4,
                          (index3) => InkWell(
                                onTap: () {
                                  setState(() {
                                    val = index3;
                                  });
                                  _viewModel.setVideoList(
                                    val,
                                  );
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
              ],
            ),
          ),
          // gapH16,
          gapH8,
          Container(
            decoration: BoxDecoration(color: Color(0xFF171718)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _viewModel.libraryList.shuffle();
                    setState(() {});
                    print(_viewModel.libraryList.length);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(top: 0, bottom: 8, left: 16, right: 16),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: Color(0xFF1AA2D9), width: 2)),
                    child: Row(
                      children: [
                        Text(
                          "SHUFFLE",
                          style: TextStyle(
                              fontFamily: "Good",
                              color: Color(0xFF1AA2D9),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        gapW12,
                        Image.asset(
                          "assets/icons/shuffle.png",
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    filterSheet(context),
                    sortbySheet(context),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Color(0xFF171718),
              child: GridView.builder(
                controller: _scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisExtent: MediaQuery.of(context).size.height / 4.3),
                shrinkWrap: true,
                itemCount: _viewModel.libraryList.length ?? 0,
                itemBuilder: (context, index) => LibraryItems(
                  viewModel: _viewModel,
                  val: val,
                  items: _viewModel.libraryList[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell filterSheet(BuildContext context) {
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color(0xFF008BC3),
                            borderRadius: BorderRadius.circular(9)),
                        child: const Text(
                          'RESET',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                    onPressed: () {
                      _viewModel.durations.clear();
                      _viewModel.focus.clear();
                      _viewModel.strength.clear();

                      _viewModel.setSortBy(
                          _viewModel.sortBy ?? AppConstants.latest,
                          val,
                          context);
                      // Handle the submit action
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
                          'SAVE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                    onPressed: () {
                      _viewModel.setSortBy(
                          _viewModel.sortBy ?? AppConstants.latest,
                          val,
                          context);
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
                            'Filters'.toUpperCase(),
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
                    InkWell(
                      onTap: () {
                        isDurationOpen = !isDurationOpen;
                        setSt(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration",
                            style: TextStyle(
                                color: Color(0xFF3CB4E4), fontSize: 14),
                          ),
                          Icon(
                            isDurationOpen
                                ? Icons.expand_more
                                : Icons.arrow_forward_ios,
                            size: isDurationOpen ? 35 : 25,
                            color: Color(0xFF3CB4E4),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: isDurationOpen,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.durations.contains("5")) {
                                    _viewModel.durations.remove("5");
                                  } else {
                                    _viewModel.durations.add("5");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(">5 Minutes"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.durations
                                                  .contains("5")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.durations
                                                      .contains("5")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color:
                                            _viewModel.durations.contains("5")
                                                ? Colors.white
                                                : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.durations.contains("10")) {
                                    _viewModel.durations.remove("10");
                                  } else {
                                    _viewModel.durations.add("10");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("5 - 10 Minutes"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.durations
                                                  .contains("10")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.durations
                                                      .contains("10")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color:
                                            _viewModel.durations.contains("10")
                                                ? Colors.white
                                                : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.durations.contains("15")) {
                                    _viewModel.durations.remove("15");
                                  } else {
                                    _viewModel.durations.add("15");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("10 - 15 Minutes"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.durations
                                                  .contains("15")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.durations
                                                      .contains("15")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color:
                                            _viewModel.durations.contains("15")
                                                ? Colors.white
                                                : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.durations.contains("16")) {
                                    _viewModel.durations.remove("16");
                                  } else {
                                    _viewModel.durations.add("16");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("< 15 Minutes"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.durations
                                                  .contains("16")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.durations
                                                      .contains("16")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color:
                                            _viewModel.durations.contains("16")
                                                ? Colors.white
                                                : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    gapH8,
                    InkWell(
                      onTap: () {
                        isFocusOpen = !isFocusOpen;
                        setSt(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Focus",
                            style: TextStyle(
                                color: Color(0xFF3CB4E4), fontSize: 14),
                          ),
                          Icon(
                            isFocusOpen
                                ? Icons.expand_more
                                : Icons.arrow_forward_ios,
                            size: isFocusOpen ? 35 : 25,
                            color: Color(0xFF3CB4E4),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: isFocusOpen,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("6541eb0ff1f99641d644a37d")) {
                                    _viewModel.focus
                                        .remove("6541eb0ff1f99641d644a37d");
                                  } else {
                                    _viewModel.focus
                                        .add("6541eb0ff1f99641d644a37d");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Strength"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "6541eb0ff1f99641d644a37d")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "6541eb0ff1f99641d644a37d")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "6541eb0ff1f99641d644a37d")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("6565b7a5e7fe9cfc044933fc")) {
                                    _viewModel.focus
                                        .remove("6565b7a5e7fe9cfc044933fc");
                                  } else {
                                    _viewModel.focus
                                        .add("6565b7a5e7fe9cfc044933fc");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Flexibility"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "6565b7a5e7fe9cfc044933fc")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "6565b7a5e7fe9cfc044933fc")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "6565b7a5e7fe9cfc044933fc")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("6565f35a3e1f9b2470ce1e1d")) {
                                    _viewModel.focus
                                        .remove("6565f35a3e1f9b2470ce1e1d");
                                  } else {
                                    _viewModel.focus
                                        .add("6565f35a3e1f9b2470ce1e1d");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Turns"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "6565f35a3e1f9b2470ce1e1d")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "6565f35a3e1f9b2470ce1e1d")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "6565f35a3e1f9b2470ce1e1d")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("6565f35e3e1f9b2470ce1e2d")) {
                                    _viewModel.focus
                                        .remove("6565f35e3e1f9b2470ce1e2d");
                                  } else {
                                    _viewModel.focus
                                        .add("6565f35e3e1f9b2470ce1e2d");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jumps"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "6565f35e3e1f9b2470ce1e2d")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "6565f35e3e1f9b2470ce1e2d")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "6565f35e3e1f9b2470ce1e2d")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("65763ac421a48327d2f79386")) {
                                    _viewModel.focus
                                        .remove("65763ac421a48327d2f79386");
                                  } else {
                                    _viewModel.focus
                                        .add("65763ac421a48327d2f79386");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Warmup"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "65763ac421a48327d2f79386")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "65763ac421a48327d2f79386")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "65763ac421a48327d2f79386")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.focus
                                      .contains("6565f37b3e1f9b2470ce1e86")) {
                                    _viewModel.focus
                                        .remove("6565f37b3e1f9b2470ce1e86");
                                  } else {
                                    _viewModel.focus
                                        .add("6565f37b3e1f9b2470ce1e86");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Breakdown"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.focus.contains(
                                                  "6565f37b3e1f9b2470ce1e86")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.focus.contains(
                                                      "6565f37b3e1f9b2470ce1e86")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.focus.contains(
                                                "6565f37b3e1f9b2470ce1e86")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    gapH8,
                    InkWell(
                      onTap: () {
                        isStrengthOpen = !isStrengthOpen;
                        setSt(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Level",
                            style: TextStyle(
                                color: Color(0xFF3CB4E4), fontSize: 14),
                          ),
                          Icon(
                            isStrengthOpen
                                ? Icons.expand_more
                                : Icons.arrow_forward_ios,
                            size: isStrengthOpen ? 35 : 25,
                            color: Color(0xFF3CB4E4),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: isStrengthOpen,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.strength
                                      .contains("Beginner")) {
                                    _viewModel.strength.remove("Beginner");
                                  } else {
                                    _viewModel.strength.add("Beginner");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Beginner"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.strength
                                                  .contains("Beginner")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.strength
                                                      .contains("Beginner")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.strength
                                                .contains("Beginner")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.strength
                                      .contains("Intermediate")) {
                                    _viewModel.strength.remove("Intermediate");
                                  } else {
                                    _viewModel.strength.add("Intermediate");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Intermediate"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.strength
                                                  .contains("Intermediate")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.strength
                                                      .contains("Intermediate")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.strength
                                                .contains("Intermediate")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            gapH4,
                            InkWell(
                              onTap: () {
                                setSt(() {
                                  if (_viewModel.strength
                                      .contains("Advanced")) {
                                    _viewModel.strength.remove("Advanced");
                                  } else {
                                    _viewModel.strength.add("Advanced");
                                  }
                                });
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Advanced"),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: !_viewModel.strength
                                                  .contains("Advanced")
                                              ? Colors.transparent
                                              : Color(0xFF008BC3),
                                          border: Border.all(
                                              color: _viewModel.strength
                                                      .contains("Advanced")
                                                  ? Colors.transparent
                                                  : Colors.white)),
                                      child: Icon(
                                        Icons.check,
                                        size: 10,
                                        color: _viewModel.strength
                                                .contains("Advanced")
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
          },
        );
      },
      child: Container(
          margin: EdgeInsets.only(top: 0, bottom: 8, left: 16, right: 0),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: Color(0xFF71717A))),
          child: Image.asset(
            "assets/icons/filter.png",
            height: 15,
            width: 15,
          )),
    );
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
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Color(0xFF008BC3),
                              borderRadius: BorderRadius.circular(9)),
                          child: const Text(
                            'RESET',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      onPressed: () {
                        _viewModel.durations.clear();
                        _viewModel.focus.clear();
                        _viewModel.strength.clear();

                        _viewModel.setSortBy(
                            _viewModel.sortBy ?? AppConstants.latest,
                            val,
                            context);
                        // Handle the submit action
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
                            'SAVE',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      onPressed: () {
                        _viewModel.setSortBy(
                            _viewModel.sortBy ?? AppConstants.latest,
                            val,
                            context);
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
                            _viewModel.getAllPlaylistResponse?.length ?? 0,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setSt(() {
                                            if (_viewModel.selectedPlayList
                                                .contains(_viewModel
                                                        .getAllPlaylistResponse?[
                                                    index])) {
                                              _viewModel.selectedPlayList
                                                  .remove(_viewModel
                                                          .getAllPlaylistResponse?[
                                                      index]);
                                            } else {
                                              _viewModel.selectedPlayList.add(_viewModel
                                                          .getAllPlaylistResponse?[
                                                      index] ??
                                                  GetAllPlaylistResponse(
                                                      label: _viewModel
                                                          .getAllPlaylistResponse?[
                                                              index]
                                                          .label,
                                                      value: _viewModel
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(_viewModel
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
                                                    color: !_viewModel
                                                            .selectedPlayList
                                                            .contains(_viewModel
                                                                    .getAllPlaylistResponse?[
                                                                index])
                                                        ? Colors.transparent
                                                        : Color(0xFF008BC3),
                                                    border: Border.all(
                                                        color: _viewModel
                                                                .selectedPlayList
                                                                .contains(
                                                                    _viewModel.getAllPlaylistResponse?[index])
                                                            ? Colors.transparent
                                                            : Colors.white)),
                                                child: Icon(
                                                  Icons.check,
                                                  size: 10,
                                                  color: _viewModel
                                                          .selectedPlayList
                                                          .contains(_viewModel
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
      child: Container(
          margin: EdgeInsets.only(top: 0, bottom: 8, left: 16, right: 0),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: Color(0xFF71717A))),
          child: Image.asset(
            "assets/icons/filter.png",
            height: 15,
            width: 15,
          )),
    );
  }

  InkWell sortbySheet(BuildContext context) {
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
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.latest, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.latest, val, context);
                      },
                      child: Container(
                          width: double.infinity, child: Text("Latest"))),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.latest, val, context);
                      },
                      child: gapH8),
                  InkWell(
                    onTap: () {
                      _viewModel.setSortBy(AppConstants.latest, val, context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),

                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.oldest, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.oldest, val, context);
                      },
                      child: Container(
                          width: double.infinity, child: Text("Oldest"))),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(AppConstants.oldest, val, context);
                      },
                      child: gapH8),
                  InkWell(
                    onTap: () {
                      _viewModel.setSortBy(AppConstants.oldest, val, context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_asc, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_asc, val, context);
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text("Title (A - Z)"))),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_asc, val, context);
                      },
                      child: gapH8),
                  InkWell(
                    onTap: () {
                      _viewModel.setSortBy(
                          AppConstants.title_asc, val, context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_desc, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_desc, val, context);
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text("Title (Z - A)"))),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.title_desc, val, context);
                      },
                      child: gapH8),
                  InkWell(
                    onTap: () {
                      _viewModel.setSortBy(
                          AppConstants.title_desc, val, context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.long_duration, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.long_duration, val, context);
                      },
                      child: Container(
                          width: double.infinity, child: Text("Longest"))),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.long_duration, val, context);
                      },
                      child: gapH8),

                  InkWell(
                    onTap: () {
                      _viewModel.setSortBy(
                          AppConstants.short_duration, val, context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.short_duration, val, context);
                      },
                      child: gapH8),
                  InkWell(
                      onTap: () {
                        _viewModel.setSortBy(
                            AppConstants.short_duration, val, context);
                      },
                      child: Container(
                          width: double.infinity, child: Text("Shortest"))),
                  // gapH8,
                  // Container(
                  //   width: double.infinity,
                  //   height: 1,
                  //   color: Colors.white.withOpacity(0.1),
                  // ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 0, bottom: 8, left: 8, right: 16),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: Color(0xFF71717A))),
        child: Row(
          children: [
            Text(
              "Sort by",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            gapW6,
            Text(
              _viewModel.sortBy == AppConstants.latest
                  ? "Latest"
                  : _viewModel.sortBy == AppConstants.oldest
                      ? "Oldest"
                      : _viewModel.sortBy == AppConstants.title_asc
                          ? "Title (A - Z)"
                          : _viewModel.sortBy == AppConstants.title_desc
                              ? "Title (Z - A)"
                              : _viewModel.sortBy == AppConstants.long_duration
                                  ? "Longest"
                                  : _viewModel.sortBy ==
                                          AppConstants.short_duration
                                      ? "Shortest"
                                      : "Latest",
              style: TextStyle(
                  color: Color(0xFF71717A),
                  fontWeight: FontWeight.w700,
                  fontSize: 10.5),
            ),
            gapW6,
            Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
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

class LibraryItems extends StatefulWidget {
  final int val;
  const LibraryItems({
    super.key,
    required BottomNavigationViewModel viewModel,
    required this.items,
    required this.val,
  }) : _viewModel = viewModel;

  final Video items;
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
    isSaved = widget.items.savedvideo ?? false;
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
                            children: [getPlaylist(context)],
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
                    widget.items.tagsDetails != null
                        ? widget.items.tagsDetails!.length - 1 != -1
                            ? widget.items.tagsDetails!.length
                            : widget.items.tagsDetails?.length ?? 0
                        : widget.items.tagsDetails?.length ?? 0,
                    (index2) => index2 == 0
                        ? Container()
                        : Container(
                            constraints: BoxConstraints(
                                maxWidth: widget.val == 3 ? 150 : 80),
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                color: HexColor.fromHex(
                                    widget.items.tagsDetails?[index2].color ??
                                        "0xFFFFFF"),
                                // Color(items?.tagsDetails?[index2].color
                                //         .replaceAll("#", "0xFF") ??
                                //     Colors.black),
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              (widget.items.tagsDetails?[index2].name ?? "")
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
                timeago.format(widget.items.releaseDateTime ?? DateTime.now()),
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
                          widget._viewModel
                              .addVideoToPlaylist(widget.items, context);
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
                              widget._viewModel.getAllPlaylistResponse
                                      ?.length ??
                                  0,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setSt(() {
                                              if (widget
                                                  ._viewModel.selectedPlayList
                                                  .contains(widget._viewModel
                                                          .getAllPlaylistResponse?[
                                                      index])) {
                                                widget
                                                    ._viewModel.selectedPlayList
                                                    .remove(widget._viewModel
                                                            .getAllPlaylistResponse?[
                                                        index]);
                                              } else {
                                                widget
                                                    ._viewModel.selectedPlayList
                                                    .add(widget._viewModel
                                                                .getAllPlaylistResponse?[
                                                            index] ??
                                                        GetAllPlaylistResponse(
                                                            label: widget
                                                                ._viewModel
                                                                .getAllPlaylistResponse?[
                                                                    index]
                                                                .label,
                                                            value: widget
                                                                ._viewModel
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
                                                        ._viewModel
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
                                                      color: !widget._viewModel
                                                              .selectedPlayList
                                                              .contains(widget
                                                                      ._viewModel
                                                                      .getAllPlaylistResponse?[
                                                                  index])
                                                          ? Colors.transparent
                                                          : Color(0xFF008BC3),
                                                      border: Border.all(
                                                          color: widget
                                                                  ._viewModel
                                                                  .selectedPlayList
                                                                  .contains(widget._viewModel.getAllPlaylistResponse?[index])
                                                              ? Colors.transparent
                                                              : Colors.white)),
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 10,
                                                    color: widget._viewModel
                                                            .selectedPlayList
                                                            .contains(widget
                                                                    ._viewModel
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
          height: 14,
        ));
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
