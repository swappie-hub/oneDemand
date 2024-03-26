import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/data/home/models/library_list_model.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/colors.dart';
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
  int val = 1;

  bool isDurationOpen = false;
  bool isFocusOpen = false;
  bool isStrengthOpen = false;

  late BottomNavigationViewModel _viewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _viewModel = ref.read(bottomNavigationViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 2)).then((value) async {
      _viewModel.toggleLoading();
      await _viewModel.getLibraryVideos(
        LibraryListRequest(
            categoryId: AppConstants.categoryIdForLesson,
            startIndex: 0,
            sortby: "latest",
            selectedDurations: "",
            selectedLevels: "",
            selectedTags: "",
            userId: "",
            endIndex: 500),

        // LibraryListRequest(categoryId:AppCons

        // )
      );
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
              color: Color(0xFF27272a),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: CustomSlidingSegmentedControl<int>(
                    initialValue: 1,
                    // innerPadding: EdgeInsets.all(8),
                    height: 35,

                    innerPadding: EdgeInsets.only(top: 0),
                    isStretch: true,
                    // fixedWidth: 80.w,
                    // fixedWidth: double.infinity,
                    children: {
                      1: Text(
                        "Lessons",
                        style: TextStyle(
                          color: val == 1 ? Color(0xFF1AA2D9) : Colors.white,
                          fontSize: 10,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      2: Text(
                        "Exercises",
                        style: TextStyle(
                          color: val == 2 ? Color(0xFF1AA2D9) : Colors.white,
                          fontSize: 10,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      3: Text(
                        "Across the Floor",
                        style: TextStyle(
                          color: val == 3 ? Color(0xFF1AA2D9) : Colors.white,
                          fontSize: 10,
                          fontFamily: "Century",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    },
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF6D6D6D)),
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    thumbDecoration: BoxDecoration(
                      color: Color(0xFF161616),
                      border: Border.symmetric(
                          vertical: BorderSide(color: Color(0xFF6D6D6D))),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(val == 1
                              ? 8
                              : val == 2
                                  ? 0
                                  : 0),
                          bottomLeft: Radius.circular(val == 1
                              ? 8
                              : val == 2
                                  ? 0
                                  : 0),
                          topRight: Radius.circular(val == 3
                              ? 8
                              : val == 2
                                  ? 0
                                  : 0),
                          bottomRight: Radius.circular(val == 3
                              ? 8
                              : val == 2
                                  ? 0
                                  : 0)),
                    ),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInToLinear,
                    onValueChanged: (v) {
                      // print(v);

                      setState(() {
                        val = v;
                        _viewModel.setVideoList(
                          val,
                        );
                      });
                    },
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
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                                builder: (BuildContext context, setSt) {
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
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        child: const Text(
                                          'RESET',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        )),
                                    onPressed: () {
                                      _viewModel.durations.clear();
                                      _viewModel.focus.clear();
                                      _viewModel.strength.clear();

                                      _viewModel.setSortBy(
                                          _viewModel.sortBy ??
                                              AppConstants.latest,
                                          val,
                                          context);
                                      // Handle the submit action
                                    },
                                  ),
                                  TextButton(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 16),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF008BC3),
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        child: const Text(
                                          'SAVE',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        )),
                                    onPressed: () {
                                      _viewModel.setSortBy(
                                          _viewModel.sortBy ??
                                              AppConstants.latest,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Filters'.toUpperCase(),
                                            style: TextStyle(
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
                                      decoration: BoxDecoration(
                                          color: Color(0xFF27272A)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Duration",
                                            style: TextStyle(
                                                color: Color(0xFF3CB4E4),
                                                fontSize: 14),
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
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setSt(() {
                                                  if (_viewModel.durations
                                                      .contains("5")) {
                                                    _viewModel.durations
                                                        .remove("5");
                                                  } else {
                                                    _viewModel.durations
                                                        .add("5");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(">5 Minutes"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .durations
                                                                  .contains("5")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .durations
                                                                      .contains(
                                                                          "5")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .durations
                                                                .contains("5")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                                  if (_viewModel.durations
                                                      .contains("10")) {
                                                    _viewModel.durations
                                                        .remove("10");
                                                  } else {
                                                    _viewModel.durations
                                                        .add("10");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("5 - 10 Minutes"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .durations
                                                                  .contains(
                                                                      "10")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .durations
                                                                      .contains(
                                                                          "10")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .durations
                                                                .contains("10")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                                  if (_viewModel.durations
                                                      .contains("15")) {
                                                    _viewModel.durations
                                                        .remove("15");
                                                  } else {
                                                    _viewModel.durations
                                                        .add("15");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("10 - 15 Minutes"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .durations
                                                                  .contains(
                                                                      "15")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .durations
                                                                      .contains(
                                                                          "15")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .durations
                                                                .contains("15")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                                  if (_viewModel.durations
                                                      .contains("16")) {
                                                    _viewModel.durations
                                                        .remove("16");
                                                  } else {
                                                    _viewModel.durations
                                                        .add("16");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("< 15 Minutes"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .durations
                                                                  .contains(
                                                                      "16")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .durations
                                                                      .contains(
                                                                          "16")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .durations
                                                                .contains("16")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                    // InkWell(
                                    //   onTap: () {
                                    //     isFocusOpen = !isFocusOpen;
                                    //     setSt(() {});
                                    //   },
                                    //   child: Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Text(
                                    //         "Focus",
                                    //         style: TextStyle(
                                    //             color: Color(0xFF3CB4E4),
                                    //             fontSize: 14),
                                    //       ),
                                    //       Icon(
                                    //         isFocusOpen
                                    //             ? Icons.expand_more
                                    //             : Icons.arrow_forward_ios,
                                    //         size: isFocusOpen ? 35 : 25,
                                    //         color: Color(0xFF3CB4E4),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),
                                    // Visibility(
                                    //   visible: isFocusOpen,
                                    //   child: Padding(
                                    //     padding:
                                    //         const EdgeInsets.only(right: 8),
                                    //     child: Column(
                                    //       children: [
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "6541eb0ff1f99641d644a37d")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "6541eb0ff1f99641d644a37d");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "6541eb0ff1f99641d644a37d");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Strength"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "6541eb0ff1f99641d644a37d")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "6541eb0ff1f99641d644a37d")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "6541eb0ff1f99641d644a37d")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         gapH4,
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "6565b7a5e7fe9cfc044933fc")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "6565b7a5e7fe9cfc044933fc");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "6565b7a5e7fe9cfc044933fc");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Flexibility"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "6565b7a5e7fe9cfc044933fc")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "6565b7a5e7fe9cfc044933fc")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "6565b7a5e7fe9cfc044933fc")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         gapH4,
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "6565f35a3e1f9b2470ce1e1d")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "6565f35a3e1f9b2470ce1e1d");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "6565f35a3e1f9b2470ce1e1d");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Turns"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "6565f35a3e1f9b2470ce1e1d")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "6565f35a3e1f9b2470ce1e1d")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "6565f35a3e1f9b2470ce1e1d")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         gapH4,
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "6565f35e3e1f9b2470ce1e2d")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "6565f35e3e1f9b2470ce1e2d");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "6565f35e3e1f9b2470ce1e2d");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Jumps"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "6565f35e3e1f9b2470ce1e2d")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "6565f35e3e1f9b2470ce1e2d")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "6565f35e3e1f9b2470ce1e2d")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         gapH4,
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "65763ac421a48327d2f79386")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "65763ac421a48327d2f79386");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "65763ac421a48327d2f79386");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Warmup"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "65763ac421a48327d2f79386")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "65763ac421a48327d2f79386")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "65763ac421a48327d2f79386")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         gapH4,
                                    //         InkWell(
                                    //           onTap: () {
                                    //             setSt(() {
                                    //               if (_viewModel.focus.contains(
                                    //                   "6565f37b3e1f9b2470ce1e86")) {
                                    //                 _viewModel.focus.remove(
                                    //                     "6565f37b3e1f9b2470ce1e86");
                                    //               } else {
                                    //                 _viewModel.focus.add(
                                    //                     "6565f37b3e1f9b2470ce1e86");
                                    //               }
                                    //             });
                                    //           },
                                    //           child: Container(
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .spaceBetween,
                                    //               children: [
                                    //                 Text("Breakdown"),
                                    //                 Container(
                                    //                   height: 18,
                                    //                   width: 18,
                                    //                   decoration: BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(2),
                                    //                       color: !_viewModel.focus
                                    //                               .contains(
                                    //                                   "6565f37b3e1f9b2470ce1e86")
                                    //                           ? Colors
                                    //                               .transparent
                                    //                           : Color(
                                    //                               0xFF008BC3),
                                    //                       border: Border.all(
                                    //                           color: _viewModel
                                    //                                   .focus
                                    //                                   .contains(
                                    //                                       "6565f37b3e1f9b2470ce1e86")
                                    //                               ? Colors
                                    //                                   .transparent
                                    //                               : Colors
                                    //                                   .white)),
                                    //                   child: Icon(
                                    //                     Icons.check,
                                    //                     size: 10,
                                    //                     color: _viewModel.focus
                                    //                             .contains(
                                    //                                 "6565f37b3e1f9b2470ce1e86")
                                    //                         ? Colors.white
                                    //                         : Colors
                                    //                             .transparent,
                                    //                   ),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                    // gapH8,
                                    InkWell(
                                      onTap: () {
                                        isStrengthOpen = !isStrengthOpen;
                                        setSt(() {});
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Level",
                                            style: TextStyle(
                                                color: Color(0xFF3CB4E4),
                                                fontSize: 14),
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
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setSt(() {
                                                  if (_viewModel.strength
                                                      .contains("Beginner")) {
                                                    _viewModel.strength
                                                        .remove("Beginner");
                                                  } else {
                                                    _viewModel.strength
                                                        .add("Beginner");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Beginner"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .strength
                                                                  .contains(
                                                                      "Beginner")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .strength
                                                                      .contains(
                                                                          "Beginner")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .strength
                                                                .contains(
                                                                    "Beginner")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                                      .contains(
                                                          "Intermediate")) {
                                                    _viewModel.strength
                                                        .remove("Intermediate");
                                                  } else {
                                                    _viewModel.strength
                                                        .add("Intermediate");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Intermediate"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .strength
                                                                  .contains(
                                                                      "Intermediate")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .strength
                                                                      .contains(
                                                                          "Intermediate")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .strength
                                                                .contains(
                                                                    "Intermediate")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                                                    _viewModel.strength
                                                        .remove("Advanced");
                                                  } else {
                                                    _viewModel.strength
                                                        .add("Advanced");
                                                  }
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Advanced"),
                                                    Container(
                                                      height: 18,
                                                      width: 18,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  2),
                                                          color: !_viewModel
                                                                  .strength
                                                                  .contains(
                                                                      "Advanced")
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0xFF008BC3),
                                                          border: Border.all(
                                                              color: _viewModel
                                                                      .strength
                                                                      .contains(
                                                                          "Advanced")
                                                                  ? Colors
                                                                      .transparent
                                                                  : Colors
                                                                      .white)),
                                                      child: Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: _viewModel
                                                                .strength
                                                                .contains(
                                                                    "Advanced")
                                                            ? Colors.white
                                                            : Colors
                                                                .transparent,
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
                          margin: EdgeInsets.only(
                              top: 0, bottom: 8, left: 16, right: 0),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: Color(0xFF71717A))),
                          child: Image.asset(
                            "assets/icons/filter.png",
                            height: 15,
                            width: 15,
                          )),
                    ),
                    InkWell(
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
                                        _viewModel.setSortBy(
                                            AppConstants.latest, val, context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.latest, val, context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Newest"))),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.latest, val, context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                    onTap: () {
                                      _viewModel.setSortBy(
                                          AppConstants.latest, val, context);
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
                                            AppConstants.oldest, val, context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.oldest, val, context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Oldest"))),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.oldest, val, context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                    onTap: () {
                                      _viewModel.setSortBy(
                                          AppConstants.oldest, val, context);
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
                                            AppConstants.title_asc,
                                            val,
                                            context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.title_asc,
                                            val,
                                            context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Title (A - Z)"))),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.title_asc,
                                            val,
                                            context);
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
                                            AppConstants.title_desc,
                                            val,
                                            context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.title_desc,
                                            val,
                                            context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Title (Z - A)"))),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.title_desc,
                                            val,
                                            context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                    onTap: () {
                                      _viewModel.setSortBy(
                                          AppConstants.title_desc,
                                          val,
                                          context);
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
                                            AppConstants.long_duration,
                                            val,
                                            context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.long_duration,
                                            val,
                                            context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Longest"))),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.long_duration,
                                            val,
                                            context);
                                      },
                                      child: gapH8),

                                  InkWell(
                                    onTap: () {
                                      _viewModel.setSortBy(
                                          AppConstants.short_duration,
                                          val,
                                          context);
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
                                            AppConstants.short_duration,
                                            val,
                                            context);
                                      },
                                      child: gapH8),
                                  InkWell(
                                      onTap: () {
                                        _viewModel.setSortBy(
                                            AppConstants.short_duration,
                                            val,
                                            context);
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Text("Shortest"))),
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
                        margin: EdgeInsets.only(
                            top: 0, bottom: 8, left: 8, right: 16),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                                      : _viewModel.sortBy ==
                                              AppConstants.title_asc
                                          ? "Title (A - Z)"
                                          : _viewModel.sortBy ==
                                                  AppConstants.title_desc
                                              ? "Title (Z - A)"
                                              : _viewModel.sortBy ==
                                                      AppConstants.long_duration
                                                  ? "Longest"
                                                  : _viewModel.sortBy ==
                                                          AppConstants
                                                              .short_duration
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
                    ),
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisExtent: MediaQuery.of(context).size.height / 3.7),
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
                                  "${(widget.items?.duration ?? 100) ~/ 60}:${((widget.items?.duration ?? 100) % 60)}",
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
                    widget.items.tagsDetails?.length ?? 0,
                    (index2) => Container(
                      constraints:
                          BoxConstraints(maxWidth: widget.val == 3 ? 150 : 80),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
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
