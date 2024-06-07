// To parse this JSON data, do
//
//     final vimeoVideoResponse = vimeoVideoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'vimeo_video_model.freezed.dart';
part 'vimeo_video_model.g.dart';

VimeoVideoResponse vimeoVideoResponseFromJson(String str) =>
    VimeoVideoResponse.fromJson(json.decode(str));

String vimeoVideoResponseToJson(VimeoVideoResponse data) =>
    json.encode(data.toJson());

@freezed
class VimeoVideoResponse with _$VimeoVideoResponse {
  const factory VimeoVideoResponse({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "player_embed_url") String? playerEmbedUrl,
    @JsonKey(name: "duration") int? duration,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "embed") Embed? embed,
    @JsonKey(name: "created_time") DateTime? createdTime,
    @JsonKey(name: "modified_time") DateTime? modifiedTime,
    @JsonKey(name: "release_time") DateTime? releaseTime,
    @JsonKey(name: "content_rating") List<String>? contentRating,
    @JsonKey(name: "content_rating_class") String? contentRatingClass,
    @JsonKey(name: "rating_mod_locked") bool? ratingModLocked,
    @JsonKey(name: "license") dynamic license,
    @JsonKey(name: "privacy") Privacy? privacy,
    @JsonKey(name: "pictures") Pictures? pictures,
    @JsonKey(name: "tags") List<dynamic>? tags,
    @JsonKey(name: "stats") Stats? stats,
    @JsonKey(name: "categories") List<dynamic>? categories,
    @JsonKey(name: "uploader") Uploader? uploader,
    @JsonKey(name: "metadata") VimeoVideoResponseMetadata? metadata,
    @JsonKey(name: "manage_link") String? manageLink,
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "last_user_action_event_date")
    DateTime? lastUserActionEventDate,
    @JsonKey(name: "parent_folder") dynamic parentFolder,
    @JsonKey(name: "review_page") ReviewPage? reviewPage,
    @JsonKey(name: "files") List<Download>? files,
    @JsonKey(name: "download") List<Download>? download,
    @JsonKey(name: "app") App? app,
    @JsonKey(name: "play") Play? play,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "resource_key") String? resourceKey,
    @JsonKey(name: "upload") Upload? upload,
    @JsonKey(name: "transcode") Transcode? transcode,
    @JsonKey(name: "is_playable") bool? isPlayable,
    @JsonKey(name: "has_audio") bool? hasAudio,
  }) = _VimeoVideoResponse;

  factory VimeoVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VimeoVideoResponseFromJson(json);
}

@freezed
class App with _$App {
  const factory App({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "uri") String? uri,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
class Download with _$Download {
  const factory Download({
    @JsonKey(name: "quality") String? quality,
    @JsonKey(name: "rendition") String? rendition,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "expires") DateTime? expires,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "created_time") DateTime? createdTime,
    @JsonKey(name: "fps") double? fps,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "md5") dynamic md5,
    @JsonKey(name: "public_name") String? publicName,
    @JsonKey(name: "size_short") String? sizeShort,
    @JsonKey(name: "codec") String? codec,
    @JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime,
  }) = _Download;

  factory Download.fromJson(Map<String, dynamic> json) =>
      _$DownloadFromJson(json);
}

@freezed
class Embed with _$Embed {
  const factory Embed({
    @JsonKey(name: "html") String? html,
    @JsonKey(name: "badges") Badges? badges,
    @JsonKey(name: "interactive") bool? interactive,
    @JsonKey(name: "buttons") Buttons? buttons,
    @JsonKey(name: "logos") Logos? logos,
    @JsonKey(name: "play_button") PlayButton? playButton,
    @JsonKey(name: "title") Title? title,
    @JsonKey(name: "end_screen") List<dynamic>? endScreen,
    @JsonKey(name: "playbar") bool? playbar,
    @JsonKey(name: "quality_selector") bool? qualitySelector,
    @JsonKey(name: "pip") bool? pip,
    @JsonKey(name: "autopip") bool? autopip,
    @JsonKey(name: "volume") bool? volume,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "colors") Colors? colors,
    @JsonKey(name: "event_schedule") bool? eventSchedule,
    @JsonKey(name: "has_cards") bool? hasCards,
    @JsonKey(name: "outro_type") String? outroType,
    @JsonKey(name: "show_timezone") bool? showTimezone,
    @JsonKey(name: "cards") List<dynamic>? cards,
    @JsonKey(name: "airplay") bool? airplay,
    @JsonKey(name: "audio_tracks") bool? audioTracks,
    @JsonKey(name: "chapters") bool? chapters,
    @JsonKey(name: "chromecast") bool? chromecast,
    @JsonKey(name: "closed_captions") bool? closedCaptions,
    @JsonKey(name: "transcript") bool? transcript,
    @JsonKey(name: "ask_ai") bool? askAi,
    @JsonKey(name: "uri") dynamic uri,
    @JsonKey(name: "email_capture_form") dynamic emailCaptureForm,
    @JsonKey(name: "speed") bool? speed,
  }) = _Embed;

  factory Embed.fromJson(Map<String, dynamic> json) => _$EmbedFromJson(json);
}

