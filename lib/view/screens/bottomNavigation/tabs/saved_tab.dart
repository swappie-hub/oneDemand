import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/data/home/models/saved_videos_model.dart';
import 'package:ondemand/utils/utils.dart';
import 'package:ondemand/view/screens/bottomNavigation/bottom_navigation_view_model.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';
import 'package:timeago/timeago.dart' as timeago;

class SavedTab extends ConsumerStatefulWidget {
  const SavedTab({super.key});

  @override
  ConsumerState<SavedTab> createState() => _SavedTabState();
}

class _SavedTabState extends ConsumerState<SavedTab> with BaseScreenView {
  late BottomNavigationViewModel _viewModel;
  @override
  void initState() {
    super.initState();

    _viewModel = ref.read(bottomNavigationViewModel);
    _viewModel.attachView(this);
    Future.delayed(Duration(milliseconds: 2)).then((value) async {
      _viewModel.toggleLoading();
      await _viewModel.fetchSavedVideos(SavedVideosRequest(
              startIndex: 0,
              sortby: "latest",
              selectedDurations: "",
              selectedLevels: "",
              selectedTags: "",
              endIndex: 500)
          // LibraryListRequest(categoryId:AppCons

          // )
          );
      _viewModel.toggleLoading();
    });
  }

  @override
  Widget build(BuildContext context) {
  
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    _viewModel = ref.watch(bottomNavigationViewModel);

    return Scaffold(
      backgroundColor: Color(0xFF171718),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            centerTitle: false,
            backgroundColor: kBlack,
            leadingWidth: 120,
            leading: Padding(
                padding: const EdgeInsets.only(left: 16, top: 14),
                child: Text(
                  "Saved",
                  style: TextStyle(color: Colors.white, fontFamily: 'Good'),
                )),
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
          )),
      body: Column(
        children: [
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 16),
          //   decoration: BoxDecoration(
          //     color: Color(0xFF171718),
          //     // border: Border.symmetric(
          //     //     horizontal: BorderSide(color: Color(0xFF71717A))
          //     //     //  Border.all(color: Color(0xFF71717A)

          //     //     )
          //   ),
          //   child: Container(
          //     height: 35,
          //     child: Center(
          //         child: Text(
          //       "SAVED VIDEOS",
          //       style: TextStyle(
          //           fontFamily: "Good",
          //           color: Color(0xFF3CB4E4),
          //           fontWeight: FontWeight.w700,
          //           fontSize: 18),
          //     )),
          //   ),
          // ),
          gapH10,
          // Container(
          //   decoration: BoxDecoration(color: Color(0xFF171718)),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           _viewModel.savedList.shuffle();
          //           setState(() {});
          //         },
          //         child: Container(
          //           margin: EdgeInsets.only(
          //               top: 0, bottom: 10, left: 16, right: 16),
          //           padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(9),
          //               border: Border.all(color: Color(0xFF1AA2D9), width: 2)),
          //           child: Row(
          //             children: [
          //               Text(
          //                 "SHUFFLE",
          //                 style: TextStyle(
          //                     fontFamily: "Good",
          //                     color: Color(0xFF1AA2D9),
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 12),
          //               ),
          //               gapW12,
          //               Image.asset(
          //                 "assets/icons/shuffle.png",
          //                 height: 16,
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          _viewModel.savedList.isEmpty
              ? Container()
              : Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color: Color(0xFF171718),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisExtent: useMobileLayout
                              ? MediaQuery.of(context).size.height / 3.7
                              : MediaQuery.of(context).size.height / 3.3),
                      shrinkWrap: true,
                      itemCount: _viewModel.savedList.length,
                      itemBuilder: (context, index) => SavedItems(
                        viewModel: _viewModel,
                        items: _viewModel.savedList[index],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}

class SavedItems extends StatefulWidget {
  const SavedItems({
    super.key,
    required BottomNavigationViewModel viewModel,
    required this.items,
  }) : _viewModel = viewModel;

  final SavesVideosDatum items;
  final BottomNavigationViewModel _viewModel;

  @override
  State<SavedItems> createState() => _SavedItemsState();
}

class _SavedItemsState extends State<SavedItems> with BaseScreenView {
  bool isSaved = false;
  @override
  void initState() {
    super.initState();
    isSaved = widget.items.savedvideo ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    return InkWell(
      onTap: () {
        if (AppConstants.isSubscribed) {
          context.pushNamed(
            AppRoute.videoPageView.name,
            pathParameters: {'id': widget.items.id ?? ""},
          );
        } else {
          context.pushNamed(AppRoute.subscriptionView.name);
        }

        // navigateToScreen(AppRoute.videoPageView);
      },
      child: Container(
        // height: MediaQuery.of(context).size.height / 3,
        color: Color(0xFF171718),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
                height: useMobileLayout
                    ? 80.h
                    : MediaQuery.of(context).size.height / 5,
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
                                  convertTime(widget.items.duration ?? 100),
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
                                    widget._viewModel.toggleLoading();
                                    widget._viewModel.fetchSavedVideos(
                                        SavedVideosRequest(
                                            startIndex: 0,
                                            sortby: "latest",
                                            selectedDurations: "",
                                            selectedLevels: "",
                                            selectedTags: "",
                                            endIndex: 500)
                                        // LibraryListRequest(categoryId:AppCons

                                        // )
                                        );
                                    widget._viewModel.toggleLoading();
                                  } else {
                                    widget._viewModel
                                        .unSaveVideo(widget.items.id ?? "");
                                    widget._viewModel.toggleLoading();
                                    widget._viewModel.fetchSavedVideos(
                                        SavedVideosRequest(
                                            startIndex: 0,
                                            sortby: "latest",
                                            selectedDurations: "",
                                            selectedLevels: "",
                                            selectedTags: "",
                                            endIndex: 500)
                                        // LibraryListRequest(categoryId:AppCons

                                        // )
                                        );
                                    widget._viewModel.toggleLoading();
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
                      constraints: BoxConstraints(maxWidth: 80),
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
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 0),
            //   child: Text(
            //     timeago.format(widget.items.createdAt ?? DateTime.now()),
            //     style: TextStyle(
            //         fontSize: 10,
            //         color: Color(0xFF9E9E9E),
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
            gapH16,
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

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}