@freezed
class Badges with _$Badges {
  const factory Badges({
    @JsonKey(name: "hdr") bool? hdr,
    @JsonKey(name: "live") Live? live,
    @JsonKey(name: "staff_pick") StaffPick? staffPick,
    @JsonKey(name: "vod") bool? vod,
    @JsonKey(name: "weekend_challenge") bool? weekendChallenge,
  }) = _Badges;

  factory Badges.fromJson(Map<String, dynamic> json) => _$BadgesFromJson(json);
}

@freezed
class Live with _$Live {
  const factory Live({
    @JsonKey(name: "streaming") bool? streaming,
    @JsonKey(name: "archived") bool? archived,
  }) = _Live;

  factory Live.fromJson(Map<String, dynamic> json) => _$LiveFromJson(json);
}

@freezed
class StaffPick with _$StaffPick {
  const factory StaffPick({
    @JsonKey(name: "normal") bool? normal,
    @JsonKey(name: "best_of_the_month") bool? bestOfTheMonth,
    @JsonKey(name: "best_of_the_year") bool? bestOfTheYear,
    @JsonKey(name: "premiere") bool? premiere,
  }) = _StaffPick;

  factory StaffPick.fromJson(Map<String, dynamic> json) =>
      _$StaffPickFromJson(json);
}

@freezed
class Buttons with _$Buttons {
  const factory Buttons({
    @JsonKey(name: "watchlater") bool? watchlater,
    @JsonKey(name: "share") bool? share,
    @JsonKey(name: "embed") bool? embed,
    @JsonKey(name: "hd") bool? hd,
    @JsonKey(name: "fullscreen") bool? fullscreen,
    @JsonKey(name: "scaling") bool? scaling,
    @JsonKey(name: "like") bool? like,
  }) = _Buttons;

  factory Buttons.fromJson(Map<String, dynamic> json) =>
      _$ButtonsFromJson(json);
}

@freezed
class Colors with _$Colors {
  const factory Colors({
    @JsonKey(name: "color_one") String? colorOne,
    @JsonKey(name: "color_two") String? colorTwo,
    @JsonKey(name: "color_three") String? colorThree,
    @JsonKey(name: "color_four") String? colorFour,
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}

@freezed
class Logos with _$Logos {
  const factory Logos({
    @JsonKey(name: "vimeo") bool? vimeo,
    @JsonKey(name: "custom") Custom? custom,
  }) = _Logos;

  factory Logos.fromJson(Map<String, dynamic> json) => _$LogosFromJson(json);
}

@freezed
class Custom with _$Custom {
  const factory Custom({
    @JsonKey(name: "active") bool? active,
    @JsonKey(name: "url") dynamic url,
    @JsonKey(name: "link") dynamic link,
    @JsonKey(name: "use_link") bool? useLink,
    @JsonKey(name: "sticky") bool? sticky,
  }) = _Custom;

  factory Custom.fromJson(Map<String, dynamic> json) => _$CustomFromJson(json);
}

@freezed
class PlayButton with _$PlayButton {
  const factory PlayButton({
    @JsonKey(name: "position") String? position,
  }) = _PlayButton;

  factory PlayButton.fromJson(Map<String, dynamic> json) =>
      _$PlayButtonFromJson(json);
}

@freezed
class Title with _$Title {
  const factory Title({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "owner") String? owner,
    @JsonKey(name: "portrait") String? portrait,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

@freezed
class VimeoVideoResponseMetadata with _$VimeoVideoResponseMetadata {
  const factory VimeoVideoResponseMetadata({
    @JsonKey(name: "connections") PurpleConnections? connections,
    @JsonKey(name: "interactions") PurpleInteractions? interactions,
    @JsonKey(name: "is_vimeo_create") bool? isVimeoCreate,
    @JsonKey(name: "is_screen_record") bool? isScreenRecord,
  }) = _VimeoVideoResponseMetadata;

  factory VimeoVideoResponseMetadata.fromJson(Map<String, dynamic> json) =>
      _$VimeoVideoResponseMetadataFromJson(json);
}

@freezed
class PurpleConnections with _$PurpleConnections {
  const factory PurpleConnections({
    @JsonKey(name: "comments") Albums? comments,
    @JsonKey(name: "credits") Albums? credits,
    @JsonKey(name: "likes") Albums? likes,
    @JsonKey(name: "pictures") Albums? pictures,
    @JsonKey(name: "texttracks") Albums? texttracks,
    @JsonKey(name: "related") dynamic related,
    @JsonKey(name: "recommendations") Recommendations? recommendations,
    @JsonKey(name: "albums") Albums? albums,
    @JsonKey(name: "available_albums") Albums? availableAlbums,
    @JsonKey(name: "versions") Versions? versions,
  }) = _PurpleConnections;

  factory PurpleConnections.fromJson(Map<String, dynamic> json) =>
      _$PurpleConnectionsFromJson(json);
}

@freezed
class Albums with _$Albums {
  const factory Albums({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "total") int? total,
  }) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

@freezed
class Recommendations with _$Recommendations {
  const factory Recommendations({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
  }) = _Recommendations;

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);
}

@freezed
class Versions with _$Versions {
  const factory Versions({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "current_uri") String? currentUri,
    @JsonKey(name: "resource_key") String? resourceKey,
    @JsonKey(name: "latest_incomplete_version") dynamic latestIncompleteVersion,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}

@freezed
class PurpleInteractions with _$PurpleInteractions {
  const factory PurpleInteractions({
    @JsonKey(name: "watchlater") Like? watchlater,
    @JsonKey(name: "like") Like? like,
    @JsonKey(name: "report") Report? report,
    @JsonKey(name: "view_team_members") Recommendations? viewTeamMembers,
    @JsonKey(name: "edit") Edit? edit,
    @JsonKey(name: "edit_content_rating") EditContentRating? editContentRating,
    @JsonKey(name: "edit_privacy") EditPrivacy? editPrivacy,
    @JsonKey(name: "delete") Recommendations? delete,
    @JsonKey(name: "can_update_privacy_to_public")
    Recommendations? canUpdatePrivacyToPublic,
    @JsonKey(name: "invite") Recommendations? invite,
    @JsonKey(name: "trim") Recommendations? trim,
    @JsonKey(name: "validate") Recommendations? validate,
  }) = _PurpleInteractions;

  factory PurpleInteractions.fromJson(Map<String, dynamic> json) =>
      _$PurpleInteractionsFromJson(json);
}

@freezed
class Edit with _$Edit {
  const factory Edit({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "blocked_fields") List<String>? blockedFields,
  }) = _Edit;

  factory Edit.fromJson(Map<String, dynamic> json) => _$EditFromJson(json);
}

@freezed
class EditContentRating with _$EditContentRating {
  const factory EditContentRating({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "content_rating") List<String>? contentRating,
  }) = _EditContentRating;

  factory EditContentRating.fromJson(Map<String, dynamic> json) =>
      _$EditContentRatingFromJson(json);
}

@freezed
class EditPrivacy with _$EditPrivacy {
  const factory EditPrivacy({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "content_type") String? contentType,
    @JsonKey(name: "properties") List<Property>? properties,
  }) = _EditPrivacy;

  factory EditPrivacy.fromJson(Map<String, dynamic> json) =>
      _$EditPrivacyFromJson(json);
}

@freezed
class Property with _$Property {
  const factory Property({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "required") bool? required,
    @JsonKey(name: "options") List<String>? options,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@freezed
class Like with _$Like {
  const factory Like({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "added") bool? added,
    @JsonKey(name: "added_time") dynamic addedTime,
    @JsonKey(name: "show_count") bool? showCount,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}

@freezed
class Report with _$Report {
  const factory Report({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "reason") List<String>? reason,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
class Pictures with _$Pictures {
  const factory Pictures({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "active") bool? active,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "base_link") String? baseLink,
    @JsonKey(name: "sizes") List<Size>? sizes,
    @JsonKey(name: "resource_key") String? resourceKey,
    @JsonKey(name: "default_picture") bool? defaultPicture,
  }) = _Pictures;

  factory Pictures.fromJson(Map<String, dynamic> json) =>
      _$PicturesFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "link_with_play_button") String? linkWithPlayButton,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}

@freezed
class Play with _$Play {
  const factory Play({
    @JsonKey(name: "progressive") List<Download>? progressive,
    @JsonKey(name: "hls") Dash? hls,
    @JsonKey(name: "dash") Dash? dash,
    @JsonKey(name: "status") String? status,
  }) = _Play;

  factory Play.fromJson(Map<String, dynamic> json) => _$PlayFromJson(json);
}

@freezed
class Dash with _$Dash {
  const factory Dash({
    @JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime,
    @JsonKey(name: "link") String? link,
  }) = _Dash;

  factory Dash.fromJson(Map<String, dynamic> json) => _$DashFromJson(json);
}

@freezed
class Privacy with _$Privacy {
  const factory Privacy({
    @JsonKey(name: "view") String? view,
    @JsonKey(name: "embed") String? embed,
    @JsonKey(name: "download") bool? download,
    @JsonKey(name: "add") bool? add,
    @JsonKey(name: "comments") String? comments,
    @JsonKey(name: "allow_share_link") bool? allowShareLink,
  }) = _Privacy;

  factory Privacy.fromJson(Map<String, dynamic> json) =>
      _$PrivacyFromJson(json);
}

@freezed
class ReviewPage with _$ReviewPage {
  const factory ReviewPage({
    @JsonKey(name: "active") bool? active,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "is_shareable") bool? isShareable,
  }) = _ReviewPage;

  factory ReviewPage.fromJson(Map<String, dynamic> json) =>
      _$ReviewPageFromJson(json);
}

@freezed
class Stats with _$Stats {
  const factory Stats({
    @JsonKey(name: "plays") int? plays,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@freezed
class Transcode with _$Transcode {
  const factory Transcode({
    @JsonKey(name: "status") String? status,
  }) = _Transcode;

  factory Transcode.fromJson(Map<String, dynamic> json) =>
      _$TranscodeFromJson(json);
}

@freezed
class Upload with _$Upload {
  const factory Upload({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "link") dynamic link,
    @JsonKey(name: "upload_link") dynamic uploadLink,
    @JsonKey(name: "form") dynamic form,
    @JsonKey(name: "approach") dynamic approach,
    @JsonKey(name: "size") dynamic size,
    @JsonKey(name: "redirect_url") dynamic redirectUrl,
  }) = _Upload;

  factory Upload.fromJson(Map<String, dynamic> json) => _$UploadFromJson(json);
}

@freezed
class Uploader with _$Uploader {
  const factory Uploader({
    @JsonKey(name: "pictures") Pictures? pictures,
  }) = _Uploader;

  factory Uploader.fromJson(Map<String, dynamic> json) =>
      _$UploaderFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "uri") String? uri,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "capabilities") Capabilities? capabilities,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "bio") dynamic bio,
    @JsonKey(name: "short_bio") dynamic shortBio,
    @JsonKey(name: "created_time") DateTime? createdTime,
    @JsonKey(name: "pictures") Pictures? pictures,
    @JsonKey(name: "websites") List<dynamic>? websites,
    @JsonKey(name: "metadata") UserMetadata? metadata,
    @JsonKey(name: "location_details") LocationDetails? locationDetails,
    @JsonKey(name: "skills") List<dynamic>? skills,
    @JsonKey(name: "available_for_hire") bool? availableForHire,
    @JsonKey(name: "can_work_remotely") bool? canWorkRemotely,
    @JsonKey(name: "preferences") Preferences? preferences,
    @JsonKey(name: "resource_key") String? resourceKey,
    @JsonKey(name: "account") String? account,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Capabilities with _$Capabilities {
  const factory Capabilities({
    @JsonKey(name: "hasLiveSubscription") bool? hasLiveSubscription,
    @JsonKey(name: "hasEnterpriseLihp") bool? hasEnterpriseLihp,
    @JsonKey(name: "hasSvvTimecodedComments") bool? hasSvvTimecodedComments,
    @JsonKey(name: "hasSimplifiedEnterpriseAccount")
    bool? hasSimplifiedEnterpriseAccount,
  }) = _Capabilities;

  factory Capabilities.fromJson(Map<String, dynamic> json) =>
      _$CapabilitiesFromJson(json);
}

@freezed
class LocationDetails with _$LocationDetails {
  const factory LocationDetails({
    @JsonKey(name: "formatted_address") String? formattedAddress,
    @JsonKey(name: "latitude") dynamic latitude,
    @JsonKey(name: "longitude") dynamic longitude,
    @JsonKey(name: "city") dynamic city,
    @JsonKey(name: "state") dynamic state,
    @JsonKey(name: "neighborhood") dynamic neighborhood,
    @JsonKey(name: "sub_locality") dynamic subLocality,
    @JsonKey(name: "state_iso_code") dynamic stateIsoCode,
    @JsonKey(name: "country") dynamic country,
    @JsonKey(name: "country_iso_code") dynamic countryIsoCode,
  }) = _LocationDetails;

  factory LocationDetails.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsFromJson(json);
}

@freezed
class UserMetadata with _$UserMetadata {
  const factory UserMetadata({
    @JsonKey(name: "connections") FluffyConnections? connections,
    @JsonKey(name: "interactions") FluffyInteractions? interactions,
  }) = _UserMetadata;

  factory UserMetadata.fromJson(Map<String, dynamic> json) =>
      _$UserMetadataFromJson(json);
}

@freezed
class FluffyConnections with _$FluffyConnections {
  const factory FluffyConnections({
    @JsonKey(name: "albums") Albums? albums,
    @JsonKey(name: "appearances") Albums? appearances,
    @JsonKey(name: "channels") Albums? channels,
    @JsonKey(name: "feed") Recommendations? feed,
    @JsonKey(name: "followers") Albums? followers,
    @JsonKey(name: "following") Albums? following,
    @JsonKey(name: "groups") Albums? groups,
    @JsonKey(name: "likes") Albums? likes,
    @JsonKey(name: "membership") Recommendations? membership,
    @JsonKey(name: "moderated_channels") Albums? moderatedChannels,
    @JsonKey(name: "portfolios") Albums? portfolios,
    @JsonKey(name: "videos") Albums? videos,
    @JsonKey(name: "shared") Albums? shared,
    @JsonKey(name: "pictures") Albums? pictures,
    @JsonKey(name: "folders_root") Recommendations? foldersRoot,
    @JsonKey(name: "folders") Albums? folders,
    @JsonKey(name: "teams") Albums? teams,
    @JsonKey(name: "permission_policies") Albums? permissionPolicies,
  }) = _FluffyConnections;

  factory FluffyConnections.fromJson(Map<String, dynamic> json) =>
      _$FluffyConnectionsFromJson(json);
}

@freezed
class FluffyInteractions with _$FluffyInteractions {
  const factory FluffyInteractions({
    @JsonKey(name: "follow") Like? follow,
    @JsonKey(name: "block") Like? block,
    @JsonKey(name: "report") Report? report,
  }) = _FluffyInteractions;

  factory FluffyInteractions.fromJson(Map<String, dynamic> json) =>
      _$FluffyInteractionsFromJson(json);
}

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    @JsonKey(name: "videos") Videos? videos,
  }) = _Preferences;

  factory Preferences.fromJson(Map<String, dynamic> json) =>
      _$PreferencesFromJson(json);
}

@freezed
class Videos with _$Videos {
  const factory Videos({
    @JsonKey(name: "rating") List<String>? rating,
    @JsonKey(name: "privacy") Privacy? privacy,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}
