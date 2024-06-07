// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vimeo_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VimeoVideoResponse _$VimeoVideoResponseFromJson(Map<String, dynamic> json) {
  return _VimeoVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VimeoVideoResponse {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "player_embed_url")
  String? get playerEmbedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "embed")
  Embed? get embed => throw _privateConstructorUsedError;
  @JsonKey(name: "created_time")
  DateTime? get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_time")
  DateTime? get modifiedTime => throw _privateConstructorUsedError;
  @JsonKey(name: "release_time")
  DateTime? get releaseTime => throw _privateConstructorUsedError;
  @JsonKey(name: "content_rating")
  List<String>? get contentRating => throw _privateConstructorUsedError;
  @JsonKey(name: "content_rating_class")
  String? get contentRatingClass => throw _privateConstructorUsedError;
  @JsonKey(name: "rating_mod_locked")
  bool? get ratingModLocked => throw _privateConstructorUsedError;
  @JsonKey(name: "license")
  dynamic get license => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  Privacy? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "pictures")
  Pictures? get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<dynamic>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "stats")
  Stats? get stats => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<dynamic>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "uploader")
  Uploader? get uploader => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  VimeoVideoResponseMetadata? get metadata =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "manage_link")
  String? get manageLink => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "last_user_action_event_date")
  DateTime? get lastUserActionEventDate => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_folder")
  dynamic get parentFolder => throw _privateConstructorUsedError;
  @JsonKey(name: "review_page")
  ReviewPage? get reviewPage => throw _privateConstructorUsedError;
  @JsonKey(name: "files")
  List<Download>? get files => throw _privateConstructorUsedError;
  @JsonKey(name: "download")
  List<Download>? get download => throw _privateConstructorUsedError;
  @JsonKey(name: "app")
  App? get app => throw _privateConstructorUsedError;
  @JsonKey(name: "play")
  Play? get play => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_key")
  String? get resourceKey => throw _privateConstructorUsedError;
  @JsonKey(name: "upload")
  Upload? get upload => throw _privateConstructorUsedError;
  @JsonKey(name: "transcode")
  Transcode? get transcode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_playable")
  bool? get isPlayable => throw _privateConstructorUsedError;
  @JsonKey(name: "has_audio")
  bool? get hasAudio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoVideoResponseCopyWith<VimeoVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoVideoResponseCopyWith<$Res> {
  factory $VimeoVideoResponseCopyWith(
          VimeoVideoResponse value, $Res Function(VimeoVideoResponse) then) =
      _$VimeoVideoResponseCopyWithImpl<$Res, VimeoVideoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
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
      @JsonKey(name: "has_audio") bool? hasAudio});

  $EmbedCopyWith<$Res>? get embed;
  $PrivacyCopyWith<$Res>? get privacy;
  $PicturesCopyWith<$Res>? get pictures;
  $StatsCopyWith<$Res>? get stats;
  $UploaderCopyWith<$Res>? get uploader;
  $VimeoVideoResponseMetadataCopyWith<$Res>? get metadata;
  $UserCopyWith<$Res>? get user;
  $ReviewPageCopyWith<$Res>? get reviewPage;
  $AppCopyWith<$Res>? get app;
  $PlayCopyWith<$Res>? get play;
  $UploadCopyWith<$Res>? get upload;
  $TranscodeCopyWith<$Res>? get transcode;
}

/// @nodoc
class _$VimeoVideoResponseCopyWithImpl<$Res, $Val extends VimeoVideoResponse>
    implements $VimeoVideoResponseCopyWith<$Res> {
  _$VimeoVideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? link = freezed,
    Object? playerEmbedUrl = freezed,
    Object? duration = freezed,
    Object? width = freezed,
    Object? language = freezed,
    Object? height = freezed,
    Object? embed = freezed,
    Object? createdTime = freezed,
    Object? modifiedTime = freezed,
    Object? releaseTime = freezed,
    Object? contentRating = freezed,
    Object? contentRatingClass = freezed,
    Object? ratingModLocked = freezed,
    Object? license = freezed,
    Object? privacy = freezed,
    Object? pictures = freezed,
    Object? tags = freezed,
    Object? stats = freezed,
    Object? categories = freezed,
    Object? uploader = freezed,
    Object? metadata = freezed,
    Object? manageLink = freezed,
    Object? user = freezed,
    Object? lastUserActionEventDate = freezed,
    Object? parentFolder = freezed,
    Object? reviewPage = freezed,
    Object? files = freezed,
    Object? download = freezed,
    Object? app = freezed,
    Object? play = freezed,
    Object? status = freezed,
    Object? resourceKey = freezed,
    Object? upload = freezed,
    Object? transcode = freezed,
    Object? isPlayable = freezed,
    Object? hasAudio = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      playerEmbedUrl: freezed == playerEmbedUrl
          ? _value.playerEmbedUrl
          : playerEmbedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as Embed?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedTime: freezed == modifiedTime
          ? _value.modifiedTime
          : modifiedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releaseTime: freezed == releaseTime
          ? _value.releaseTime
          : releaseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentRatingClass: freezed == contentRatingClass
          ? _value.contentRatingClass
          : contentRatingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingModLocked: freezed == ratingModLocked
          ? _value.ratingModLocked
          : ratingModLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as dynamic,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      uploader: freezed == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Uploader?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as VimeoVideoResponseMetadata?,
      manageLink: freezed == manageLink
          ? _value.manageLink
          : manageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      lastUserActionEventDate: freezed == lastUserActionEventDate
          ? _value.lastUserActionEventDate
          : lastUserActionEventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentFolder: freezed == parentFolder
          ? _value.parentFolder
          : parentFolder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewPage: freezed == reviewPage
          ? _value.reviewPage
          : reviewPage // ignore: cast_nullable_to_non_nullable
              as ReviewPage?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as Play?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      upload: freezed == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as Upload?,
      transcode: freezed == transcode
          ? _value.transcode
          : transcode // ignore: cast_nullable_to_non_nullable
              as Transcode?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasAudio: freezed == hasAudio
          ? _value.hasAudio
          : hasAudio // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedCopyWith<$Res>? get embed {
    if (_value.embed == null) {
      return null;
    }

    return $EmbedCopyWith<$Res>(_value.embed!, (value) {
      return _then(_value.copyWith(embed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivacyCopyWith<$Res>? get privacy {
    if (_value.privacy == null) {
      return null;
    }

    return $PrivacyCopyWith<$Res>(_value.privacy!, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PicturesCopyWith<$Res>? get pictures {
    if (_value.pictures == null) {
      return null;
    }

    return $PicturesCopyWith<$Res>(_value.pictures!, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UploaderCopyWith<$Res>? get uploader {
    if (_value.uploader == null) {
      return null;
    }

    return $UploaderCopyWith<$Res>(_value.uploader!, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VimeoVideoResponseMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $VimeoVideoResponseMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewPageCopyWith<$Res>? get reviewPage {
    if (_value.reviewPage == null) {
      return null;
    }

    return $ReviewPageCopyWith<$Res>(_value.reviewPage!, (value) {
      return _then(_value.copyWith(reviewPage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res>? get app {
    if (_value.app == null) {
      return null;
    }

    return $AppCopyWith<$Res>(_value.app!, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayCopyWith<$Res>? get play {
    if (_value.play == null) {
      return null;
    }

    return $PlayCopyWith<$Res>(_value.play!, (value) {
      return _then(_value.copyWith(play: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadCopyWith<$Res>? get upload {
    if (_value.upload == null) {
      return null;
    }

    return $UploadCopyWith<$Res>(_value.upload!, (value) {
      return _then(_value.copyWith(upload: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranscodeCopyWith<$Res>? get transcode {
    if (_value.transcode == null) {
      return null;
    }

    return $TranscodeCopyWith<$Res>(_value.transcode!, (value) {
      return _then(_value.copyWith(transcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VimeoVideoResponseImplCopyWith<$Res>
    implements $VimeoVideoResponseCopyWith<$Res> {
  factory _$$VimeoVideoResponseImplCopyWith(_$VimeoVideoResponseImpl value,
          $Res Function(_$VimeoVideoResponseImpl) then) =
      __$$VimeoVideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
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
      @JsonKey(name: "has_audio") bool? hasAudio});

  @override
  $EmbedCopyWith<$Res>? get embed;
  @override
  $PrivacyCopyWith<$Res>? get privacy;
  @override
  $PicturesCopyWith<$Res>? get pictures;
  @override
  $StatsCopyWith<$Res>? get stats;
  @override
  $UploaderCopyWith<$Res>? get uploader;
  @override
  $VimeoVideoResponseMetadataCopyWith<$Res>? get metadata;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ReviewPageCopyWith<$Res>? get reviewPage;
  @override
  $AppCopyWith<$Res>? get app;
  @override
  $PlayCopyWith<$Res>? get play;
  @override
  $UploadCopyWith<$Res>? get upload;
  @override
  $TranscodeCopyWith<$Res>? get transcode;
}

/// @nodoc
class __$$VimeoVideoResponseImplCopyWithImpl<$Res>
    extends _$VimeoVideoResponseCopyWithImpl<$Res, _$VimeoVideoResponseImpl>
    implements _$$VimeoVideoResponseImplCopyWith<$Res> {
  __$$VimeoVideoResponseImplCopyWithImpl(_$VimeoVideoResponseImpl _value,
      $Res Function(_$VimeoVideoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? link = freezed,
    Object? playerEmbedUrl = freezed,
    Object? duration = freezed,
    Object? width = freezed,
    Object? language = freezed,
    Object? height = freezed,
    Object? embed = freezed,
    Object? createdTime = freezed,
    Object? modifiedTime = freezed,
    Object? releaseTime = freezed,
    Object? contentRating = freezed,
    Object? contentRatingClass = freezed,
    Object? ratingModLocked = freezed,
    Object? license = freezed,
    Object? privacy = freezed,
    Object? pictures = freezed,
    Object? tags = freezed,
    Object? stats = freezed,
    Object? categories = freezed,
    Object? uploader = freezed,
    Object? metadata = freezed,
    Object? manageLink = freezed,
    Object? user = freezed,
    Object? lastUserActionEventDate = freezed,
    Object? parentFolder = freezed,
    Object? reviewPage = freezed,
    Object? files = freezed,
    Object? download = freezed,
    Object? app = freezed,
    Object? play = freezed,
    Object? status = freezed,
    Object? resourceKey = freezed,
    Object? upload = freezed,
    Object? transcode = freezed,
    Object? isPlayable = freezed,
    Object? hasAudio = freezed,
  }) {
    return _then(_$VimeoVideoResponseImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      playerEmbedUrl: freezed == playerEmbedUrl
          ? _value.playerEmbedUrl
          : playerEmbedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as Embed?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedTime: freezed == modifiedTime
          ? _value.modifiedTime
          : modifiedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releaseTime: freezed == releaseTime
          ? _value.releaseTime
          : releaseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contentRating: freezed == contentRating
          ? _value._contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentRatingClass: freezed == contentRatingClass
          ? _value.contentRatingClass
          : contentRatingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingModLocked: freezed == ratingModLocked
          ? _value.ratingModLocked
          : ratingModLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as dynamic,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      uploader: freezed == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as Uploader?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as VimeoVideoResponseMetadata?,
      manageLink: freezed == manageLink
          ? _value.manageLink
          : manageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      lastUserActionEventDate: freezed == lastUserActionEventDate
          ? _value.lastUserActionEventDate
          : lastUserActionEventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentFolder: freezed == parentFolder
          ? _value.parentFolder
          : parentFolder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewPage: freezed == reviewPage
          ? _value.reviewPage
          : reviewPage // ignore: cast_nullable_to_non_nullable
              as ReviewPage?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      download: freezed == download
          ? _value._download
          : download // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as Play?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      upload: freezed == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as Upload?,
      transcode: freezed == transcode
          ? _value.transcode
          : transcode // ignore: cast_nullable_to_non_nullable
              as Transcode?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasAudio: freezed == hasAudio
          ? _value.hasAudio
          : hasAudio // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VimeoVideoResponseImpl implements _VimeoVideoResponse {
  const _$VimeoVideoResponseImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "player_embed_url") this.playerEmbedUrl,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "embed") this.embed,
      @JsonKey(name: "created_time") this.createdTime,
      @JsonKey(name: "modified_time") this.modifiedTime,
      @JsonKey(name: "release_time") this.releaseTime,
      @JsonKey(name: "content_rating") final List<String>? contentRating,
      @JsonKey(name: "content_rating_class") this.contentRatingClass,
      @JsonKey(name: "rating_mod_locked") this.ratingModLocked,
      @JsonKey(name: "license") this.license,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "pictures") this.pictures,
      @JsonKey(name: "tags") final List<dynamic>? tags,
      @JsonKey(name: "stats") this.stats,
      @JsonKey(name: "categories") final List<dynamic>? categories,
      @JsonKey(name: "uploader") this.uploader,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "manage_link") this.manageLink,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "last_user_action_event_date")
      this.lastUserActionEventDate,
      @JsonKey(name: "parent_folder") this.parentFolder,
      @JsonKey(name: "review_page") this.reviewPage,
      @JsonKey(name: "files") final List<Download>? files,
      @JsonKey(name: "download") final List<Download>? download,
      @JsonKey(name: "app") this.app,
      @JsonKey(name: "play") this.play,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "resource_key") this.resourceKey,
      @JsonKey(name: "upload") this.upload,
      @JsonKey(name: "transcode") this.transcode,
      @JsonKey(name: "is_playable") this.isPlayable,
      @JsonKey(name: "has_audio") this.hasAudio})
      : _contentRating = contentRating,
        _tags = tags,
        _categories = categories,
        _files = files,
        _download = download;

  factory _$VimeoVideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VimeoVideoResponseImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "player_embed_url")
  final String? playerEmbedUrl;
  @override
  @JsonKey(name: "duration")
  final int? duration;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "language")
  final String? language;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "embed")
  final Embed? embed;
  @override
  @JsonKey(name: "created_time")
  final DateTime? createdTime;
  @override
  @JsonKey(name: "modified_time")
  final DateTime? modifiedTime;
  @override
  @JsonKey(name: "release_time")
  final DateTime? releaseTime;
  final List<String>? _contentRating;
  @override
  @JsonKey(name: "content_rating")
  List<String>? get contentRating {
    final value = _contentRating;
    if (value == null) return null;
    if (_contentRating is EqualUnmodifiableListView) return _contentRating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "content_rating_class")
  final String? contentRatingClass;
  @override
  @JsonKey(name: "rating_mod_locked")
  final bool? ratingModLocked;
  @override
  @JsonKey(name: "license")
  final dynamic license;
  @override
  @JsonKey(name: "privacy")
  final Privacy? privacy;
  @override
  @JsonKey(name: "pictures")
  final Pictures? pictures;
  final List<dynamic>? _tags;
  @override
  @JsonKey(name: "tags")
  List<dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "stats")
  final Stats? stats;
  final List<dynamic>? _categories;
  @override
  @JsonKey(name: "categories")
  List<dynamic>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "uploader")
  final Uploader? uploader;
  @override
  @JsonKey(name: "metadata")
  final VimeoVideoResponseMetadata? metadata;
  @override
  @JsonKey(name: "manage_link")
  final String? manageLink;
  @override
  @JsonKey(name: "user")
  final User? user;
  @override
  @JsonKey(name: "last_user_action_event_date")
  final DateTime? lastUserActionEventDate;
  @override
  @JsonKey(name: "parent_folder")
  final dynamic parentFolder;
  @override
  @JsonKey(name: "review_page")
  final ReviewPage? reviewPage;
  final List<Download>? _files;
  @override
  @JsonKey(name: "files")
  List<Download>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Download>? _download;
  @override
  @JsonKey(name: "download")
  List<Download>? get download {
    final value = _download;
    if (value == null) return null;
    if (_download is EqualUnmodifiableListView) return _download;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "app")
  final App? app;
  @override
  @JsonKey(name: "play")
  final Play? play;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "resource_key")
  final String? resourceKey;
  @override
  @JsonKey(name: "upload")
  final Upload? upload;
  @override
  @JsonKey(name: "transcode")
  final Transcode? transcode;
  @override
  @JsonKey(name: "is_playable")
  final bool? isPlayable;
  @override
  @JsonKey(name: "has_audio")
  final bool? hasAudio;

  @override
  String toString() {
    return 'VimeoVideoResponse(uri: $uri, name: $name, description: $description, type: $type, link: $link, playerEmbedUrl: $playerEmbedUrl, duration: $duration, width: $width, language: $language, height: $height, embed: $embed, createdTime: $createdTime, modifiedTime: $modifiedTime, releaseTime: $releaseTime, contentRating: $contentRating, contentRatingClass: $contentRatingClass, ratingModLocked: $ratingModLocked, license: $license, privacy: $privacy, pictures: $pictures, tags: $tags, stats: $stats, categories: $categories, uploader: $uploader, metadata: $metadata, manageLink: $manageLink, user: $user, lastUserActionEventDate: $lastUserActionEventDate, parentFolder: $parentFolder, reviewPage: $reviewPage, files: $files, download: $download, app: $app, play: $play, status: $status, resourceKey: $resourceKey, upload: $upload, transcode: $transcode, isPlayable: $isPlayable, hasAudio: $hasAudio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VimeoVideoResponseImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.playerEmbedUrl, playerEmbedUrl) ||
                other.playerEmbedUrl == playerEmbedUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.embed, embed) || other.embed == embed) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.modifiedTime, modifiedTime) ||
                other.modifiedTime == modifiedTime) &&
            (identical(other.releaseTime, releaseTime) ||
                other.releaseTime == releaseTime) &&
            const DeepCollectionEquality()
                .equals(other._contentRating, _contentRating) &&
            (identical(other.contentRatingClass, contentRatingClass) ||
                other.contentRatingClass == contentRatingClass) &&
            (identical(other.ratingModLocked, ratingModLocked) ||
                other.ratingModLocked == ratingModLocked) &&
            const DeepCollectionEquality().equals(other.license, license) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.manageLink, manageLink) ||
                other.manageLink == manageLink) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(
                    other.lastUserActionEventDate, lastUserActionEventDate) ||
                other.lastUserActionEventDate == lastUserActionEventDate) &&
            const DeepCollectionEquality()
                .equals(other.parentFolder, parentFolder) &&
            (identical(other.reviewPage, reviewPage) ||
                other.reviewPage == reviewPage) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._download, _download) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.play, play) || other.play == play) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resourceKey, resourceKey) ||
                other.resourceKey == resourceKey) &&
            (identical(other.upload, upload) || other.upload == upload) &&
            (identical(other.transcode, transcode) ||
                other.transcode == transcode) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.hasAudio, hasAudio) ||
                other.hasAudio == hasAudio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uri,
        name,
        description,
        type,
        link,
        playerEmbedUrl,
        duration,
        width,
        language,
        height,
        embed,
        createdTime,
        modifiedTime,
        releaseTime,
        const DeepCollectionEquality().hash(_contentRating),
        contentRatingClass,
        ratingModLocked,
        const DeepCollectionEquality().hash(license),
        privacy,
        pictures,
        const DeepCollectionEquality().hash(_tags),
        stats,
        const DeepCollectionEquality().hash(_categories),
        uploader,
        metadata,
        manageLink,
        user,
        lastUserActionEventDate,
        const DeepCollectionEquality().hash(parentFolder),
        reviewPage,
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_download),
        app,
        play,
        status,
        resourceKey,
        upload,
        transcode,
        isPlayable,
        hasAudio
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VimeoVideoResponseImplCopyWith<_$VimeoVideoResponseImpl> get copyWith =>
      __$$VimeoVideoResponseImplCopyWithImpl<_$VimeoVideoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VimeoVideoResponseImplToJson(
      this,
    );
  }
}

abstract class _VimeoVideoResponse implements VimeoVideoResponse {
  const factory _VimeoVideoResponse(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "link") final String? link,
      @JsonKey(name: "player_embed_url") final String? playerEmbedUrl,
      @JsonKey(name: "duration") final int? duration,
      @JsonKey(name: "width") final int? width,
      @JsonKey(name: "language") final String? language,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "embed") final Embed? embed,
      @JsonKey(name: "created_time") final DateTime? createdTime,
      @JsonKey(name: "modified_time") final DateTime? modifiedTime,
      @JsonKey(name: "release_time") final DateTime? releaseTime,
      @JsonKey(name: "content_rating") final List<String>? contentRating,
      @JsonKey(name: "content_rating_class") final String? contentRatingClass,
      @JsonKey(name: "rating_mod_locked") final bool? ratingModLocked,
      @JsonKey(name: "license") final dynamic license,
      @JsonKey(name: "privacy") final Privacy? privacy,
      @JsonKey(name: "pictures") final Pictures? pictures,
      @JsonKey(name: "tags") final List<dynamic>? tags,
      @JsonKey(name: "stats") final Stats? stats,
      @JsonKey(name: "categories") final List<dynamic>? categories,
      @JsonKey(name: "uploader") final Uploader? uploader,
      @JsonKey(name: "metadata") final VimeoVideoResponseMetadata? metadata,
      @JsonKey(name: "manage_link") final String? manageLink,
      @JsonKey(name: "user") final User? user,
      @JsonKey(name: "last_user_action_event_date")
      final DateTime? lastUserActionEventDate,
      @JsonKey(name: "parent_folder") final dynamic parentFolder,
      @JsonKey(name: "review_page") final ReviewPage? reviewPage,
      @JsonKey(name: "files") final List<Download>? files,
      @JsonKey(name: "download") final List<Download>? download,
      @JsonKey(name: "app") final App? app,
      @JsonKey(name: "play") final Play? play,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "resource_key") final String? resourceKey,
      @JsonKey(name: "upload") final Upload? upload,
      @JsonKey(name: "transcode") final Transcode? transcode,
      @JsonKey(name: "is_playable") final bool? isPlayable,
      @JsonKey(name: "has_audio")
      final bool? hasAudio}) = _$VimeoVideoResponseImpl;

  factory _VimeoVideoResponse.fromJson(Map<String, dynamic> json) =
      _$VimeoVideoResponseImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "player_embed_url")
  String? get playerEmbedUrl;
  @override
  @JsonKey(name: "duration")
  int? get duration;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "language")
  String? get language;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "embed")
  Embed? get embed;
  @override
  @JsonKey(name: "created_time")
  DateTime? get createdTime;
  @override
  @JsonKey(name: "modified_time")
  DateTime? get modifiedTime;
  @override
  @JsonKey(name: "release_time")
  DateTime? get releaseTime;
  @override
  @JsonKey(name: "content_rating")
  List<String>? get contentRating;
  @override
  @JsonKey(name: "content_rating_class")
  String? get contentRatingClass;
  @override
  @JsonKey(name: "rating_mod_locked")
  bool? get ratingModLocked;
  @override
  @JsonKey(name: "license")
  dynamic get license;
  @override
  @JsonKey(name: "privacy")
  Privacy? get privacy;
  @override
  @JsonKey(name: "pictures")
  Pictures? get pictures;
  @override
  @JsonKey(name: "tags")
  List<dynamic>? get tags;
  @override
  @JsonKey(name: "stats")
  Stats? get stats;
  @override
  @JsonKey(name: "categories")
  List<dynamic>? get categories;
  @override
  @JsonKey(name: "uploader")
  Uploader? get uploader;
  @override
  @JsonKey(name: "metadata")
  VimeoVideoResponseMetadata? get metadata;
  @override
  @JsonKey(name: "manage_link")
  String? get manageLink;
  @override
  @JsonKey(name: "user")
  User? get user;
  @override
  @JsonKey(name: "last_user_action_event_date")
  DateTime? get lastUserActionEventDate;
  @override
  @JsonKey(name: "parent_folder")
  dynamic get parentFolder;
  @override
  @JsonKey(name: "review_page")
  ReviewPage? get reviewPage;
  @override
  @JsonKey(name: "files")
  List<Download>? get files;
  @override
  @JsonKey(name: "download")
  List<Download>? get download;
  @override
  @JsonKey(name: "app")
  App? get app;
  @override
  @JsonKey(name: "play")
  Play? get play;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "resource_key")
  String? get resourceKey;
  @override
  @JsonKey(name: "upload")
  Upload? get upload;
  @override
  @JsonKey(name: "transcode")
  Transcode? get transcode;
  @override
  @JsonKey(name: "is_playable")
  bool? get isPlayable;
  @override
  @JsonKey(name: "has_audio")
  bool? get hasAudio;
  @override
  @JsonKey(ignore: true)
  _$$VimeoVideoResponseImplCopyWith<_$VimeoVideoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

App _$AppFromJson(Map<String, dynamic> json) {
  return _App.fromJson(json);
}

/// @nodoc
mixin _$App {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppCopyWith<App> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCopyWith<$Res> {
  factory $AppCopyWith(App value, $Res Function(App) then) =
      _$AppCopyWithImpl<$Res, App>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name, @JsonKey(name: "uri") String? uri});
}

/// @nodoc
class _$AppCopyWithImpl<$Res, $Val extends App> implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppImplCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$$AppImplCopyWith(_$AppImpl value, $Res Function(_$AppImpl) then) =
      __$$AppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name, @JsonKey(name: "uri") String? uri});
}

/// @nodoc
class __$$AppImplCopyWithImpl<$Res> extends _$AppCopyWithImpl<$Res, _$AppImpl>
    implements _$$AppImplCopyWith<$Res> {
  __$$AppImplCopyWithImpl(_$AppImpl _value, $Res Function(_$AppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$AppImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppImpl implements _App {
  const _$AppImpl(
      {@JsonKey(name: "name") this.name, @JsonKey(name: "uri") this.uri});

  factory _$AppImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "uri")
  final String? uri;

  @override
  String toString() {
    return 'App(name: $name, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      __$$AppImplCopyWithImpl<_$AppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppImplToJson(
      this,
    );
  }
}

abstract class _App implements App {
  const factory _App(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "uri") final String? uri}) = _$AppImpl;

  factory _App.fromJson(Map<String, dynamic> json) = _$AppImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Download _$DownloadFromJson(Map<String, dynamic> json) {
  return _Download.fromJson(json);
}

/// @nodoc
mixin _$Download {
  @JsonKey(name: "quality")
  String? get quality => throw _privateConstructorUsedError;
  @JsonKey(name: "rendition")
  String? get rendition => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "expires")
  DateTime? get expires => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "created_time")
  DateTime? get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "fps")
  double? get fps => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "md5")
  dynamic get md5 => throw _privateConstructorUsedError;
  @JsonKey(name: "public_name")
  String? get publicName => throw _privateConstructorUsedError;
  @JsonKey(name: "size_short")
  String? get sizeShort => throw _privateConstructorUsedError;
  @JsonKey(name: "codec")
  String? get codec => throw _privateConstructorUsedError;
  @JsonKey(name: "link_expiration_time")
  DateTime? get linkExpirationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadCopyWith<Download> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadCopyWith<$Res> {
  factory $DownloadCopyWith(Download value, $Res Function(Download) then) =
      _$DownloadCopyWithImpl<$Res, Download>;
  @useResult
  $Res call(
      {@JsonKey(name: "quality") String? quality,
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
      @JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime});
}

/// @nodoc
class _$DownloadCopyWithImpl<$Res, $Val extends Download>
    implements $DownloadCopyWith<$Res> {
  _$DownloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quality = freezed,
    Object? rendition = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? expires = freezed,
    Object? link = freezed,
    Object? createdTime = freezed,
    Object? fps = freezed,
    Object? size = freezed,
    Object? md5 = freezed,
    Object? publicName = freezed,
    Object? sizeShort = freezed,
    Object? codec = freezed,
    Object? linkExpirationTime = freezed,
  }) {
    return _then(_value.copyWith(
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      rendition: freezed == rendition
          ? _value.rendition
          : rendition // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fps: freezed == fps
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      md5: freezed == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicName: freezed == publicName
          ? _value.publicName
          : publicName // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeShort: freezed == sizeShort
          ? _value.sizeShort
          : sizeShort // ignore: cast_nullable_to_non_nullable
              as String?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      linkExpirationTime: freezed == linkExpirationTime
          ? _value.linkExpirationTime
          : linkExpirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadImplCopyWith<$Res>
    implements $DownloadCopyWith<$Res> {
  factory _$$DownloadImplCopyWith(
          _$DownloadImpl value, $Res Function(_$DownloadImpl) then) =
      __$$DownloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "quality") String? quality,
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
      @JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime});
}

/// @nodoc
class __$$DownloadImplCopyWithImpl<$Res>
    extends _$DownloadCopyWithImpl<$Res, _$DownloadImpl>
    implements _$$DownloadImplCopyWith<$Res> {
  __$$DownloadImplCopyWithImpl(
      _$DownloadImpl _value, $Res Function(_$DownloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quality = freezed,
    Object? rendition = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? expires = freezed,
    Object? link = freezed,
    Object? createdTime = freezed,
    Object? fps = freezed,
    Object? size = freezed,
    Object? md5 = freezed,
    Object? publicName = freezed,
    Object? sizeShort = freezed,
    Object? codec = freezed,
    Object? linkExpirationTime = freezed,
  }) {
    return _then(_$DownloadImpl(
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      rendition: freezed == rendition
          ? _value.rendition
          : rendition // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fps: freezed == fps
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      md5: freezed == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicName: freezed == publicName
          ? _value.publicName
          : publicName // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeShort: freezed == sizeShort
          ? _value.sizeShort
          : sizeShort // ignore: cast_nullable_to_non_nullable
              as String?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      linkExpirationTime: freezed == linkExpirationTime
          ? _value.linkExpirationTime
          : linkExpirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadImpl implements _Download {
  const _$DownloadImpl(
      {@JsonKey(name: "quality") this.quality,
      @JsonKey(name: "rendition") this.rendition,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "expires") this.expires,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "created_time") this.createdTime,
      @JsonKey(name: "fps") this.fps,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "md5") this.md5,
      @JsonKey(name: "public_name") this.publicName,
      @JsonKey(name: "size_short") this.sizeShort,
      @JsonKey(name: "codec") this.codec,
      @JsonKey(name: "link_expiration_time") this.linkExpirationTime});

  factory _$DownloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadImplFromJson(json);

  @override
  @JsonKey(name: "quality")
  final String? quality;
  @override
  @JsonKey(name: "rendition")
  final String? rendition;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "expires")
  final DateTime? expires;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "created_time")
  final DateTime? createdTime;
  @override
  @JsonKey(name: "fps")
  final double? fps;
  @override
  @JsonKey(name: "size")
  final int? size;
  @override
  @JsonKey(name: "md5")
  final dynamic md5;
  @override
  @JsonKey(name: "public_name")
  final String? publicName;
  @override
  @JsonKey(name: "size_short")
  final String? sizeShort;
  @override
  @JsonKey(name: "codec")
  final String? codec;
  @override
  @JsonKey(name: "link_expiration_time")
  final DateTime? linkExpirationTime;

  @override
  String toString() {
    return 'Download(quality: $quality, rendition: $rendition, type: $type, width: $width, height: $height, expires: $expires, link: $link, createdTime: $createdTime, fps: $fps, size: $size, md5: $md5, publicName: $publicName, sizeShort: $sizeShort, codec: $codec, linkExpirationTime: $linkExpirationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadImpl &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.rendition, rendition) ||
                other.rendition == rendition) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.expires, expires) || other.expires == expires) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.fps, fps) || other.fps == fps) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.md5, md5) &&
            (identical(other.publicName, publicName) ||
                other.publicName == publicName) &&
            (identical(other.sizeShort, sizeShort) ||
                other.sizeShort == sizeShort) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.linkExpirationTime, linkExpirationTime) ||
                other.linkExpirationTime == linkExpirationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quality,
      rendition,
      type,
      width,
      height,
      expires,
      link,
      createdTime,
      fps,
      size,
      const DeepCollectionEquality().hash(md5),
      publicName,
      sizeShort,
      codec,
      linkExpirationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      __$$DownloadImplCopyWithImpl<_$DownloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadImplToJson(
      this,
    );
  }
}

abstract class _Download implements Download {
  const factory _Download(
      {@JsonKey(name: "quality") final String? quality,
      @JsonKey(name: "rendition") final String? rendition,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "width") final int? width,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "expires") final DateTime? expires,
      @JsonKey(name: "link") final String? link,
      @JsonKey(name: "created_time") final DateTime? createdTime,
      @JsonKey(name: "fps") final double? fps,
      @JsonKey(name: "size") final int? size,
      @JsonKey(name: "md5") final dynamic md5,
      @JsonKey(name: "public_name") final String? publicName,
      @JsonKey(name: "size_short") final String? sizeShort,
      @JsonKey(name: "codec") final String? codec,
      @JsonKey(name: "link_expiration_time")
      final DateTime? linkExpirationTime}) = _$DownloadImpl;

  factory _Download.fromJson(Map<String, dynamic> json) =
      _$DownloadImpl.fromJson;

  @override
  @JsonKey(name: "quality")
  String? get quality;
  @override
  @JsonKey(name: "rendition")
  String? get rendition;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "expires")
  DateTime? get expires;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "created_time")
  DateTime? get createdTime;
  @override
  @JsonKey(name: "fps")
  double? get fps;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "md5")
  dynamic get md5;
  @override
  @JsonKey(name: "public_name")
  String? get publicName;
  @override
  @JsonKey(name: "size_short")
  String? get sizeShort;
  @override
  @JsonKey(name: "codec")
  String? get codec;
  @override
  @JsonKey(name: "link_expiration_time")
  DateTime? get linkExpirationTime;
  @override
  @JsonKey(ignore: true)
  _$$DownloadImplCopyWith<_$DownloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Embed _$EmbedFromJson(Map<String, dynamic> json) {
  return _Embed.fromJson(json);
}

/// @nodoc
mixin _$Embed {
  @JsonKey(name: "html")
  String? get html => throw _privateConstructorUsedError;
  @JsonKey(name: "badges")
  Badges? get badges => throw _privateConstructorUsedError;
  @JsonKey(name: "interactive")
  bool? get interactive => throw _privateConstructorUsedError;
  @JsonKey(name: "buttons")
  Buttons? get buttons => throw _privateConstructorUsedError;
  @JsonKey(name: "logos")
  Logos? get logos => throw _privateConstructorUsedError;
  @JsonKey(name: "play_button")
  PlayButton? get playButton => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  Title? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "end_screen")
  List<dynamic>? get endScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "playbar")
  bool? get playbar => throw _privateConstructorUsedError;
  @JsonKey(name: "quality_selector")
  bool? get qualitySelector => throw _privateConstructorUsedError;
  @JsonKey(name: "pip")
  bool? get pip => throw _privateConstructorUsedError;
  @JsonKey(name: "autopip")
  bool? get autopip => throw _privateConstructorUsedError;
  @JsonKey(name: "volume")
  bool? get volume => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "colors")
  Colors? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: "event_schedule")
  bool? get eventSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: "has_cards")
  bool? get hasCards => throw _privateConstructorUsedError;
  @JsonKey(name: "outro_type")
  String? get outroType => throw _privateConstructorUsedError;
  @JsonKey(name: "show_timezone")
  bool? get showTimezone => throw _privateConstructorUsedError;
  @JsonKey(name: "cards")
  List<dynamic>? get cards => throw _privateConstructorUsedError;
  @JsonKey(name: "airplay")
  bool? get airplay => throw _privateConstructorUsedError;
  @JsonKey(name: "audio_tracks")
  bool? get audioTracks => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters")
  bool? get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: "chromecast")
  bool? get chromecast => throw _privateConstructorUsedError;
  @JsonKey(name: "closed_captions")
  bool? get closedCaptions => throw _privateConstructorUsedError;
  @JsonKey(name: "transcript")
  bool? get transcript => throw _privateConstructorUsedError;
  @JsonKey(name: "ask_ai")
  bool? get askAi => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  dynamic get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "email_capture_form")
  dynamic get emailCaptureForm => throw _privateConstructorUsedError;
  @JsonKey(name: "speed")
  bool? get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedCopyWith<Embed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedCopyWith<$Res> {
  factory $EmbedCopyWith(Embed value, $Res Function(Embed) then) =
      _$EmbedCopyWithImpl<$Res, Embed>;
  @useResult
  $Res call(
      {@JsonKey(name: "html") String? html,
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
      @JsonKey(name: "speed") bool? speed});

  $BadgesCopyWith<$Res>? get badges;
  $ButtonsCopyWith<$Res>? get buttons;
  $LogosCopyWith<$Res>? get logos;
  $PlayButtonCopyWith<$Res>? get playButton;
  $TitleCopyWith<$Res>? get title;
  $ColorsCopyWith<$Res>? get colors;
}

/// @nodoc
class _$EmbedCopyWithImpl<$Res, $Val extends Embed>
    implements $EmbedCopyWith<$Res> {
  _$EmbedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = freezed,
    Object? badges = freezed,
    Object? interactive = freezed,
    Object? buttons = freezed,
    Object? logos = freezed,
    Object? playButton = freezed,
    Object? title = freezed,
    Object? endScreen = freezed,
    Object? playbar = freezed,
    Object? qualitySelector = freezed,
    Object? pip = freezed,
    Object? autopip = freezed,
    Object? volume = freezed,
    Object? color = freezed,
    Object? colors = freezed,
    Object? eventSchedule = freezed,
    Object? hasCards = freezed,
    Object? outroType = freezed,
    Object? showTimezone = freezed,
    Object? cards = freezed,
    Object? airplay = freezed,
    Object? audioTracks = freezed,
    Object? chapters = freezed,
    Object? chromecast = freezed,
    Object? closedCaptions = freezed,
    Object? transcript = freezed,
    Object? askAi = freezed,
    Object? uri = freezed,
    Object? emailCaptureForm = freezed,
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: freezed == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges?,
      interactive: freezed == interactive
          ? _value.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as Buttons?,
      logos: freezed == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as Logos?,
      playButton: freezed == playButton
          ? _value.playButton
          : playButton // ignore: cast_nullable_to_non_nullable
              as PlayButton?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      endScreen: freezed == endScreen
          ? _value.endScreen
          : endScreen // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      playbar: freezed == playbar
          ? _value.playbar
          : playbar // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualitySelector: freezed == qualitySelector
          ? _value.qualitySelector
          : qualitySelector // ignore: cast_nullable_to_non_nullable
              as bool?,
      pip: freezed == pip
          ? _value.pip
          : pip // ignore: cast_nullable_to_non_nullable
              as bool?,
      autopip: freezed == autopip
          ? _value.autopip
          : autopip // ignore: cast_nullable_to_non_nullable
              as bool?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      eventSchedule: freezed == eventSchedule
          ? _value.eventSchedule
          : eventSchedule // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCards: freezed == hasCards
          ? _value.hasCards
          : hasCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      outroType: freezed == outroType
          ? _value.outroType
          : outroType // ignore: cast_nullable_to_non_nullable
              as String?,
      showTimezone: freezed == showTimezone
          ? _value.showTimezone
          : showTimezone // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: freezed == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      airplay: freezed == airplay
          ? _value.airplay
          : airplay // ignore: cast_nullable_to_non_nullable
              as bool?,
      audioTracks: freezed == audioTracks
          ? _value.audioTracks
          : audioTracks // ignore: cast_nullable_to_non_nullable
              as bool?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as bool?,
      chromecast: freezed == chromecast
          ? _value.chromecast
          : chromecast // ignore: cast_nullable_to_non_nullable
              as bool?,
      closedCaptions: freezed == closedCaptions
          ? _value.closedCaptions
          : closedCaptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as bool?,
      askAi: freezed == askAi
          ? _value.askAi
          : askAi // ignore: cast_nullable_to_non_nullable
              as bool?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailCaptureForm: freezed == emailCaptureForm
          ? _value.emailCaptureForm
          : emailCaptureForm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BadgesCopyWith<$Res>? get badges {
    if (_value.badges == null) {
      return null;
    }

    return $BadgesCopyWith<$Res>(_value.badges!, (value) {
      return _then(_value.copyWith(badges: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ButtonsCopyWith<$Res>? get buttons {
    if (_value.buttons == null) {
      return null;
    }

    return $ButtonsCopyWith<$Res>(_value.buttons!, (value) {
      return _then(_value.copyWith(buttons: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LogosCopyWith<$Res>? get logos {
    if (_value.logos == null) {
      return null;
    }

    return $LogosCopyWith<$Res>(_value.logos!, (value) {
      return _then(_value.copyWith(logos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayButtonCopyWith<$Res>? get playButton {
    if (_value.playButton == null) {
      return null;
    }

    return $PlayButtonCopyWith<$Res>(_value.playButton!, (value) {
      return _then(_value.copyWith(playButton: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $TitleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorsCopyWith<$Res>? get colors {
    if (_value.colors == null) {
      return null;
    }

    return $ColorsCopyWith<$Res>(_value.colors!, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbedImplCopyWith<$Res> implements $EmbedCopyWith<$Res> {
  factory _$$EmbedImplCopyWith(
          _$EmbedImpl value, $Res Function(_$EmbedImpl) then) =
      __$$EmbedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "html") String? html,
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
      @JsonKey(name: "speed") bool? speed});

  @override
  $BadgesCopyWith<$Res>? get badges;
  @override
  $ButtonsCopyWith<$Res>? get buttons;
  @override
  $LogosCopyWith<$Res>? get logos;
  @override
  $PlayButtonCopyWith<$Res>? get playButton;
  @override
  $TitleCopyWith<$Res>? get title;
  @override
  $ColorsCopyWith<$Res>? get colors;
}

/// @nodoc
class __$$EmbedImplCopyWithImpl<$Res>
    extends _$EmbedCopyWithImpl<$Res, _$EmbedImpl>
    implements _$$EmbedImplCopyWith<$Res> {
  __$$EmbedImplCopyWithImpl(
      _$EmbedImpl _value, $Res Function(_$EmbedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = freezed,
    Object? badges = freezed,
    Object? interactive = freezed,
    Object? buttons = freezed,
    Object? logos = freezed,
    Object? playButton = freezed,
    Object? title = freezed,
    Object? endScreen = freezed,
    Object? playbar = freezed,
    Object? qualitySelector = freezed,
    Object? pip = freezed,
    Object? autopip = freezed,
    Object? volume = freezed,
    Object? color = freezed,
    Object? colors = freezed,
    Object? eventSchedule = freezed,
    Object? hasCards = freezed,
    Object? outroType = freezed,
    Object? showTimezone = freezed,
    Object? cards = freezed,
    Object? airplay = freezed,
    Object? audioTracks = freezed,
    Object? chapters = freezed,
    Object? chromecast = freezed,
    Object? closedCaptions = freezed,
    Object? transcript = freezed,
    Object? askAi = freezed,
    Object? uri = freezed,
    Object? emailCaptureForm = freezed,
    Object? speed = freezed,
  }) {
    return _then(_$EmbedImpl(
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: freezed == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges?,
      interactive: freezed == interactive
          ? _value.interactive
          : interactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as Buttons?,
      logos: freezed == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as Logos?,
      playButton: freezed == playButton
          ? _value.playButton
          : playButton // ignore: cast_nullable_to_non_nullable
              as PlayButton?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      endScreen: freezed == endScreen
          ? _value._endScreen
          : endScreen // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      playbar: freezed == playbar
          ? _value.playbar
          : playbar // ignore: cast_nullable_to_non_nullable
              as bool?,
      qualitySelector: freezed == qualitySelector
          ? _value.qualitySelector
          : qualitySelector // ignore: cast_nullable_to_non_nullable
              as bool?,
      pip: freezed == pip
          ? _value.pip
          : pip // ignore: cast_nullable_to_non_nullable
              as bool?,
      autopip: freezed == autopip
          ? _value.autopip
          : autopip // ignore: cast_nullable_to_non_nullable
              as bool?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      eventSchedule: freezed == eventSchedule
          ? _value.eventSchedule
          : eventSchedule // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCards: freezed == hasCards
          ? _value.hasCards
          : hasCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      outroType: freezed == outroType
          ? _value.outroType
          : outroType // ignore: cast_nullable_to_non_nullable
              as String?,
      showTimezone: freezed == showTimezone
          ? _value.showTimezone
          : showTimezone // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: freezed == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      airplay: freezed == airplay
          ? _value.airplay
          : airplay // ignore: cast_nullable_to_non_nullable
              as bool?,
      audioTracks: freezed == audioTracks
          ? _value.audioTracks
          : audioTracks // ignore: cast_nullable_to_non_nullable
              as bool?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as bool?,
      chromecast: freezed == chromecast
          ? _value.chromecast
          : chromecast // ignore: cast_nullable_to_non_nullable
              as bool?,
      closedCaptions: freezed == closedCaptions
          ? _value.closedCaptions
          : closedCaptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as bool?,
      askAi: freezed == askAi
          ? _value.askAi
          : askAi // ignore: cast_nullable_to_non_nullable
              as bool?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailCaptureForm: freezed == emailCaptureForm
          ? _value.emailCaptureForm
          : emailCaptureForm // ignore: cast_nullable_to_non_nullable
              as dynamic,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbedImpl implements _Embed {
  const _$EmbedImpl(
      {@JsonKey(name: "html") this.html,
      @JsonKey(name: "badges") this.badges,
      @JsonKey(name: "interactive") this.interactive,
      @JsonKey(name: "buttons") this.buttons,
      @JsonKey(name: "logos") this.logos,
      @JsonKey(name: "play_button") this.playButton,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "end_screen") final List<dynamic>? endScreen,
      @JsonKey(name: "playbar") this.playbar,
      @JsonKey(name: "quality_selector") this.qualitySelector,
      @JsonKey(name: "pip") this.pip,
      @JsonKey(name: "autopip") this.autopip,
      @JsonKey(name: "volume") this.volume,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "colors") this.colors,
      @JsonKey(name: "event_schedule") this.eventSchedule,
      @JsonKey(name: "has_cards") this.hasCards,
      @JsonKey(name: "outro_type") this.outroType,
      @JsonKey(name: "show_timezone") this.showTimezone,
      @JsonKey(name: "cards") final List<dynamic>? cards,
      @JsonKey(name: "airplay") this.airplay,
      @JsonKey(name: "audio_tracks") this.audioTracks,
      @JsonKey(name: "chapters") this.chapters,
      @JsonKey(name: "chromecast") this.chromecast,
      @JsonKey(name: "closed_captions") this.closedCaptions,
      @JsonKey(name: "transcript") this.transcript,
      @JsonKey(name: "ask_ai") this.askAi,
      @JsonKey(name: "uri") this.uri,
      @JsonKey(name: "email_capture_form") this.emailCaptureForm,
      @JsonKey(name: "speed") this.speed})
      : _endScreen = endScreen,
        _cards = cards;

  factory _$EmbedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbedImplFromJson(json);

  @override
  @JsonKey(name: "html")
  final String? html;
  @override
  @JsonKey(name: "badges")
  final Badges? badges;
  @override
  @JsonKey(name: "interactive")
  final bool? interactive;
  @override
  @JsonKey(name: "buttons")
  final Buttons? buttons;
  @override
  @JsonKey(name: "logos")
  final Logos? logos;
  @override
  @JsonKey(name: "play_button")
  final PlayButton? playButton;
  @override
  @JsonKey(name: "title")
  final Title? title;
  final List<dynamic>? _endScreen;
  @override
  @JsonKey(name: "end_screen")
  List<dynamic>? get endScreen {
    final value = _endScreen;
    if (value == null) return null;
    if (_endScreen is EqualUnmodifiableListView) return _endScreen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "playbar")
  final bool? playbar;
  @override
  @JsonKey(name: "quality_selector")
  final bool? qualitySelector;
  @override
  @JsonKey(name: "pip")
  final bool? pip;
  @override
  @JsonKey(name: "autopip")
  final bool? autopip;
  @override
  @JsonKey(name: "volume")
  final bool? volume;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "colors")
  final Colors? colors;
  @override
  @JsonKey(name: "event_schedule")
  final bool? eventSchedule;
  @override
  @JsonKey(name: "has_cards")
  final bool? hasCards;
  @override
  @JsonKey(name: "outro_type")
  final String? outroType;
  @override
  @JsonKey(name: "show_timezone")
  final bool? showTimezone;
  final List<dynamic>? _cards;
  @override
  @JsonKey(name: "cards")
  List<dynamic>? get cards {
    final value = _cards;
    if (value == null) return null;
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "airplay")
  final bool? airplay;
  @override
  @JsonKey(name: "audio_tracks")
  final bool? audioTracks;
  @override
  @JsonKey(name: "chapters")
  final bool? chapters;
  @override
  @JsonKey(name: "chromecast")
  final bool? chromecast;
  @override
  @JsonKey(name: "closed_captions")
  final bool? closedCaptions;
  @override
  @JsonKey(name: "transcript")
  final bool? transcript;
  @override
  @JsonKey(name: "ask_ai")
  final bool? askAi;
  @override
  @JsonKey(name: "uri")
  final dynamic uri;
  @override
  @JsonKey(name: "email_capture_form")
  final dynamic emailCaptureForm;
  @override
  @JsonKey(name: "speed")
  final bool? speed;

  @override
  String toString() {
    return 'Embed(html: $html, badges: $badges, interactive: $interactive, buttons: $buttons, logos: $logos, playButton: $playButton, title: $title, endScreen: $endScreen, playbar: $playbar, qualitySelector: $qualitySelector, pip: $pip, autopip: $autopip, volume: $volume, color: $color, colors: $colors, eventSchedule: $eventSchedule, hasCards: $hasCards, outroType: $outroType, showTimezone: $showTimezone, cards: $cards, airplay: $airplay, audioTracks: $audioTracks, chapters: $chapters, chromecast: $chromecast, closedCaptions: $closedCaptions, transcript: $transcript, askAi: $askAi, uri: $uri, emailCaptureForm: $emailCaptureForm, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbedImpl &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.badges, badges) || other.badges == badges) &&
            (identical(other.interactive, interactive) ||
                other.interactive == interactive) &&
            (identical(other.buttons, buttons) || other.buttons == buttons) &&
            (identical(other.logos, logos) || other.logos == logos) &&
            (identical(other.playButton, playButton) ||
                other.playButton == playButton) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._endScreen, _endScreen) &&
            (identical(other.playbar, playbar) || other.playbar == playbar) &&
            (identical(other.qualitySelector, qualitySelector) ||
                other.qualitySelector == qualitySelector) &&
            (identical(other.pip, pip) || other.pip == pip) &&
            (identical(other.autopip, autopip) || other.autopip == autopip) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.eventSchedule, eventSchedule) ||
                other.eventSchedule == eventSchedule) &&
            (identical(other.hasCards, hasCards) ||
                other.hasCards == hasCards) &&
            (identical(other.outroType, outroType) ||
                other.outroType == outroType) &&
            (identical(other.showTimezone, showTimezone) ||
                other.showTimezone == showTimezone) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.airplay, airplay) || other.airplay == airplay) &&
            (identical(other.audioTracks, audioTracks) ||
                other.audioTracks == audioTracks) &&
            (identical(other.chapters, chapters) ||
                other.chapters == chapters) &&
            (identical(other.chromecast, chromecast) ||
                other.chromecast == chromecast) &&
            (identical(other.closedCaptions, closedCaptions) ||
                other.closedCaptions == closedCaptions) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.askAi, askAi) || other.askAi == askAi) &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality()
                .equals(other.emailCaptureForm, emailCaptureForm) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        html,
        badges,
        interactive,
        buttons,
        logos,
        playButton,
        title,
        const DeepCollectionEquality().hash(_endScreen),
        playbar,
        qualitySelector,
        pip,
        autopip,
        volume,
        color,
        colors,
        eventSchedule,
        hasCards,
        outroType,
        showTimezone,
        const DeepCollectionEquality().hash(_cards),
        airplay,
        audioTracks,
        chapters,
        chromecast,
        closedCaptions,
        transcript,
        askAi,
        const DeepCollectionEquality().hash(uri),
        const DeepCollectionEquality().hash(emailCaptureForm),
        speed
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbedImplCopyWith<_$EmbedImpl> get copyWith =>
      __$$EmbedImplCopyWithImpl<_$EmbedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbedImplToJson(
      this,
    );
  }
}

abstract class _Embed implements Embed {
  const factory _Embed(
      {@JsonKey(name: "html") final String? html,
      @JsonKey(name: "badges") final Badges? badges,
      @JsonKey(name: "interactive") final bool? interactive,
      @JsonKey(name: "buttons") final Buttons? buttons,
      @JsonKey(name: "logos") final Logos? logos,
      @JsonKey(name: "play_button") final PlayButton? playButton,
      @JsonKey(name: "title") final Title? title,
      @JsonKey(name: "end_screen") final List<dynamic>? endScreen,
      @JsonKey(name: "playbar") final bool? playbar,
      @JsonKey(name: "quality_selector") final bool? qualitySelector,
      @JsonKey(name: "pip") final bool? pip,
      @JsonKey(name: "autopip") final bool? autopip,
      @JsonKey(name: "volume") final bool? volume,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "colors") final Colors? colors,
      @JsonKey(name: "event_schedule") final bool? eventSchedule,
      @JsonKey(name: "has_cards") final bool? hasCards,
      @JsonKey(name: "outro_type") final String? outroType,
      @JsonKey(name: "show_timezone") final bool? showTimezone,
      @JsonKey(name: "cards") final List<dynamic>? cards,
      @JsonKey(name: "airplay") final bool? airplay,
      @JsonKey(name: "audio_tracks") final bool? audioTracks,
      @JsonKey(name: "chapters") final bool? chapters,
      @JsonKey(name: "chromecast") final bool? chromecast,
      @JsonKey(name: "closed_captions") final bool? closedCaptions,
      @JsonKey(name: "transcript") final bool? transcript,
      @JsonKey(name: "ask_ai") final bool? askAi,
      @JsonKey(name: "uri") final dynamic uri,
      @JsonKey(name: "email_capture_form") final dynamic emailCaptureForm,
      @JsonKey(name: "speed") final bool? speed}) = _$EmbedImpl;

  factory _Embed.fromJson(Map<String, dynamic> json) = _$EmbedImpl.fromJson;

  @override
  @JsonKey(name: "html")
  String? get html;
  @override
  @JsonKey(name: "badges")
  Badges? get badges;
  @override
  @JsonKey(name: "interactive")
  bool? get interactive;
  @override
  @JsonKey(name: "buttons")
  Buttons? get buttons;
  @override
  @JsonKey(name: "logos")
  Logos? get logos;
  @override
  @JsonKey(name: "play_button")
  PlayButton? get playButton;
  @override
  @JsonKey(name: "title")
  Title? get title;
  @override
  @JsonKey(name: "end_screen")
  List<dynamic>? get endScreen;
  @override
  @JsonKey(name: "playbar")
  bool? get playbar;
  @override
  @JsonKey(name: "quality_selector")
  bool? get qualitySelector;
  @override
  @JsonKey(name: "pip")
  bool? get pip;
  @override
  @JsonKey(name: "autopip")
  bool? get autopip;
  @override
  @JsonKey(name: "volume")
  bool? get volume;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "colors")
  Colors? get colors;
  @override
  @JsonKey(name: "event_schedule")
  bool? get eventSchedule;
  @override
  @JsonKey(name: "has_cards")
  bool? get hasCards;
  @override
  @JsonKey(name: "outro_type")
  String? get outroType;
  @override
  @JsonKey(name: "show_timezone")
  bool? get showTimezone;
  @override
  @JsonKey(name: "cards")
  List<dynamic>? get cards;
  @override
  @JsonKey(name: "airplay")
  bool? get airplay;
  @override
  @JsonKey(name: "audio_tracks")
  bool? get audioTracks;
  @override
  @JsonKey(name: "chapters")
  bool? get chapters;
  @override
  @JsonKey(name: "chromecast")
  bool? get chromecast;
  @override
  @JsonKey(name: "closed_captions")
  bool? get closedCaptions;
  @override
  @JsonKey(name: "transcript")
  bool? get transcript;
  @override
  @JsonKey(name: "ask_ai")
  bool? get askAi;
  @override
  @JsonKey(name: "uri")
  dynamic get uri;
  @override
  @JsonKey(name: "email_capture_form")
  dynamic get emailCaptureForm;
  @override
  @JsonKey(name: "speed")
  bool? get speed;
  @override
  @JsonKey(ignore: true)
  _$$EmbedImplCopyWith<_$EmbedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Badges _$BadgesFromJson(Map<String, dynamic> json) {
  return _Badges.fromJson(json);
}

/// @nodoc
mixin _$Badges {
  @JsonKey(name: "hdr")
  bool? get hdr => throw _privateConstructorUsedError;
  @JsonKey(name: "live")
  Live? get live => throw _privateConstructorUsedError;
  @JsonKey(name: "staff_pick")
  StaffPick? get staffPick => throw _privateConstructorUsedError;
  @JsonKey(name: "vod")
  bool? get vod => throw _privateConstructorUsedError;
  @JsonKey(name: "weekend_challenge")
  bool? get weekendChallenge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgesCopyWith<Badges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgesCopyWith<$Res> {
  factory $BadgesCopyWith(Badges value, $Res Function(Badges) then) =
      _$BadgesCopyWithImpl<$Res, Badges>;
  @useResult
  $Res call(
      {@JsonKey(name: "hdr") bool? hdr,
      @JsonKey(name: "live") Live? live,
      @JsonKey(name: "staff_pick") StaffPick? staffPick,
      @JsonKey(name: "vod") bool? vod,
      @JsonKey(name: "weekend_challenge") bool? weekendChallenge});

  $LiveCopyWith<$Res>? get live;
  $StaffPickCopyWith<$Res>? get staffPick;
}

/// @nodoc
class _$BadgesCopyWithImpl<$Res, $Val extends Badges>
    implements $BadgesCopyWith<$Res> {
  _$BadgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hdr = freezed,
    Object? live = freezed,
    Object? staffPick = freezed,
    Object? vod = freezed,
    Object? weekendChallenge = freezed,
  }) {
    return _then(_value.copyWith(
      hdr: freezed == hdr
          ? _value.hdr
          : hdr // ignore: cast_nullable_to_non_nullable
              as bool?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as Live?,
      staffPick: freezed == staffPick
          ? _value.staffPick
          : staffPick // ignore: cast_nullable_to_non_nullable
              as StaffPick?,
      vod: freezed == vod
          ? _value.vod
          : vod // ignore: cast_nullable_to_non_nullable
              as bool?,
      weekendChallenge: freezed == weekendChallenge
          ? _value.weekendChallenge
          : weekendChallenge // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LiveCopyWith<$Res>? get live {
    if (_value.live == null) {
      return null;
    }

    return $LiveCopyWith<$Res>(_value.live!, (value) {
      return _then(_value.copyWith(live: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffPickCopyWith<$Res>? get staffPick {
    if (_value.staffPick == null) {
      return null;
    }

    return $StaffPickCopyWith<$Res>(_value.staffPick!, (value) {
      return _then(_value.copyWith(staffPick: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BadgesImplCopyWith<$Res> implements $BadgesCopyWith<$Res> {
  factory _$$BadgesImplCopyWith(
          _$BadgesImpl value, $Res Function(_$BadgesImpl) then) =
      __$$BadgesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "hdr") bool? hdr,
      @JsonKey(name: "live") Live? live,
      @JsonKey(name: "staff_pick") StaffPick? staffPick,
      @JsonKey(name: "vod") bool? vod,
      @JsonKey(name: "weekend_challenge") bool? weekendChallenge});

  @override
  $LiveCopyWith<$Res>? get live;
  @override
  $StaffPickCopyWith<$Res>? get staffPick;
}

/// @nodoc
class __$$BadgesImplCopyWithImpl<$Res>
    extends _$BadgesCopyWithImpl<$Res, _$BadgesImpl>
    implements _$$BadgesImplCopyWith<$Res> {
  __$$BadgesImplCopyWithImpl(
      _$BadgesImpl _value, $Res Function(_$BadgesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hdr = freezed,
    Object? live = freezed,
    Object? staffPick = freezed,
    Object? vod = freezed,
    Object? weekendChallenge = freezed,
  }) {
    return _then(_$BadgesImpl(
      hdr: freezed == hdr
          ? _value.hdr
          : hdr // ignore: cast_nullable_to_non_nullable
              as bool?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as Live?,
      staffPick: freezed == staffPick
          ? _value.staffPick
          : staffPick // ignore: cast_nullable_to_non_nullable
              as StaffPick?,
      vod: freezed == vod
          ? _value.vod
          : vod // ignore: cast_nullable_to_non_nullable
              as bool?,
      weekendChallenge: freezed == weekendChallenge
          ? _value.weekendChallenge
          : weekendChallenge // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgesImpl implements _Badges {
  const _$BadgesImpl(
      {@JsonKey(name: "hdr") this.hdr,
      @JsonKey(name: "live") this.live,
      @JsonKey(name: "staff_pick") this.staffPick,
      @JsonKey(name: "vod") this.vod,
      @JsonKey(name: "weekend_challenge") this.weekendChallenge});

  factory _$BadgesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgesImplFromJson(json);

  @override
  @JsonKey(name: "hdr")
  final bool? hdr;
  @override
  @JsonKey(name: "live")
  final Live? live;
  @override
  @JsonKey(name: "staff_pick")
  final StaffPick? staffPick;
  @override
  @JsonKey(name: "vod")
  final bool? vod;
  @override
  @JsonKey(name: "weekend_challenge")
  final bool? weekendChallenge;

  @override
  String toString() {
    return 'Badges(hdr: $hdr, live: $live, staffPick: $staffPick, vod: $vod, weekendChallenge: $weekendChallenge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgesImpl &&
            (identical(other.hdr, hdr) || other.hdr == hdr) &&
            (identical(other.live, live) || other.live == live) &&
            (identical(other.staffPick, staffPick) ||
                other.staffPick == staffPick) &&
            (identical(other.vod, vod) || other.vod == vod) &&
            (identical(other.weekendChallenge, weekendChallenge) ||
                other.weekendChallenge == weekendChallenge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hdr, live, staffPick, vod, weekendChallenge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgesImplCopyWith<_$BadgesImpl> get copyWith =>
      __$$BadgesImplCopyWithImpl<_$BadgesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgesImplToJson(
      this,
    );
  }
}

abstract class _Badges implements Badges {
  const factory _Badges(
          {@JsonKey(name: "hdr") final bool? hdr,
          @JsonKey(name: "live") final Live? live,
          @JsonKey(name: "staff_pick") final StaffPick? staffPick,
          @JsonKey(name: "vod") final bool? vod,
          @JsonKey(name: "weekend_challenge") final bool? weekendChallenge}) =
      _$BadgesImpl;

  factory _Badges.fromJson(Map<String, dynamic> json) = _$BadgesImpl.fromJson;

  @override
  @JsonKey(name: "hdr")
  bool? get hdr;
  @override
  @JsonKey(name: "live")
  Live? get live;
  @override
  @JsonKey(name: "staff_pick")
  StaffPick? get staffPick;
  @override
  @JsonKey(name: "vod")
  bool? get vod;
  @override
  @JsonKey(name: "weekend_challenge")
  bool? get weekendChallenge;
  @override
  @JsonKey(ignore: true)
  _$$BadgesImplCopyWith<_$BadgesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Live _$LiveFromJson(Map<String, dynamic> json) {
  return _Live.fromJson(json);
}

/// @nodoc
mixin _$Live {
  @JsonKey(name: "streaming")
  bool? get streaming => throw _privateConstructorUsedError;
  @JsonKey(name: "archived")
  bool? get archived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveCopyWith<Live> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveCopyWith<$Res> {
  factory $LiveCopyWith(Live value, $Res Function(Live) then) =
      _$LiveCopyWithImpl<$Res, Live>;
  @useResult
  $Res call(
      {@JsonKey(name: "streaming") bool? streaming,
      @JsonKey(name: "archived") bool? archived});
}

/// @nodoc
class _$LiveCopyWithImpl<$Res, $Val extends Live>
    implements $LiveCopyWith<$Res> {
  _$LiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streaming = freezed,
    Object? archived = freezed,
  }) {
    return _then(_value.copyWith(
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveImplCopyWith<$Res> implements $LiveCopyWith<$Res> {
  factory _$$LiveImplCopyWith(
          _$LiveImpl value, $Res Function(_$LiveImpl) then) =
      __$$LiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "streaming") bool? streaming,
      @JsonKey(name: "archived") bool? archived});
}

/// @nodoc
class __$$LiveImplCopyWithImpl<$Res>
    extends _$LiveCopyWithImpl<$Res, _$LiveImpl>
    implements _$$LiveImplCopyWith<$Res> {
  __$$LiveImplCopyWithImpl(_$LiveImpl _value, $Res Function(_$LiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streaming = freezed,
    Object? archived = freezed,
  }) {
    return _then(_$LiveImpl(
      streaming: freezed == streaming
          ? _value.streaming
          : streaming // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveImpl implements _Live {
  const _$LiveImpl(
      {@JsonKey(name: "streaming") this.streaming,
      @JsonKey(name: "archived") this.archived});

  factory _$LiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveImplFromJson(json);

  @override
  @JsonKey(name: "streaming")
  final bool? streaming;
  @override
  @JsonKey(name: "archived")
  final bool? archived;

  @override
  String toString() {
    return 'Live(streaming: $streaming, archived: $archived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveImpl &&
            (identical(other.streaming, streaming) ||
                other.streaming == streaming) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streaming, archived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveImplCopyWith<_$LiveImpl> get copyWith =>
      __$$LiveImplCopyWithImpl<_$LiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveImplToJson(
      this,
    );
  }
}

abstract class _Live implements Live {
  const factory _Live(
      {@JsonKey(name: "streaming") final bool? streaming,
      @JsonKey(name: "archived") final bool? archived}) = _$LiveImpl;

  factory _Live.fromJson(Map<String, dynamic> json) = _$LiveImpl.fromJson;

  @override
  @JsonKey(name: "streaming")
  bool? get streaming;
  @override
  @JsonKey(name: "archived")
  bool? get archived;
  @override
  @JsonKey(ignore: true)
  _$$LiveImplCopyWith<_$LiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffPick _$StaffPickFromJson(Map<String, dynamic> json) {
  return _StaffPick.fromJson(json);
}

/// @nodoc
mixin _$StaffPick {
  @JsonKey(name: "normal")
  bool? get normal => throw _privateConstructorUsedError;
  @JsonKey(name: "best_of_the_month")
  bool? get bestOfTheMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "best_of_the_year")
  bool? get bestOfTheYear => throw _privateConstructorUsedError;
  @JsonKey(name: "premiere")
  bool? get premiere => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffPickCopyWith<StaffPick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffPickCopyWith<$Res> {
  factory $StaffPickCopyWith(StaffPick value, $Res Function(StaffPick) then) =
      _$StaffPickCopyWithImpl<$Res, StaffPick>;
  @useResult
  $Res call(
      {@JsonKey(name: "normal") bool? normal,
      @JsonKey(name: "best_of_the_month") bool? bestOfTheMonth,
      @JsonKey(name: "best_of_the_year") bool? bestOfTheYear,
      @JsonKey(name: "premiere") bool? premiere});
}

/// @nodoc
class _$StaffPickCopyWithImpl<$Res, $Val extends StaffPick>
    implements $StaffPickCopyWith<$Res> {
  _$StaffPickCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? normal = freezed,
    Object? bestOfTheMonth = freezed,
    Object? bestOfTheYear = freezed,
    Object? premiere = freezed,
  }) {
    return _then(_value.copyWith(
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestOfTheMonth: freezed == bestOfTheMonth
          ? _value.bestOfTheMonth
          : bestOfTheMonth // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestOfTheYear: freezed == bestOfTheYear
          ? _value.bestOfTheYear
          : bestOfTheYear // ignore: cast_nullable_to_non_nullable
              as bool?,
      premiere: freezed == premiere
          ? _value.premiere
          : premiere // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffPickImplCopyWith<$Res>
    implements $StaffPickCopyWith<$Res> {
  factory _$$StaffPickImplCopyWith(
          _$StaffPickImpl value, $Res Function(_$StaffPickImpl) then) =
      __$$StaffPickImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "normal") bool? normal,
      @JsonKey(name: "best_of_the_month") bool? bestOfTheMonth,
      @JsonKey(name: "best_of_the_year") bool? bestOfTheYear,
      @JsonKey(name: "premiere") bool? premiere});
}

/// @nodoc
class __$$StaffPickImplCopyWithImpl<$Res>
    extends _$StaffPickCopyWithImpl<$Res, _$StaffPickImpl>
    implements _$$StaffPickImplCopyWith<$Res> {
  __$$StaffPickImplCopyWithImpl(
      _$StaffPickImpl _value, $Res Function(_$StaffPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? normal = freezed,
    Object? bestOfTheMonth = freezed,
    Object? bestOfTheYear = freezed,
    Object? premiere = freezed,
  }) {
    return _then(_$StaffPickImpl(
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestOfTheMonth: freezed == bestOfTheMonth
          ? _value.bestOfTheMonth
          : bestOfTheMonth // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestOfTheYear: freezed == bestOfTheYear
          ? _value.bestOfTheYear
          : bestOfTheYear // ignore: cast_nullable_to_non_nullable
              as bool?,
      premiere: freezed == premiere
          ? _value.premiere
          : premiere // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffPickImpl implements _StaffPick {
  const _$StaffPickImpl(
      {@JsonKey(name: "normal") this.normal,
      @JsonKey(name: "best_of_the_month") this.bestOfTheMonth,
      @JsonKey(name: "best_of_the_year") this.bestOfTheYear,
      @JsonKey(name: "premiere") this.premiere});

  factory _$StaffPickImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffPickImplFromJson(json);

  @override
  @JsonKey(name: "normal")
  final bool? normal;
  @override
  @JsonKey(name: "best_of_the_month")
  final bool? bestOfTheMonth;
  @override
  @JsonKey(name: "best_of_the_year")
  final bool? bestOfTheYear;
  @override
  @JsonKey(name: "premiere")
  final bool? premiere;

  @override
  String toString() {
    return 'StaffPick(normal: $normal, bestOfTheMonth: $bestOfTheMonth, bestOfTheYear: $bestOfTheYear, premiere: $premiere)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffPickImpl &&
            (identical(other.normal, normal) || other.normal == normal) &&
            (identical(other.bestOfTheMonth, bestOfTheMonth) ||
                other.bestOfTheMonth == bestOfTheMonth) &&
            (identical(other.bestOfTheYear, bestOfTheYear) ||
                other.bestOfTheYear == bestOfTheYear) &&
            (identical(other.premiere, premiere) ||
                other.premiere == premiere));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, normal, bestOfTheMonth, bestOfTheYear, premiere);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffPickImplCopyWith<_$StaffPickImpl> get copyWith =>
      __$$StaffPickImplCopyWithImpl<_$StaffPickImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffPickImplToJson(
      this,
    );
  }
}

abstract class _StaffPick implements StaffPick {
  const factory _StaffPick(
      {@JsonKey(name: "normal") final bool? normal,
      @JsonKey(name: "best_of_the_month") final bool? bestOfTheMonth,
      @JsonKey(name: "best_of_the_year") final bool? bestOfTheYear,
      @JsonKey(name: "premiere") final bool? premiere}) = _$StaffPickImpl;

  factory _StaffPick.fromJson(Map<String, dynamic> json) =
      _$StaffPickImpl.fromJson;

  @override
  @JsonKey(name: "normal")
  bool? get normal;
  @override
  @JsonKey(name: "best_of_the_month")
  bool? get bestOfTheMonth;
  @override
  @JsonKey(name: "best_of_the_year")
  bool? get bestOfTheYear;
  @override
  @JsonKey(name: "premiere")
  bool? get premiere;
  @override
  @JsonKey(ignore: true)
  _$$StaffPickImplCopyWith<_$StaffPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Buttons _$ButtonsFromJson(Map<String, dynamic> json) {
  return _Buttons.fromJson(json);
}

/// @nodoc
mixin _$Buttons {
  @JsonKey(name: "watchlater")
  bool? get watchlater => throw _privateConstructorUsedError;
  @JsonKey(name: "share")
  bool? get share => throw _privateConstructorUsedError;
  @JsonKey(name: "embed")
  bool? get embed => throw _privateConstructorUsedError;
  @JsonKey(name: "hd")
  bool? get hd => throw _privateConstructorUsedError;
  @JsonKey(name: "fullscreen")
  bool? get fullscreen => throw _privateConstructorUsedError;
  @JsonKey(name: "scaling")
  bool? get scaling => throw _privateConstructorUsedError;
  @JsonKey(name: "like")
  bool? get like => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ButtonsCopyWith<Buttons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonsCopyWith<$Res> {
  factory $ButtonsCopyWith(Buttons value, $Res Function(Buttons) then) =
      _$ButtonsCopyWithImpl<$Res, Buttons>;
  @useResult
  $Res call(
      {@JsonKey(name: "watchlater") bool? watchlater,
      @JsonKey(name: "share") bool? share,
      @JsonKey(name: "embed") bool? embed,
      @JsonKey(name: "hd") bool? hd,
      @JsonKey(name: "fullscreen") bool? fullscreen,
      @JsonKey(name: "scaling") bool? scaling,
      @JsonKey(name: "like") bool? like});
}

/// @nodoc
class _$ButtonsCopyWithImpl<$Res, $Val extends Buttons>
    implements $ButtonsCopyWith<$Res> {
  _$ButtonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlater = freezed,
    Object? share = freezed,
    Object? embed = freezed,
    Object? hd = freezed,
    Object? fullscreen = freezed,
    Object? scaling = freezed,
    Object? like = freezed,
  }) {
    return _then(_value.copyWith(
      watchlater: freezed == watchlater
          ? _value.watchlater
          : watchlater // ignore: cast_nullable_to_non_nullable
              as bool?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as bool?,
      hd: freezed == hd
          ? _value.hd
          : hd // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullscreen: freezed == fullscreen
          ? _value.fullscreen
          : fullscreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      scaling: freezed == scaling
          ? _value.scaling
          : scaling // ignore: cast_nullable_to_non_nullable
              as bool?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonsImplCopyWith<$Res> implements $ButtonsCopyWith<$Res> {
  factory _$$ButtonsImplCopyWith(
          _$ButtonsImpl value, $Res Function(_$ButtonsImpl) then) =
      __$$ButtonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "watchlater") bool? watchlater,
      @JsonKey(name: "share") bool? share,
      @JsonKey(name: "embed") bool? embed,
      @JsonKey(name: "hd") bool? hd,
      @JsonKey(name: "fullscreen") bool? fullscreen,
      @JsonKey(name: "scaling") bool? scaling,
      @JsonKey(name: "like") bool? like});
}

/// @nodoc
class __$$ButtonsImplCopyWithImpl<$Res>
    extends _$ButtonsCopyWithImpl<$Res, _$ButtonsImpl>
    implements _$$ButtonsImplCopyWith<$Res> {
  __$$ButtonsImplCopyWithImpl(
      _$ButtonsImpl _value, $Res Function(_$ButtonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlater = freezed,
    Object? share = freezed,
    Object? embed = freezed,
    Object? hd = freezed,
    Object? fullscreen = freezed,
    Object? scaling = freezed,
    Object? like = freezed,
  }) {
    return _then(_$ButtonsImpl(
      watchlater: freezed == watchlater
          ? _value.watchlater
          : watchlater // ignore: cast_nullable_to_non_nullable
              as bool?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as bool?,
      hd: freezed == hd
          ? _value.hd
          : hd // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullscreen: freezed == fullscreen
          ? _value.fullscreen
          : fullscreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      scaling: freezed == scaling
          ? _value.scaling
          : scaling // ignore: cast_nullable_to_non_nullable
              as bool?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonsImpl implements _Buttons {
  const _$ButtonsImpl(
      {@JsonKey(name: "watchlater") this.watchlater,
      @JsonKey(name: "share") this.share,
      @JsonKey(name: "embed") this.embed,
      @JsonKey(name: "hd") this.hd,
      @JsonKey(name: "fullscreen") this.fullscreen,
      @JsonKey(name: "scaling") this.scaling,
      @JsonKey(name: "like") this.like});

  factory _$ButtonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonsImplFromJson(json);

  @override
  @JsonKey(name: "watchlater")
  final bool? watchlater;
  @override
  @JsonKey(name: "share")
  final bool? share;
  @override
  @JsonKey(name: "embed")
  final bool? embed;
  @override
  @JsonKey(name: "hd")
  final bool? hd;
  @override
  @JsonKey(name: "fullscreen")
  final bool? fullscreen;
  @override
  @JsonKey(name: "scaling")
  final bool? scaling;
  @override
  @JsonKey(name: "like")
  final bool? like;

  @override
  String toString() {
    return 'Buttons(watchlater: $watchlater, share: $share, embed: $embed, hd: $hd, fullscreen: $fullscreen, scaling: $scaling, like: $like)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonsImpl &&
            (identical(other.watchlater, watchlater) ||
                other.watchlater == watchlater) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.embed, embed) || other.embed == embed) &&
            (identical(other.hd, hd) || other.hd == hd) &&
            (identical(other.fullscreen, fullscreen) ||
                other.fullscreen == fullscreen) &&
            (identical(other.scaling, scaling) || other.scaling == scaling) &&
            (identical(other.like, like) || other.like == like));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, watchlater, share, embed, hd, fullscreen, scaling, like);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonsImplCopyWith<_$ButtonsImpl> get copyWith =>
      __$$ButtonsImplCopyWithImpl<_$ButtonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonsImplToJson(
      this,
    );
  }
}

abstract class _Buttons implements Buttons {
  const factory _Buttons(
      {@JsonKey(name: "watchlater") final bool? watchlater,
      @JsonKey(name: "share") final bool? share,
      @JsonKey(name: "embed") final bool? embed,
      @JsonKey(name: "hd") final bool? hd,
      @JsonKey(name: "fullscreen") final bool? fullscreen,
      @JsonKey(name: "scaling") final bool? scaling,
      @JsonKey(name: "like") final bool? like}) = _$ButtonsImpl;

  factory _Buttons.fromJson(Map<String, dynamic> json) = _$ButtonsImpl.fromJson;

  @override
  @JsonKey(name: "watchlater")
  bool? get watchlater;
  @override
  @JsonKey(name: "share")
  bool? get share;
  @override
  @JsonKey(name: "embed")
  bool? get embed;
  @override
  @JsonKey(name: "hd")
  bool? get hd;
  @override
  @JsonKey(name: "fullscreen")
  bool? get fullscreen;
  @override
  @JsonKey(name: "scaling")
  bool? get scaling;
  @override
  @JsonKey(name: "like")
  bool? get like;
  @override
  @JsonKey(ignore: true)
  _$$ButtonsImplCopyWith<_$ButtonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  @JsonKey(name: "color_one")
  String? get colorOne => throw _privateConstructorUsedError;
  @JsonKey(name: "color_two")
  String? get colorTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "color_three")
  String? get colorThree => throw _privateConstructorUsedError;
  @JsonKey(name: "color_four")
  String? get colorFour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res, Colors>;
  @useResult
  $Res call(
      {@JsonKey(name: "color_one") String? colorOne,
      @JsonKey(name: "color_two") String? colorTwo,
      @JsonKey(name: "color_three") String? colorThree,
      @JsonKey(name: "color_four") String? colorFour});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res, $Val extends Colors>
    implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorOne = freezed,
    Object? colorTwo = freezed,
    Object? colorThree = freezed,
    Object? colorFour = freezed,
  }) {
    return _then(_value.copyWith(
      colorOne: freezed == colorOne
          ? _value.colorOne
          : colorOne // ignore: cast_nullable_to_non_nullable
              as String?,
      colorTwo: freezed == colorTwo
          ? _value.colorTwo
          : colorTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      colorThree: freezed == colorThree
          ? _value.colorThree
          : colorThree // ignore: cast_nullable_to_non_nullable
              as String?,
      colorFour: freezed == colorFour
          ? _value.colorFour
          : colorFour // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsImplCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$ColorsImplCopyWith(
          _$ColorsImpl value, $Res Function(_$ColorsImpl) then) =
      __$$ColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "color_one") String? colorOne,
      @JsonKey(name: "color_two") String? colorTwo,
      @JsonKey(name: "color_three") String? colorThree,
      @JsonKey(name: "color_four") String? colorFour});
}

/// @nodoc
class __$$ColorsImplCopyWithImpl<$Res>
    extends _$ColorsCopyWithImpl<$Res, _$ColorsImpl>
    implements _$$ColorsImplCopyWith<$Res> {
  __$$ColorsImplCopyWithImpl(
      _$ColorsImpl _value, $Res Function(_$ColorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorOne = freezed,
    Object? colorTwo = freezed,
    Object? colorThree = freezed,
    Object? colorFour = freezed,
  }) {
    return _then(_$ColorsImpl(
      colorOne: freezed == colorOne
          ? _value.colorOne
          : colorOne // ignore: cast_nullable_to_non_nullable
              as String?,
      colorTwo: freezed == colorTwo
          ? _value.colorTwo
          : colorTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      colorThree: freezed == colorThree
          ? _value.colorThree
          : colorThree // ignore: cast_nullable_to_non_nullable
              as String?,
      colorFour: freezed == colorFour
          ? _value.colorFour
          : colorFour // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorsImpl implements _Colors {
  const _$ColorsImpl(
      {@JsonKey(name: "color_one") this.colorOne,
      @JsonKey(name: "color_two") this.colorTwo,
      @JsonKey(name: "color_three") this.colorThree,
      @JsonKey(name: "color_four") this.colorFour});

  factory _$ColorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorsImplFromJson(json);

  @override
  @JsonKey(name: "color_one")
  final String? colorOne;
  @override
  @JsonKey(name: "color_two")
  final String? colorTwo;
  @override
  @JsonKey(name: "color_three")
  final String? colorThree;
  @override
  @JsonKey(name: "color_four")
  final String? colorFour;

  @override
  String toString() {
    return 'Colors(colorOne: $colorOne, colorTwo: $colorTwo, colorThree: $colorThree, colorFour: $colorFour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsImpl &&
            (identical(other.colorOne, colorOne) ||
                other.colorOne == colorOne) &&
            (identical(other.colorTwo, colorTwo) ||
                other.colorTwo == colorTwo) &&
            (identical(other.colorThree, colorThree) ||
                other.colorThree == colorThree) &&
            (identical(other.colorFour, colorFour) ||
                other.colorFour == colorFour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, colorOne, colorTwo, colorThree, colorFour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      __$$ColorsImplCopyWithImpl<_$ColorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorsImplToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  const factory _Colors(
      {@JsonKey(name: "color_one") final String? colorOne,
      @JsonKey(name: "color_two") final String? colorTwo,
      @JsonKey(name: "color_three") final String? colorThree,
      @JsonKey(name: "color_four") final String? colorFour}) = _$ColorsImpl;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$ColorsImpl.fromJson;

  @override
  @JsonKey(name: "color_one")
  String? get colorOne;
  @override
  @JsonKey(name: "color_two")
  String? get colorTwo;
  @override
  @JsonKey(name: "color_three")
  String? get colorThree;
  @override
  @JsonKey(name: "color_four")
  String? get colorFour;
  @override
  @JsonKey(ignore: true)
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Logos _$LogosFromJson(Map<String, dynamic> json) {
  return _Logos.fromJson(json);
}

/// @nodoc
mixin _$Logos {
  @JsonKey(name: "vimeo")
  bool? get vimeo => throw _privateConstructorUsedError;
  @JsonKey(name: "custom")
  Custom? get custom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogosCopyWith<Logos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogosCopyWith<$Res> {
  factory $LogosCopyWith(Logos value, $Res Function(Logos) then) =
      _$LogosCopyWithImpl<$Res, Logos>;
  @useResult
  $Res call(
      {@JsonKey(name: "vimeo") bool? vimeo,
      @JsonKey(name: "custom") Custom? custom});

  $CustomCopyWith<$Res>? get custom;
}

/// @nodoc
class _$LogosCopyWithImpl<$Res, $Val extends Logos>
    implements $LogosCopyWith<$Res> {
  _$LogosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vimeo = freezed,
    Object? custom = freezed,
  }) {
    return _then(_value.copyWith(
      vimeo: freezed == vimeo
          ? _value.vimeo
          : vimeo // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as Custom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomCopyWith<$Res>? get custom {
    if (_value.custom == null) {
      return null;
    }

    return $CustomCopyWith<$Res>(_value.custom!, (value) {
      return _then(_value.copyWith(custom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogosImplCopyWith<$Res> implements $LogosCopyWith<$Res> {
  factory _$$LogosImplCopyWith(
          _$LogosImpl value, $Res Function(_$LogosImpl) then) =
      __$$LogosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vimeo") bool? vimeo,
      @JsonKey(name: "custom") Custom? custom});

  @override
  $CustomCopyWith<$Res>? get custom;
}

/// @nodoc
class __$$LogosImplCopyWithImpl<$Res>
    extends _$LogosCopyWithImpl<$Res, _$LogosImpl>
    implements _$$LogosImplCopyWith<$Res> {
  __$$LogosImplCopyWithImpl(
      _$LogosImpl _value, $Res Function(_$LogosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vimeo = freezed,
    Object? custom = freezed,
  }) {
    return _then(_$LogosImpl(
      vimeo: freezed == vimeo
          ? _value.vimeo
          : vimeo // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as Custom?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogosImpl implements _Logos {
  const _$LogosImpl(
      {@JsonKey(name: "vimeo") this.vimeo,
      @JsonKey(name: "custom") this.custom});

  factory _$LogosImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogosImplFromJson(json);

  @override
  @JsonKey(name: "vimeo")
  final bool? vimeo;
  @override
  @JsonKey(name: "custom")
  final Custom? custom;

  @override
  String toString() {
    return 'Logos(vimeo: $vimeo, custom: $custom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogosImpl &&
            (identical(other.vimeo, vimeo) || other.vimeo == vimeo) &&
            (identical(other.custom, custom) || other.custom == custom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vimeo, custom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogosImplCopyWith<_$LogosImpl> get copyWith =>
      __$$LogosImplCopyWithImpl<_$LogosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogosImplToJson(
      this,
    );
  }
}

abstract class _Logos implements Logos {
  const factory _Logos(
      {@JsonKey(name: "vimeo") final bool? vimeo,
      @JsonKey(name: "custom") final Custom? custom}) = _$LogosImpl;

  factory _Logos.fromJson(Map<String, dynamic> json) = _$LogosImpl.fromJson;

  @override
  @JsonKey(name: "vimeo")
  bool? get vimeo;
  @override
  @JsonKey(name: "custom")
  Custom? get custom;
  @override
  @JsonKey(ignore: true)
  _$$LogosImplCopyWith<_$LogosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Custom _$CustomFromJson(Map<String, dynamic> json) {
  return _Custom.fromJson(json);
}

/// @nodoc
mixin _$Custom {
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  dynamic get url => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  dynamic get link => throw _privateConstructorUsedError;
  @JsonKey(name: "use_link")
  bool? get useLink => throw _privateConstructorUsedError;
  @JsonKey(name: "sticky")
  bool? get sticky => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomCopyWith<Custom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomCopyWith<$Res> {
  factory $CustomCopyWith(Custom value, $Res Function(Custom) then) =
      _$CustomCopyWithImpl<$Res, Custom>;
  @useResult
  $Res call(
      {@JsonKey(name: "active") bool? active,
      @JsonKey(name: "url") dynamic url,
      @JsonKey(name: "link") dynamic link,
      @JsonKey(name: "use_link") bool? useLink,
      @JsonKey(name: "sticky") bool? sticky});
}

/// @nodoc
class _$CustomCopyWithImpl<$Res, $Val extends Custom>
    implements $CustomCopyWith<$Res> {
  _$CustomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? url = freezed,
    Object? link = freezed,
    Object? useLink = freezed,
    Object? sticky = freezed,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useLink: freezed == useLink
          ? _value.useLink
          : useLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      sticky: freezed == sticky
          ? _value.sticky
          : sticky // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomImplCopyWith<$Res> implements $CustomCopyWith<$Res> {
  factory _$$CustomImplCopyWith(
          _$CustomImpl value, $Res Function(_$CustomImpl) then) =
      __$$CustomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "active") bool? active,
      @JsonKey(name: "url") dynamic url,
      @JsonKey(name: "link") dynamic link,
      @JsonKey(name: "use_link") bool? useLink,
      @JsonKey(name: "sticky") bool? sticky});
}

/// @nodoc
class __$$CustomImplCopyWithImpl<$Res>
    extends _$CustomCopyWithImpl<$Res, _$CustomImpl>
    implements _$$CustomImplCopyWith<$Res> {
  __$$CustomImplCopyWithImpl(
      _$CustomImpl _value, $Res Function(_$CustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? url = freezed,
    Object? link = freezed,
    Object? useLink = freezed,
    Object? sticky = freezed,
  }) {
    return _then(_$CustomImpl(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useLink: freezed == useLink
          ? _value.useLink
          : useLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      sticky: freezed == sticky
          ? _value.sticky
          : sticky // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomImpl implements _Custom {
  const _$CustomImpl(
      {@JsonKey(name: "active") this.active,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "use_link") this.useLink,
      @JsonKey(name: "sticky") this.sticky});

  factory _$CustomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomImplFromJson(json);

  @override
  @JsonKey(name: "active")
  final bool? active;
  @override
  @JsonKey(name: "url")
  final dynamic url;
  @override
  @JsonKey(name: "link")
  final dynamic link;
  @override
  @JsonKey(name: "use_link")
  final bool? useLink;
  @override
  @JsonKey(name: "sticky")
  final bool? sticky;

  @override
  String toString() {
    return 'Custom(active: $active, url: $url, link: $link, useLink: $useLink, sticky: $sticky)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomImpl &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            (identical(other.useLink, useLink) || other.useLink == useLink) &&
            (identical(other.sticky, sticky) || other.sticky == sticky));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      active,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(link),
      useLink,
      sticky);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      __$$CustomImplCopyWithImpl<_$CustomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomImplToJson(
      this,
    );
  }
}

abstract class _Custom implements Custom {
  const factory _Custom(
      {@JsonKey(name: "active") final bool? active,
      @JsonKey(name: "url") final dynamic url,
      @JsonKey(name: "link") final dynamic link,
      @JsonKey(name: "use_link") final bool? useLink,
      @JsonKey(name: "sticky") final bool? sticky}) = _$CustomImpl;

  factory _Custom.fromJson(Map<String, dynamic> json) = _$CustomImpl.fromJson;

  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(name: "url")
  dynamic get url;
  @override
  @JsonKey(name: "link")
  dynamic get link;
  @override
  @JsonKey(name: "use_link")
  bool? get useLink;
  @override
  @JsonKey(name: "sticky")
  bool? get sticky;
  @override
  @JsonKey(ignore: true)
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayButton _$PlayButtonFromJson(Map<String, dynamic> json) {
  return _PlayButton.fromJson(json);
}

/// @nodoc
mixin _$PlayButton {
  @JsonKey(name: "position")
  String? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayButtonCopyWith<PlayButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayButtonCopyWith<$Res> {
  factory $PlayButtonCopyWith(
          PlayButton value, $Res Function(PlayButton) then) =
      _$PlayButtonCopyWithImpl<$Res, PlayButton>;
  @useResult
  $Res call({@JsonKey(name: "position") String? position});
}

/// @nodoc
class _$PlayButtonCopyWithImpl<$Res, $Val extends PlayButton>
    implements $PlayButtonCopyWith<$Res> {
  _$PlayButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayButtonImplCopyWith<$Res>
    implements $PlayButtonCopyWith<$Res> {
  factory _$$PlayButtonImplCopyWith(
          _$PlayButtonImpl value, $Res Function(_$PlayButtonImpl) then) =
      __$$PlayButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "position") String? position});
}

/// @nodoc
class __$$PlayButtonImplCopyWithImpl<$Res>
    extends _$PlayButtonCopyWithImpl<$Res, _$PlayButtonImpl>
    implements _$$PlayButtonImplCopyWith<$Res> {
  __$$PlayButtonImplCopyWithImpl(
      _$PlayButtonImpl _value, $Res Function(_$PlayButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$PlayButtonImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayButtonImpl implements _PlayButton {
  const _$PlayButtonImpl({@JsonKey(name: "position") this.position});

  factory _$PlayButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayButtonImplFromJson(json);

  @override
  @JsonKey(name: "position")
  final String? position;

  @override
  String toString() {
    return 'PlayButton(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayButtonImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayButtonImplCopyWith<_$PlayButtonImpl> get copyWith =>
      __$$PlayButtonImplCopyWithImpl<_$PlayButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayButtonImplToJson(
      this,
    );
  }
}

abstract class _PlayButton implements PlayButton {
  const factory _PlayButton(
      {@JsonKey(name: "position") final String? position}) = _$PlayButtonImpl;

  factory _PlayButton.fromJson(Map<String, dynamic> json) =
      _$PlayButtonImpl.fromJson;

  @override
  @JsonKey(name: "position")
  String? get position;
  @override
  @JsonKey(ignore: true)
  _$$PlayButtonImplCopyWith<_$PlayButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "owner")
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "portrait")
  String? get portrait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res, Title>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "owner") String? owner,
      @JsonKey(name: "portrait") String? portrait});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res, $Val extends Title>
    implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? portrait = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$TitleImplCopyWith(
          _$TitleImpl value, $Res Function(_$TitleImpl) then) =
      __$$TitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "owner") String? owner,
      @JsonKey(name: "portrait") String? portrait});
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res>
    extends _$TitleCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(
      _$TitleImpl _value, $Res Function(_$TitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? owner = freezed,
    Object? portrait = freezed,
  }) {
    return _then(_$TitleImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleImpl implements _Title {
  const _$TitleImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "owner") this.owner,
      @JsonKey(name: "portrait") this.portrait});

  factory _$TitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "owner")
  final String? owner;
  @override
  @JsonKey(name: "portrait")
  final String? portrait;

  @override
  String toString() {
    return 'Title(name: $name, owner: $owner, portrait: $portrait)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, owner, portrait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleImplToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  const factory _Title(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "owner") final String? owner,
      @JsonKey(name: "portrait") final String? portrait}) = _$TitleImpl;

  factory _Title.fromJson(Map<String, dynamic> json) = _$TitleImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "owner")
  String? get owner;
  @override
  @JsonKey(name: "portrait")
  String? get portrait;
  @override
  @JsonKey(ignore: true)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VimeoVideoResponseMetadata _$VimeoVideoResponseMetadataFromJson(
    Map<String, dynamic> json) {
  return _VimeoVideoResponseMetadata.fromJson(json);
}

/// @nodoc
mixin _$VimeoVideoResponseMetadata {
  @JsonKey(name: "connections")
  PurpleConnections? get connections => throw _privateConstructorUsedError;
  @JsonKey(name: "interactions")
  PurpleInteractions? get interactions => throw _privateConstructorUsedError;
  @JsonKey(name: "is_vimeo_create")
  bool? get isVimeoCreate => throw _privateConstructorUsedError;
  @JsonKey(name: "is_screen_record")
  bool? get isScreenRecord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VimeoVideoResponseMetadataCopyWith<VimeoVideoResponseMetadata>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VimeoVideoResponseMetadataCopyWith<$Res> {
  factory $VimeoVideoResponseMetadataCopyWith(VimeoVideoResponseMetadata value,
          $Res Function(VimeoVideoResponseMetadata) then) =
      _$VimeoVideoResponseMetadataCopyWithImpl<$Res,
          VimeoVideoResponseMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "connections") PurpleConnections? connections,
      @JsonKey(name: "interactions") PurpleInteractions? interactions,
      @JsonKey(name: "is_vimeo_create") bool? isVimeoCreate,
      @JsonKey(name: "is_screen_record") bool? isScreenRecord});

  $PurpleConnectionsCopyWith<$Res>? get connections;
  $PurpleInteractionsCopyWith<$Res>? get interactions;
}

/// @nodoc
class _$VimeoVideoResponseMetadataCopyWithImpl<$Res,
        $Val extends VimeoVideoResponseMetadata>
    implements $VimeoVideoResponseMetadataCopyWith<$Res> {
  _$VimeoVideoResponseMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = freezed,
    Object? interactions = freezed,
    Object? isVimeoCreate = freezed,
    Object? isScreenRecord = freezed,
  }) {
    return _then(_value.copyWith(
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as PurpleConnections?,
      interactions: freezed == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as PurpleInteractions?,
      isVimeoCreate: freezed == isVimeoCreate
          ? _value.isVimeoCreate
          : isVimeoCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isScreenRecord: freezed == isScreenRecord
          ? _value.isScreenRecord
          : isScreenRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurpleConnectionsCopyWith<$Res>? get connections {
    if (_value.connections == null) {
      return null;
    }

    return $PurpleConnectionsCopyWith<$Res>(_value.connections!, (value) {
      return _then(_value.copyWith(connections: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PurpleInteractionsCopyWith<$Res>? get interactions {
    if (_value.interactions == null) {
      return null;
    }

    return $PurpleInteractionsCopyWith<$Res>(_value.interactions!, (value) {
      return _then(_value.copyWith(interactions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VimeoVideoResponseMetadataImplCopyWith<$Res>
    implements $VimeoVideoResponseMetadataCopyWith<$Res> {
  factory _$$VimeoVideoResponseMetadataImplCopyWith(
          _$VimeoVideoResponseMetadataImpl value,
          $Res Function(_$VimeoVideoResponseMetadataImpl) then) =
      __$$VimeoVideoResponseMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "connections") PurpleConnections? connections,
      @JsonKey(name: "interactions") PurpleInteractions? interactions,
      @JsonKey(name: "is_vimeo_create") bool? isVimeoCreate,
      @JsonKey(name: "is_screen_record") bool? isScreenRecord});

  @override
  $PurpleConnectionsCopyWith<$Res>? get connections;
  @override
  $PurpleInteractionsCopyWith<$Res>? get interactions;
}

/// @nodoc
class __$$VimeoVideoResponseMetadataImplCopyWithImpl<$Res>
    extends _$VimeoVideoResponseMetadataCopyWithImpl<$Res,
        _$VimeoVideoResponseMetadataImpl>
    implements _$$VimeoVideoResponseMetadataImplCopyWith<$Res> {
  __$$VimeoVideoResponseMetadataImplCopyWithImpl(
      _$VimeoVideoResponseMetadataImpl _value,
      $Res Function(_$VimeoVideoResponseMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = freezed,
    Object? interactions = freezed,
    Object? isVimeoCreate = freezed,
    Object? isScreenRecord = freezed,
  }) {
    return _then(_$VimeoVideoResponseMetadataImpl(
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as PurpleConnections?,
      interactions: freezed == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as PurpleInteractions?,
      isVimeoCreate: freezed == isVimeoCreate
          ? _value.isVimeoCreate
          : isVimeoCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isScreenRecord: freezed == isScreenRecord
          ? _value.isScreenRecord
          : isScreenRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VimeoVideoResponseMetadataImpl implements _VimeoVideoResponseMetadata {
  const _$VimeoVideoResponseMetadataImpl(
      {@JsonKey(name: "connections") this.connections,
      @JsonKey(name: "interactions") this.interactions,
      @JsonKey(name: "is_vimeo_create") this.isVimeoCreate,
      @JsonKey(name: "is_screen_record") this.isScreenRecord});

  factory _$VimeoVideoResponseMetadataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VimeoVideoResponseMetadataImplFromJson(json);

  @override
  @JsonKey(name: "connections")
  final PurpleConnections? connections;
  @override
  @JsonKey(name: "interactions")
  final PurpleInteractions? interactions;
  @override
  @JsonKey(name: "is_vimeo_create")
  final bool? isVimeoCreate;
  @override
  @JsonKey(name: "is_screen_record")
  final bool? isScreenRecord;

  @override
  String toString() {
    return 'VimeoVideoResponseMetadata(connections: $connections, interactions: $interactions, isVimeoCreate: $isVimeoCreate, isScreenRecord: $isScreenRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VimeoVideoResponseMetadataImpl &&
            (identical(other.connections, connections) ||
                other.connections == connections) &&
            (identical(other.interactions, interactions) ||
                other.interactions == interactions) &&
            (identical(other.isVimeoCreate, isVimeoCreate) ||
                other.isVimeoCreate == isVimeoCreate) &&
            (identical(other.isScreenRecord, isScreenRecord) ||
                other.isScreenRecord == isScreenRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, connections, interactions, isVimeoCreate, isScreenRecord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VimeoVideoResponseMetadataImplCopyWith<_$VimeoVideoResponseMetadataImpl>
      get copyWith => __$$VimeoVideoResponseMetadataImplCopyWithImpl<
          _$VimeoVideoResponseMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VimeoVideoResponseMetadataImplToJson(
      this,
    );
  }
}

abstract class _VimeoVideoResponseMetadata
    implements VimeoVideoResponseMetadata {
  const factory _VimeoVideoResponseMetadata(
          {@JsonKey(name: "connections") final PurpleConnections? connections,
          @JsonKey(name: "interactions") final PurpleInteractions? interactions,
          @JsonKey(name: "is_vimeo_create") final bool? isVimeoCreate,
          @JsonKey(name: "is_screen_record") final bool? isScreenRecord}) =
      _$VimeoVideoResponseMetadataImpl;

  factory _VimeoVideoResponseMetadata.fromJson(Map<String, dynamic> json) =
      _$VimeoVideoResponseMetadataImpl.fromJson;

  @override
  @JsonKey(name: "connections")
  PurpleConnections? get connections;
  @override
  @JsonKey(name: "interactions")
  PurpleInteractions? get interactions;
  @override
  @JsonKey(name: "is_vimeo_create")
  bool? get isVimeoCreate;
  @override
  @JsonKey(name: "is_screen_record")
  bool? get isScreenRecord;
  @override
  @JsonKey(ignore: true)
  _$$VimeoVideoResponseMetadataImplCopyWith<_$VimeoVideoResponseMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurpleConnections _$PurpleConnectionsFromJson(Map<String, dynamic> json) {
  return _PurpleConnections.fromJson(json);
}

/// @nodoc
mixin _$PurpleConnections {
  @JsonKey(name: "comments")
  Albums? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "credits")
  Albums? get credits => throw _privateConstructorUsedError;
  @JsonKey(name: "likes")
  Albums? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "pictures")
  Albums? get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "texttracks")
  Albums? get texttracks => throw _privateConstructorUsedError;
  @JsonKey(name: "related")
  dynamic get related => throw _privateConstructorUsedError;
  @JsonKey(name: "recommendations")
  Recommendations? get recommendations => throw _privateConstructorUsedError;
  @JsonKey(name: "albums")
  Albums? get albums => throw _privateConstructorUsedError;
  @JsonKey(name: "available_albums")
  Albums? get availableAlbums => throw _privateConstructorUsedError;
  @JsonKey(name: "versions")
  Versions? get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurpleConnectionsCopyWith<PurpleConnections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleConnectionsCopyWith<$Res> {
  factory $PurpleConnectionsCopyWith(
          PurpleConnections value, $Res Function(PurpleConnections) then) =
      _$PurpleConnectionsCopyWithImpl<$Res, PurpleConnections>;
  @useResult
  $Res call(
      {@JsonKey(name: "comments") Albums? comments,
      @JsonKey(name: "credits") Albums? credits,
      @JsonKey(name: "likes") Albums? likes,
      @JsonKey(name: "pictures") Albums? pictures,
      @JsonKey(name: "texttracks") Albums? texttracks,
      @JsonKey(name: "related") dynamic related,
      @JsonKey(name: "recommendations") Recommendations? recommendations,
      @JsonKey(name: "albums") Albums? albums,
      @JsonKey(name: "available_albums") Albums? availableAlbums,
      @JsonKey(name: "versions") Versions? versions});

  $AlbumsCopyWith<$Res>? get comments;
  $AlbumsCopyWith<$Res>? get credits;
  $AlbumsCopyWith<$Res>? get likes;
  $AlbumsCopyWith<$Res>? get pictures;
  $AlbumsCopyWith<$Res>? get texttracks;
  $RecommendationsCopyWith<$Res>? get recommendations;
  $AlbumsCopyWith<$Res>? get albums;
  $AlbumsCopyWith<$Res>? get availableAlbums;
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class _$PurpleConnectionsCopyWithImpl<$Res, $Val extends PurpleConnections>
    implements $PurpleConnectionsCopyWith<$Res> {
  _$PurpleConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? credits = freezed,
    Object? likes = freezed,
    Object? pictures = freezed,
    Object? texttracks = freezed,
    Object? related = freezed,
    Object? recommendations = freezed,
    Object? albums = freezed,
    Object? availableAlbums = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Albums?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Albums?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Albums?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Albums?,
      texttracks: freezed == texttracks
          ? _value.texttracks
          : texttracks // ignore: cast_nullable_to_non_nullable
              as Albums?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      availableAlbums: freezed == availableAlbums
          ? _value.availableAlbums
          : availableAlbums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get comments {
    if (_value.comments == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.comments!, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get credits {
    if (_value.credits == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.credits!, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get likes {
    if (_value.likes == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.likes!, (value) {
      return _then(_value.copyWith(likes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get pictures {
    if (_value.pictures == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.pictures!, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get texttracks {
    if (_value.texttracks == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.texttracks!, (value) {
      return _then(_value.copyWith(texttracks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get recommendations {
    if (_value.recommendations == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.recommendations!, (value) {
      return _then(_value.copyWith(recommendations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get albums {
    if (_value.albums == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.albums!, (value) {
      return _then(_value.copyWith(albums: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get availableAlbums {
    if (_value.availableAlbums == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.availableAlbums!, (value) {
      return _then(_value.copyWith(availableAlbums: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionsCopyWith<$Res>? get versions {
    if (_value.versions == null) {
      return null;
    }

    return $VersionsCopyWith<$Res>(_value.versions!, (value) {
      return _then(_value.copyWith(versions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PurpleConnectionsImplCopyWith<$Res>
    implements $PurpleConnectionsCopyWith<$Res> {
  factory _$$PurpleConnectionsImplCopyWith(_$PurpleConnectionsImpl value,
          $Res Function(_$PurpleConnectionsImpl) then) =
      __$$PurpleConnectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "comments") Albums? comments,
      @JsonKey(name: "credits") Albums? credits,
      @JsonKey(name: "likes") Albums? likes,
      @JsonKey(name: "pictures") Albums? pictures,
      @JsonKey(name: "texttracks") Albums? texttracks,
      @JsonKey(name: "related") dynamic related,
      @JsonKey(name: "recommendations") Recommendations? recommendations,
      @JsonKey(name: "albums") Albums? albums,
      @JsonKey(name: "available_albums") Albums? availableAlbums,
      @JsonKey(name: "versions") Versions? versions});

  @override
  $AlbumsCopyWith<$Res>? get comments;
  @override
  $AlbumsCopyWith<$Res>? get credits;
  @override
  $AlbumsCopyWith<$Res>? get likes;
  @override
  $AlbumsCopyWith<$Res>? get pictures;
  @override
  $AlbumsCopyWith<$Res>? get texttracks;
  @override
  $RecommendationsCopyWith<$Res>? get recommendations;
  @override
  $AlbumsCopyWith<$Res>? get albums;
  @override
  $AlbumsCopyWith<$Res>? get availableAlbums;
  @override
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class __$$PurpleConnectionsImplCopyWithImpl<$Res>
    extends _$PurpleConnectionsCopyWithImpl<$Res, _$PurpleConnectionsImpl>
    implements _$$PurpleConnectionsImplCopyWith<$Res> {
  __$$PurpleConnectionsImplCopyWithImpl(_$PurpleConnectionsImpl _value,
      $Res Function(_$PurpleConnectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? credits = freezed,
    Object? likes = freezed,
    Object? pictures = freezed,
    Object? texttracks = freezed,
    Object? related = freezed,
    Object? recommendations = freezed,
    Object? albums = freezed,
    Object? availableAlbums = freezed,
    Object? versions = freezed,
  }) {
    return _then(_$PurpleConnectionsImpl(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Albums?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Albums?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Albums?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Albums?,
      texttracks: freezed == texttracks
          ? _value.texttracks
          : texttracks // ignore: cast_nullable_to_non_nullable
              as Albums?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      availableAlbums: freezed == availableAlbums
          ? _value.availableAlbums
          : availableAlbums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurpleConnectionsImpl implements _PurpleConnections {
  const _$PurpleConnectionsImpl(
      {@JsonKey(name: "comments") this.comments,
      @JsonKey(name: "credits") this.credits,
      @JsonKey(name: "likes") this.likes,
      @JsonKey(name: "pictures") this.pictures,
      @JsonKey(name: "texttracks") this.texttracks,
      @JsonKey(name: "related") this.related,
      @JsonKey(name: "recommendations") this.recommendations,
      @JsonKey(name: "albums") this.albums,
      @JsonKey(name: "available_albums") this.availableAlbums,
      @JsonKey(name: "versions") this.versions});

  factory _$PurpleConnectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleConnectionsImplFromJson(json);

  @override
  @JsonKey(name: "comments")
  final Albums? comments;
  @override
  @JsonKey(name: "credits")
  final Albums? credits;
  @override
  @JsonKey(name: "likes")
  final Albums? likes;
  @override
  @JsonKey(name: "pictures")
  final Albums? pictures;
  @override
  @JsonKey(name: "texttracks")
  final Albums? texttracks;
  @override
  @JsonKey(name: "related")
  final dynamic related;
  @override
  @JsonKey(name: "recommendations")
  final Recommendations? recommendations;
  @override
  @JsonKey(name: "albums")
  final Albums? albums;
  @override
  @JsonKey(name: "available_albums")
  final Albums? availableAlbums;
  @override
  @JsonKey(name: "versions")
  final Versions? versions;

  @override
  String toString() {
    return 'PurpleConnections(comments: $comments, credits: $credits, likes: $likes, pictures: $pictures, texttracks: $texttracks, related: $related, recommendations: $recommendations, albums: $albums, availableAlbums: $availableAlbums, versions: $versions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleConnectionsImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures) &&
            (identical(other.texttracks, texttracks) ||
                other.texttracks == texttracks) &&
            const DeepCollectionEquality().equals(other.related, related) &&
            (identical(other.recommendations, recommendations) ||
                other.recommendations == recommendations) &&
            (identical(other.albums, albums) || other.albums == albums) &&
            (identical(other.availableAlbums, availableAlbums) ||
                other.availableAlbums == availableAlbums) &&
            (identical(other.versions, versions) ||
                other.versions == versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      comments,
      credits,
      likes,
      pictures,
      texttracks,
      const DeepCollectionEquality().hash(related),
      recommendations,
      albums,
      availableAlbums,
      versions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurpleConnectionsImplCopyWith<_$PurpleConnectionsImpl> get copyWith =>
      __$$PurpleConnectionsImplCopyWithImpl<_$PurpleConnectionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurpleConnectionsImplToJson(
      this,
    );
  }
}

abstract class _PurpleConnections implements PurpleConnections {
  const factory _PurpleConnections(
      {@JsonKey(name: "comments") final Albums? comments,
      @JsonKey(name: "credits") final Albums? credits,
      @JsonKey(name: "likes") final Albums? likes,
      @JsonKey(name: "pictures") final Albums? pictures,
      @JsonKey(name: "texttracks") final Albums? texttracks,
      @JsonKey(name: "related") final dynamic related,
      @JsonKey(name: "recommendations") final Recommendations? recommendations,
      @JsonKey(name: "albums") final Albums? albums,
      @JsonKey(name: "available_albums") final Albums? availableAlbums,
      @JsonKey(name: "versions")
      final Versions? versions}) = _$PurpleConnectionsImpl;

  factory _PurpleConnections.fromJson(Map<String, dynamic> json) =
      _$PurpleConnectionsImpl.fromJson;

  @override
  @JsonKey(name: "comments")
  Albums? get comments;
  @override
  @JsonKey(name: "credits")
  Albums? get credits;
  @override
  @JsonKey(name: "likes")
  Albums? get likes;
  @override
  @JsonKey(name: "pictures")
  Albums? get pictures;
  @override
  @JsonKey(name: "texttracks")
  Albums? get texttracks;
  @override
  @JsonKey(name: "related")
  dynamic get related;
  @override
  @JsonKey(name: "recommendations")
  Recommendations? get recommendations;
  @override
  @JsonKey(name: "albums")
  Albums? get albums;
  @override
  @JsonKey(name: "available_albums")
  Albums? get availableAlbums;
  @override
  @JsonKey(name: "versions")
  Versions? get versions;
  @override
  @JsonKey(ignore: true)
  _$$PurpleConnectionsImplCopyWith<_$PurpleConnectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return _Albums.fromJson(json);
}

/// @nodoc
mixin _$Albums {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumsCopyWith<Albums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsCopyWith<$Res> {
  factory $AlbumsCopyWith(Albums value, $Res Function(Albums) then) =
      _$AlbumsCopyWithImpl<$Res, Albums>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$AlbumsCopyWithImpl<$Res, $Val extends Albums>
    implements $AlbumsCopyWith<$Res> {
  _$AlbumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumsImplCopyWith<$Res> implements $AlbumsCopyWith<$Res> {
  factory _$$AlbumsImplCopyWith(
          _$AlbumsImpl value, $Res Function(_$AlbumsImpl) then) =
      __$$AlbumsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$AlbumsImplCopyWithImpl<$Res>
    extends _$AlbumsCopyWithImpl<$Res, _$AlbumsImpl>
    implements _$$AlbumsImplCopyWith<$Res> {
  __$$AlbumsImplCopyWithImpl(
      _$AlbumsImpl _value, $Res Function(_$AlbumsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? total = freezed,
  }) {
    return _then(_$AlbumsImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumsImpl implements _Albums {
  const _$AlbumsImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "total") this.total})
      : _options = options;

  factory _$AlbumsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumsImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'Albums(uri: $uri, options: $options, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uri, const DeepCollectionEquality().hash(_options), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsImplCopyWith<_$AlbumsImpl> get copyWith =>
      __$$AlbumsImplCopyWithImpl<_$AlbumsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumsImplToJson(
      this,
    );
  }
}

abstract class _Albums implements Albums {
  const factory _Albums(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "total") final int? total}) = _$AlbumsImpl;

  factory _Albums.fromJson(Map<String, dynamic> json) = _$AlbumsImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$AlbumsImplCopyWith<_$AlbumsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recommendations _$RecommendationsFromJson(Map<String, dynamic> json) {
  return _Recommendations.fromJson(json);
}

/// @nodoc
mixin _$Recommendations {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationsCopyWith<Recommendations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationsCopyWith<$Res> {
  factory $RecommendationsCopyWith(
          Recommendations value, $Res Function(Recommendations) then) =
      _$RecommendationsCopyWithImpl<$Res, Recommendations>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options});
}

/// @nodoc
class _$RecommendationsCopyWithImpl<$Res, $Val extends Recommendations>
    implements $RecommendationsCopyWith<$Res> {
  _$RecommendationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationsImplCopyWith<$Res>
    implements $RecommendationsCopyWith<$Res> {
  factory _$$RecommendationsImplCopyWith(_$RecommendationsImpl value,
          $Res Function(_$RecommendationsImpl) then) =
      __$$RecommendationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options});
}

/// @nodoc
class __$$RecommendationsImplCopyWithImpl<$Res>
    extends _$RecommendationsCopyWithImpl<$Res, _$RecommendationsImpl>
    implements _$$RecommendationsImplCopyWith<$Res> {
  __$$RecommendationsImplCopyWithImpl(
      _$RecommendationsImpl _value, $Res Function(_$RecommendationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
  }) {
    return _then(_$RecommendationsImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationsImpl implements _Recommendations {
  const _$RecommendationsImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options})
      : _options = options;

  factory _$RecommendationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationsImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Recommendations(uri: $uri, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationsImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uri, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationsImplCopyWith<_$RecommendationsImpl> get copyWith =>
      __$$RecommendationsImplCopyWithImpl<_$RecommendationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationsImplToJson(
      this,
    );
  }
}

abstract class _Recommendations implements Recommendations {
  const factory _Recommendations(
          {@JsonKey(name: "uri") final String? uri,
          @JsonKey(name: "options") final List<String>? options}) =
      _$RecommendationsImpl;

  factory _Recommendations.fromJson(Map<String, dynamic> json) =
      _$RecommendationsImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(ignore: true)
  _$$RecommendationsImplCopyWith<_$RecommendationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "current_uri")
  String? get currentUri => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_key")
  String? get resourceKey => throw _privateConstructorUsedError;
  @JsonKey(name: "latest_incomplete_version")
  dynamic get latestIncompleteVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_uri") String? currentUri,
      @JsonKey(name: "resource_key") String? resourceKey,
      @JsonKey(name: "latest_incomplete_version")
      dynamic latestIncompleteVersion});
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? total = freezed,
    Object? currentUri = freezed,
    Object? resourceKey = freezed,
    Object? latestIncompleteVersion = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUri: freezed == currentUri
          ? _value.currentUri
          : currentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      latestIncompleteVersion: freezed == latestIncompleteVersion
          ? _value.latestIncompleteVersion
          : latestIncompleteVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionsImplCopyWith<$Res>
    implements $VersionsCopyWith<$Res> {
  factory _$$VersionsImplCopyWith(
          _$VersionsImpl value, $Res Function(_$VersionsImpl) then) =
      __$$VersionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_uri") String? currentUri,
      @JsonKey(name: "resource_key") String? resourceKey,
      @JsonKey(name: "latest_incomplete_version")
      dynamic latestIncompleteVersion});
}

/// @nodoc
class __$$VersionsImplCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$VersionsImpl>
    implements _$$VersionsImplCopyWith<$Res> {
  __$$VersionsImplCopyWithImpl(
      _$VersionsImpl _value, $Res Function(_$VersionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? total = freezed,
    Object? currentUri = freezed,
    Object? resourceKey = freezed,
    Object? latestIncompleteVersion = freezed,
  }) {
    return _then(_$VersionsImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUri: freezed == currentUri
          ? _value.currentUri
          : currentUri // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      latestIncompleteVersion: freezed == latestIncompleteVersion
          ? _value.latestIncompleteVersion
          : latestIncompleteVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionsImpl implements _Versions {
  const _$VersionsImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "current_uri") this.currentUri,
      @JsonKey(name: "resource_key") this.resourceKey,
      @JsonKey(name: "latest_incomplete_version") this.latestIncompleteVersion})
      : _options = options;

  factory _$VersionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionsImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "current_uri")
  final String? currentUri;
  @override
  @JsonKey(name: "resource_key")
  final String? resourceKey;
  @override
  @JsonKey(name: "latest_incomplete_version")
  final dynamic latestIncompleteVersion;

  @override
  String toString() {
    return 'Versions(uri: $uri, options: $options, total: $total, currentUri: $currentUri, resourceKey: $resourceKey, latestIncompleteVersion: $latestIncompleteVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionsImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentUri, currentUri) ||
                other.currentUri == currentUri) &&
            (identical(other.resourceKey, resourceKey) ||
                other.resourceKey == resourceKey) &&
            const DeepCollectionEquality().equals(
                other.latestIncompleteVersion, latestIncompleteVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      total,
      currentUri,
      resourceKey,
      const DeepCollectionEquality().hash(latestIncompleteVersion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionsImplCopyWith<_$VersionsImpl> get copyWith =>
      __$$VersionsImplCopyWithImpl<_$VersionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionsImplToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  const factory _Versions(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "total") final int? total,
      @JsonKey(name: "current_uri") final String? currentUri,
      @JsonKey(name: "resource_key") final String? resourceKey,
      @JsonKey(name: "latest_incomplete_version")
      final dynamic latestIncompleteVersion}) = _$VersionsImpl;

  factory _Versions.fromJson(Map<String, dynamic> json) =
      _$VersionsImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "current_uri")
  String? get currentUri;
  @override
  @JsonKey(name: "resource_key")
  String? get resourceKey;
  @override
  @JsonKey(name: "latest_incomplete_version")
  dynamic get latestIncompleteVersion;
  @override
  @JsonKey(ignore: true)
  _$$VersionsImplCopyWith<_$VersionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurpleInteractions _$PurpleInteractionsFromJson(Map<String, dynamic> json) {
  return _PurpleInteractions.fromJson(json);
}

/// @nodoc
mixin _$PurpleInteractions {
  @JsonKey(name: "watchlater")
  Like? get watchlater => throw _privateConstructorUsedError;
  @JsonKey(name: "like")
  Like? get like => throw _privateConstructorUsedError;
  @JsonKey(name: "report")
  Report? get report => throw _privateConstructorUsedError;
  @JsonKey(name: "view_team_members")
  Recommendations? get viewTeamMembers => throw _privateConstructorUsedError;
  @JsonKey(name: "edit")
  Edit? get edit => throw _privateConstructorUsedError;
  @JsonKey(name: "edit_content_rating")
  EditContentRating? get editContentRating =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "edit_privacy")
  EditPrivacy? get editPrivacy => throw _privateConstructorUsedError;
  @JsonKey(name: "delete")
  Recommendations? get delete => throw _privateConstructorUsedError;
  @JsonKey(name: "can_update_privacy_to_public")
  Recommendations? get canUpdatePrivacyToPublic =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invite")
  Recommendations? get invite => throw _privateConstructorUsedError;
  @JsonKey(name: "trim")
  Recommendations? get trim => throw _privateConstructorUsedError;
  @JsonKey(name: "validate")
  Recommendations? get validate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurpleInteractionsCopyWith<PurpleInteractions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleInteractionsCopyWith<$Res> {
  factory $PurpleInteractionsCopyWith(
          PurpleInteractions value, $Res Function(PurpleInteractions) then) =
      _$PurpleInteractionsCopyWithImpl<$Res, PurpleInteractions>;
  @useResult
  $Res call(
      {@JsonKey(name: "watchlater") Like? watchlater,
      @JsonKey(name: "like") Like? like,
      @JsonKey(name: "report") Report? report,
      @JsonKey(name: "view_team_members") Recommendations? viewTeamMembers,
      @JsonKey(name: "edit") Edit? edit,
      @JsonKey(name: "edit_content_rating")
      EditContentRating? editContentRating,
      @JsonKey(name: "edit_privacy") EditPrivacy? editPrivacy,
      @JsonKey(name: "delete") Recommendations? delete,
      @JsonKey(name: "can_update_privacy_to_public")
      Recommendations? canUpdatePrivacyToPublic,
      @JsonKey(name: "invite") Recommendations? invite,
      @JsonKey(name: "trim") Recommendations? trim,
      @JsonKey(name: "validate") Recommendations? validate});

  $LikeCopyWith<$Res>? get watchlater;
  $LikeCopyWith<$Res>? get like;
  $ReportCopyWith<$Res>? get report;
  $RecommendationsCopyWith<$Res>? get viewTeamMembers;
  $EditCopyWith<$Res>? get edit;
  $EditContentRatingCopyWith<$Res>? get editContentRating;
  $EditPrivacyCopyWith<$Res>? get editPrivacy;
  $RecommendationsCopyWith<$Res>? get delete;
  $RecommendationsCopyWith<$Res>? get canUpdatePrivacyToPublic;
  $RecommendationsCopyWith<$Res>? get invite;
  $RecommendationsCopyWith<$Res>? get trim;
  $RecommendationsCopyWith<$Res>? get validate;
}

/// @nodoc
class _$PurpleInteractionsCopyWithImpl<$Res, $Val extends PurpleInteractions>
    implements $PurpleInteractionsCopyWith<$Res> {
  _$PurpleInteractionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlater = freezed,
    Object? like = freezed,
    Object? report = freezed,
    Object? viewTeamMembers = freezed,
    Object? edit = freezed,
    Object? editContentRating = freezed,
    Object? editPrivacy = freezed,
    Object? delete = freezed,
    Object? canUpdatePrivacyToPublic = freezed,
    Object? invite = freezed,
    Object? trim = freezed,
    Object? validate = freezed,
  }) {
    return _then(_value.copyWith(
      watchlater: freezed == watchlater
          ? _value.watchlater
          : watchlater // ignore: cast_nullable_to_non_nullable
              as Like?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as Like?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
      viewTeamMembers: freezed == viewTeamMembers
          ? _value.viewTeamMembers
          : viewTeamMembers // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as Edit?,
      editContentRating: freezed == editContentRating
          ? _value.editContentRating
          : editContentRating // ignore: cast_nullable_to_non_nullable
              as EditContentRating?,
      editPrivacy: freezed == editPrivacy
          ? _value.editPrivacy
          : editPrivacy // ignore: cast_nullable_to_non_nullable
              as EditPrivacy?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      canUpdatePrivacyToPublic: freezed == canUpdatePrivacyToPublic
          ? _value.canUpdatePrivacyToPublic
          : canUpdatePrivacyToPublic // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      invite: freezed == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      trim: freezed == trim
          ? _value.trim
          : trim // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeCopyWith<$Res>? get watchlater {
    if (_value.watchlater == null) {
      return null;
    }

    return $LikeCopyWith<$Res>(_value.watchlater!, (value) {
      return _then(_value.copyWith(watchlater: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeCopyWith<$Res>? get like {
    if (_value.like == null) {
      return null;
    }

    return $LikeCopyWith<$Res>(_value.like!, (value) {
      return _then(_value.copyWith(like: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get viewTeamMembers {
    if (_value.viewTeamMembers == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.viewTeamMembers!, (value) {
      return _then(_value.copyWith(viewTeamMembers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditCopyWith<$Res>? get edit {
    if (_value.edit == null) {
      return null;
    }

    return $EditCopyWith<$Res>(_value.edit!, (value) {
      return _then(_value.copyWith(edit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditContentRatingCopyWith<$Res>? get editContentRating {
    if (_value.editContentRating == null) {
      return null;
    }

    return $EditContentRatingCopyWith<$Res>(_value.editContentRating!, (value) {
      return _then(_value.copyWith(editContentRating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditPrivacyCopyWith<$Res>? get editPrivacy {
    if (_value.editPrivacy == null) {
      return null;
    }

    return $EditPrivacyCopyWith<$Res>(_value.editPrivacy!, (value) {
      return _then(_value.copyWith(editPrivacy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get delete {
    if (_value.delete == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.delete!, (value) {
      return _then(_value.copyWith(delete: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get canUpdatePrivacyToPublic {
    if (_value.canUpdatePrivacyToPublic == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.canUpdatePrivacyToPublic!,
        (value) {
      return _then(_value.copyWith(canUpdatePrivacyToPublic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get invite {
    if (_value.invite == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.invite!, (value) {
      return _then(_value.copyWith(invite: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get trim {
    if (_value.trim == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.trim!, (value) {
      return _then(_value.copyWith(trim: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get validate {
    if (_value.validate == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.validate!, (value) {
      return _then(_value.copyWith(validate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PurpleInteractionsImplCopyWith<$Res>
    implements $PurpleInteractionsCopyWith<$Res> {
  factory _$$PurpleInteractionsImplCopyWith(_$PurpleInteractionsImpl value,
          $Res Function(_$PurpleInteractionsImpl) then) =
      __$$PurpleInteractionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "watchlater") Like? watchlater,
      @JsonKey(name: "like") Like? like,
      @JsonKey(name: "report") Report? report,
      @JsonKey(name: "view_team_members") Recommendations? viewTeamMembers,
      @JsonKey(name: "edit") Edit? edit,
      @JsonKey(name: "edit_content_rating")
      EditContentRating? editContentRating,
      @JsonKey(name: "edit_privacy") EditPrivacy? editPrivacy,
      @JsonKey(name: "delete") Recommendations? delete,
      @JsonKey(name: "can_update_privacy_to_public")
      Recommendations? canUpdatePrivacyToPublic,
      @JsonKey(name: "invite") Recommendations? invite,
      @JsonKey(name: "trim") Recommendations? trim,
      @JsonKey(name: "validate") Recommendations? validate});

  @override
  $LikeCopyWith<$Res>? get watchlater;
  @override
  $LikeCopyWith<$Res>? get like;
  @override
  $ReportCopyWith<$Res>? get report;
  @override
  $RecommendationsCopyWith<$Res>? get viewTeamMembers;
  @override
  $EditCopyWith<$Res>? get edit;
  @override
  $EditContentRatingCopyWith<$Res>? get editContentRating;
  @override
  $EditPrivacyCopyWith<$Res>? get editPrivacy;
  @override
  $RecommendationsCopyWith<$Res>? get delete;
  @override
  $RecommendationsCopyWith<$Res>? get canUpdatePrivacyToPublic;
  @override
  $RecommendationsCopyWith<$Res>? get invite;
  @override
  $RecommendationsCopyWith<$Res>? get trim;
  @override
  $RecommendationsCopyWith<$Res>? get validate;
}

/// @nodoc
class __$$PurpleInteractionsImplCopyWithImpl<$Res>
    extends _$PurpleInteractionsCopyWithImpl<$Res, _$PurpleInteractionsImpl>
    implements _$$PurpleInteractionsImplCopyWith<$Res> {
  __$$PurpleInteractionsImplCopyWithImpl(_$PurpleInteractionsImpl _value,
      $Res Function(_$PurpleInteractionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlater = freezed,
    Object? like = freezed,
    Object? report = freezed,
    Object? viewTeamMembers = freezed,
    Object? edit = freezed,
    Object? editContentRating = freezed,
    Object? editPrivacy = freezed,
    Object? delete = freezed,
    Object? canUpdatePrivacyToPublic = freezed,
    Object? invite = freezed,
    Object? trim = freezed,
    Object? validate = freezed,
  }) {
    return _then(_$PurpleInteractionsImpl(
      watchlater: freezed == watchlater
          ? _value.watchlater
          : watchlater // ignore: cast_nullable_to_non_nullable
              as Like?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as Like?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
      viewTeamMembers: freezed == viewTeamMembers
          ? _value.viewTeamMembers
          : viewTeamMembers // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      edit: freezed == edit
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
              as Edit?,
      editContentRating: freezed == editContentRating
          ? _value.editContentRating
          : editContentRating // ignore: cast_nullable_to_non_nullable
              as EditContentRating?,
      editPrivacy: freezed == editPrivacy
          ? _value.editPrivacy
          : editPrivacy // ignore: cast_nullable_to_non_nullable
              as EditPrivacy?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      canUpdatePrivacyToPublic: freezed == canUpdatePrivacyToPublic
          ? _value.canUpdatePrivacyToPublic
          : canUpdatePrivacyToPublic // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      invite: freezed == invite
          ? _value.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      trim: freezed == trim
          ? _value.trim
          : trim // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurpleInteractionsImpl implements _PurpleInteractions {
  const _$PurpleInteractionsImpl(
      {@JsonKey(name: "watchlater") this.watchlater,
      @JsonKey(name: "like") this.like,
      @JsonKey(name: "report") this.report,
      @JsonKey(name: "view_team_members") this.viewTeamMembers,
      @JsonKey(name: "edit") this.edit,
      @JsonKey(name: "edit_content_rating") this.editContentRating,
      @JsonKey(name: "edit_privacy") this.editPrivacy,
      @JsonKey(name: "delete") this.delete,
      @JsonKey(name: "can_update_privacy_to_public")
      this.canUpdatePrivacyToPublic,
      @JsonKey(name: "invite") this.invite,
      @JsonKey(name: "trim") this.trim,
      @JsonKey(name: "validate") this.validate});

  factory _$PurpleInteractionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleInteractionsImplFromJson(json);

  @override
  @JsonKey(name: "watchlater")
  final Like? watchlater;
  @override
  @JsonKey(name: "like")
  final Like? like;
  @override
  @JsonKey(name: "report")
  final Report? report;
  @override
  @JsonKey(name: "view_team_members")
  final Recommendations? viewTeamMembers;
  @override
  @JsonKey(name: "edit")
  final Edit? edit;
  @override
  @JsonKey(name: "edit_content_rating")
  final EditContentRating? editContentRating;
  @override
  @JsonKey(name: "edit_privacy")
  final EditPrivacy? editPrivacy;
  @override
  @JsonKey(name: "delete")
  final Recommendations? delete;
  @override
  @JsonKey(name: "can_update_privacy_to_public")
  final Recommendations? canUpdatePrivacyToPublic;
  @override
  @JsonKey(name: "invite")
  final Recommendations? invite;
  @override
  @JsonKey(name: "trim")
  final Recommendations? trim;
  @override
  @JsonKey(name: "validate")
  final Recommendations? validate;

  @override
  String toString() {
    return 'PurpleInteractions(watchlater: $watchlater, like: $like, report: $report, viewTeamMembers: $viewTeamMembers, edit: $edit, editContentRating: $editContentRating, editPrivacy: $editPrivacy, delete: $delete, canUpdatePrivacyToPublic: $canUpdatePrivacyToPublic, invite: $invite, trim: $trim, validate: $validate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleInteractionsImpl &&
            (identical(other.watchlater, watchlater) ||
                other.watchlater == watchlater) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.viewTeamMembers, viewTeamMembers) ||
                other.viewTeamMembers == viewTeamMembers) &&
            (identical(other.edit, edit) || other.edit == edit) &&
            (identical(other.editContentRating, editContentRating) ||
                other.editContentRating == editContentRating) &&
            (identical(other.editPrivacy, editPrivacy) ||
                other.editPrivacy == editPrivacy) &&
            (identical(other.delete, delete) || other.delete == delete) &&
            (identical(
                    other.canUpdatePrivacyToPublic, canUpdatePrivacyToPublic) ||
                other.canUpdatePrivacyToPublic == canUpdatePrivacyToPublic) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.trim, trim) || other.trim == trim) &&
            (identical(other.validate, validate) ||
                other.validate == validate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      watchlater,
      like,
      report,
      viewTeamMembers,
      edit,
      editContentRating,
      editPrivacy,
      delete,
      canUpdatePrivacyToPublic,
      invite,
      trim,
      validate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurpleInteractionsImplCopyWith<_$PurpleInteractionsImpl> get copyWith =>
      __$$PurpleInteractionsImplCopyWithImpl<_$PurpleInteractionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurpleInteractionsImplToJson(
      this,
    );
  }
}

abstract class _PurpleInteractions implements PurpleInteractions {
  const factory _PurpleInteractions(
          {@JsonKey(name: "watchlater") final Like? watchlater,
          @JsonKey(name: "like") final Like? like,
          @JsonKey(name: "report") final Report? report,
          @JsonKey(name: "view_team_members")
          final Recommendations? viewTeamMembers,
          @JsonKey(name: "edit") final Edit? edit,
          @JsonKey(name: "edit_content_rating")
          final EditContentRating? editContentRating,
          @JsonKey(name: "edit_privacy") final EditPrivacy? editPrivacy,
          @JsonKey(name: "delete") final Recommendations? delete,
          @JsonKey(name: "can_update_privacy_to_public")
          final Recommendations? canUpdatePrivacyToPublic,
          @JsonKey(name: "invite") final Recommendations? invite,
          @JsonKey(name: "trim") final Recommendations? trim,
          @JsonKey(name: "validate") final Recommendations? validate}) =
      _$PurpleInteractionsImpl;

  factory _PurpleInteractions.fromJson(Map<String, dynamic> json) =
      _$PurpleInteractionsImpl.fromJson;

  @override
  @JsonKey(name: "watchlater")
  Like? get watchlater;
  @override
  @JsonKey(name: "like")
  Like? get like;
  @override
  @JsonKey(name: "report")
  Report? get report;
  @override
  @JsonKey(name: "view_team_members")
  Recommendations? get viewTeamMembers;
  @override
  @JsonKey(name: "edit")
  Edit? get edit;
  @override
  @JsonKey(name: "edit_content_rating")
  EditContentRating? get editContentRating;
  @override
  @JsonKey(name: "edit_privacy")
  EditPrivacy? get editPrivacy;
  @override
  @JsonKey(name: "delete")
  Recommendations? get delete;
  @override
  @JsonKey(name: "can_update_privacy_to_public")
  Recommendations? get canUpdatePrivacyToPublic;
  @override
  @JsonKey(name: "invite")
  Recommendations? get invite;
  @override
  @JsonKey(name: "trim")
  Recommendations? get trim;
  @override
  @JsonKey(name: "validate")
  Recommendations? get validate;
  @override
  @JsonKey(ignore: true)
  _$$PurpleInteractionsImplCopyWith<_$PurpleInteractionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Edit _$EditFromJson(Map<String, dynamic> json) {
  return _Edit.fromJson(json);
}

/// @nodoc
mixin _$Edit {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "blocked_fields")
  List<String>? get blockedFields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditCopyWith<Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCopyWith<$Res> {
  factory $EditCopyWith(Edit value, $Res Function(Edit) then) =
      _$EditCopyWithImpl<$Res, Edit>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "blocked_fields") List<String>? blockedFields});
}

/// @nodoc
class _$EditCopyWithImpl<$Res, $Val extends Edit>
    implements $EditCopyWith<$Res> {
  _$EditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? blockedFields = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockedFields: freezed == blockedFields
          ? _value.blockedFields
          : blockedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> implements $EditCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "blocked_fields") List<String>? blockedFields});
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$EditCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? blockedFields = freezed,
  }) {
    return _then(_$EditImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockedFields: freezed == blockedFields
          ? _value._blockedFields
          : blockedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditImpl implements _Edit {
  const _$EditImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "blocked_fields") final List<String>? blockedFields})
      : _options = options,
        _blockedFields = blockedFields;

  factory _$EditImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _blockedFields;
  @override
  @JsonKey(name: "blocked_fields")
  List<String>? get blockedFields {
    final value = _blockedFields;
    if (value == null) return null;
    if (_blockedFields is EqualUnmodifiableListView) return _blockedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Edit(uri: $uri, options: $options, blockedFields: $blockedFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other._blockedFields, _blockedFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_blockedFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditImplToJson(
      this,
    );
  }
}

abstract class _Edit implements Edit {
  const factory _Edit(
          {@JsonKey(name: "uri") final String? uri,
          @JsonKey(name: "options") final List<String>? options,
          @JsonKey(name: "blocked_fields") final List<String>? blockedFields}) =
      _$EditImpl;

  factory _Edit.fromJson(Map<String, dynamic> json) = _$EditImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "blocked_fields")
  List<String>? get blockedFields;
  @override
  @JsonKey(ignore: true)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditContentRating _$EditContentRatingFromJson(Map<String, dynamic> json) {
  return _EditContentRating.fromJson(json);
}

/// @nodoc
mixin _$EditContentRating {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "content_rating")
  List<String>? get contentRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditContentRatingCopyWith<EditContentRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditContentRatingCopyWith<$Res> {
  factory $EditContentRatingCopyWith(
          EditContentRating value, $Res Function(EditContentRating) then) =
      _$EditContentRatingCopyWithImpl<$Res, EditContentRating>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "content_rating") List<String>? contentRating});
}

/// @nodoc
class _$EditContentRatingCopyWithImpl<$Res, $Val extends EditContentRating>
    implements $EditContentRatingCopyWith<$Res> {
  _$EditContentRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? contentRating = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditContentRatingImplCopyWith<$Res>
    implements $EditContentRatingCopyWith<$Res> {
  factory _$$EditContentRatingImplCopyWith(_$EditContentRatingImpl value,
          $Res Function(_$EditContentRatingImpl) then) =
      __$$EditContentRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "content_rating") List<String>? contentRating});
}

/// @nodoc
class __$$EditContentRatingImplCopyWithImpl<$Res>
    extends _$EditContentRatingCopyWithImpl<$Res, _$EditContentRatingImpl>
    implements _$$EditContentRatingImplCopyWith<$Res> {
  __$$EditContentRatingImplCopyWithImpl(_$EditContentRatingImpl _value,
      $Res Function(_$EditContentRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? contentRating = freezed,
  }) {
    return _then(_$EditContentRatingImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentRating: freezed == contentRating
          ? _value._contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditContentRatingImpl implements _EditContentRating {
  const _$EditContentRatingImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "content_rating") final List<String>? contentRating})
      : _options = options,
        _contentRating = contentRating;

  factory _$EditContentRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditContentRatingImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _contentRating;
  @override
  @JsonKey(name: "content_rating")
  List<String>? get contentRating {
    final value = _contentRating;
    if (value == null) return null;
    if (_contentRating is EqualUnmodifiableListView) return _contentRating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditContentRating(uri: $uri, options: $options, contentRating: $contentRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditContentRatingImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other._contentRating, _contentRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_contentRating));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditContentRatingImplCopyWith<_$EditContentRatingImpl> get copyWith =>
      __$$EditContentRatingImplCopyWithImpl<_$EditContentRatingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditContentRatingImplToJson(
      this,
    );
  }
}

abstract class _EditContentRating implements EditContentRating {
  const factory _EditContentRating(
          {@JsonKey(name: "uri") final String? uri,
          @JsonKey(name: "options") final List<String>? options,
          @JsonKey(name: "content_rating") final List<String>? contentRating}) =
      _$EditContentRatingImpl;

  factory _EditContentRating.fromJson(Map<String, dynamic> json) =
      _$EditContentRatingImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "content_rating")
  List<String>? get contentRating;
  @override
  @JsonKey(ignore: true)
  _$$EditContentRatingImplCopyWith<_$EditContentRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditPrivacy _$EditPrivacyFromJson(Map<String, dynamic> json) {
  return _EditPrivacy.fromJson(json);
}

/// @nodoc
mixin _$EditPrivacy {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "content_type")
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "properties")
  List<Property>? get properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPrivacyCopyWith<EditPrivacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPrivacyCopyWith<$Res> {
  factory $EditPrivacyCopyWith(
          EditPrivacy value, $Res Function(EditPrivacy) then) =
      _$EditPrivacyCopyWithImpl<$Res, EditPrivacy>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "content_type") String? contentType,
      @JsonKey(name: "properties") List<Property>? properties});
}

/// @nodoc
class _$EditPrivacyCopyWithImpl<$Res, $Val extends EditPrivacy>
    implements $EditPrivacyCopyWith<$Res> {
  _$EditPrivacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? contentType = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditPrivacyImplCopyWith<$Res>
    implements $EditPrivacyCopyWith<$Res> {
  factory _$$EditPrivacyImplCopyWith(
          _$EditPrivacyImpl value, $Res Function(_$EditPrivacyImpl) then) =
      __$$EditPrivacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "content_type") String? contentType,
      @JsonKey(name: "properties") List<Property>? properties});
}

/// @nodoc
class __$$EditPrivacyImplCopyWithImpl<$Res>
    extends _$EditPrivacyCopyWithImpl<$Res, _$EditPrivacyImpl>
    implements _$$EditPrivacyImplCopyWith<$Res> {
  __$$EditPrivacyImplCopyWithImpl(
      _$EditPrivacyImpl _value, $Res Function(_$EditPrivacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? contentType = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$EditPrivacyImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditPrivacyImpl implements _EditPrivacy {
  const _$EditPrivacyImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "content_type") this.contentType,
      @JsonKey(name: "properties") final List<Property>? properties})
      : _options = options,
        _properties = properties;

  factory _$EditPrivacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPrivacyImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "content_type")
  final String? contentType;
  final List<Property>? _properties;
  @override
  @JsonKey(name: "properties")
  List<Property>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditPrivacy(uri: $uri, options: $options, contentType: $contentType, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPrivacyImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      contentType,
      const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPrivacyImplCopyWith<_$EditPrivacyImpl> get copyWith =>
      __$$EditPrivacyImplCopyWithImpl<_$EditPrivacyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPrivacyImplToJson(
      this,
    );
  }
}

abstract class _EditPrivacy implements EditPrivacy {
  const factory _EditPrivacy(
          {@JsonKey(name: "uri") final String? uri,
          @JsonKey(name: "options") final List<String>? options,
          @JsonKey(name: "content_type") final String? contentType,
          @JsonKey(name: "properties") final List<Property>? properties}) =
      _$EditPrivacyImpl;

  factory _EditPrivacy.fromJson(Map<String, dynamic> json) =
      _$EditPrivacyImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "content_type")
  String? get contentType;
  @override
  @JsonKey(name: "properties")
  List<Property>? get properties;
  @override
  @JsonKey(ignore: true)
  _$$EditPrivacyImplCopyWith<_$EditPrivacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "required")
  bool? get required => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "required") bool? required,
      @JsonKey(name: "options") List<String>? options});
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? required = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
          _$PropertyImpl value, $Res Function(_$PropertyImpl) then) =
      __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "required") bool? required,
      @JsonKey(name: "options") List<String>? options});
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
      _$PropertyImpl _value, $Res Function(_$PropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? required = freezed,
    Object? options = freezed,
  }) {
    return _then(_$PropertyImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImpl implements _Property {
  const _$PropertyImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "required") this.required,
      @JsonKey(name: "options") final List<String>? options})
      : _options = options;

  factory _$PropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "required")
  final bool? required;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Property(name: $name, required: $required, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, required,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImplToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "required") final bool? required,
      @JsonKey(name: "options") final List<String>? options}) = _$PropertyImpl;

  factory _Property.fromJson(Map<String, dynamic> json) =
      _$PropertyImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "required")
  bool? get required;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Like _$LikeFromJson(Map<String, dynamic> json) {
  return _Like.fromJson(json);
}

/// @nodoc
mixin _$Like {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "added")
  bool? get added => throw _privateConstructorUsedError;
  @JsonKey(name: "added_time")
  dynamic get addedTime => throw _privateConstructorUsedError;
  @JsonKey(name: "show_count")
  bool? get showCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res, Like>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "added") bool? added,
      @JsonKey(name: "added_time") dynamic addedTime,
      @JsonKey(name: "show_count") bool? showCount});
}

/// @nodoc
class _$LikeCopyWithImpl<$Res, $Val extends Like>
    implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? added = freezed,
    Object? addedTime = freezed,
    Object? showCount = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedTime: freezed == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showCount: freezed == showCount
          ? _value.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeImplCopyWith<$Res> implements $LikeCopyWith<$Res> {
  factory _$$LikeImplCopyWith(
          _$LikeImpl value, $Res Function(_$LikeImpl) then) =
      __$$LikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "added") bool? added,
      @JsonKey(name: "added_time") dynamic addedTime,
      @JsonKey(name: "show_count") bool? showCount});
}

/// @nodoc
class __$$LikeImplCopyWithImpl<$Res>
    extends _$LikeCopyWithImpl<$Res, _$LikeImpl>
    implements _$$LikeImplCopyWith<$Res> {
  __$$LikeImplCopyWithImpl(_$LikeImpl _value, $Res Function(_$LikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? added = freezed,
    Object? addedTime = freezed,
    Object? showCount = freezed,
  }) {
    return _then(_$LikeImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedTime: freezed == addedTime
          ? _value.addedTime
          : addedTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showCount: freezed == showCount
          ? _value.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeImpl implements _Like {
  const _$LikeImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "added") this.added,
      @JsonKey(name: "added_time") this.addedTime,
      @JsonKey(name: "show_count") this.showCount})
      : _options = options;

  factory _$LikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "added")
  final bool? added;
  @override
  @JsonKey(name: "added_time")
  final dynamic addedTime;
  @override
  @JsonKey(name: "show_count")
  final bool? showCount;

  @override
  String toString() {
    return 'Like(uri: $uri, options: $options, added: $added, addedTime: $addedTime, showCount: $showCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.added, added) || other.added == added) &&
            const DeepCollectionEquality().equals(other.addedTime, addedTime) &&
            (identical(other.showCount, showCount) ||
                other.showCount == showCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      added,
      const DeepCollectionEquality().hash(addedTime),
      showCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      __$$LikeImplCopyWithImpl<_$LikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeImplToJson(
      this,
    );
  }
}

abstract class _Like implements Like {
  const factory _Like(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "added") final bool? added,
      @JsonKey(name: "added_time") final dynamic addedTime,
      @JsonKey(name: "show_count") final bool? showCount}) = _$LikeImpl;

  factory _Like.fromJson(Map<String, dynamic> json) = _$LikeImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "added")
  bool? get added;
  @override
  @JsonKey(name: "added_time")
  dynamic get addedTime;
  @override
  @JsonKey(name: "show_count")
  bool? get showCount;
  @override
  @JsonKey(ignore: true)
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<String>? get options => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  List<String>? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "reason") List<String>? reason});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "options") List<String>? options,
      @JsonKey(name: "reason") List<String>? reason});
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? options = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ReportImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value._reason
          : reason // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  const _$ReportImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "reason") final List<String>? reason})
      : _options = options,
        _reason = reason;

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  final List<String>? _options;
  @override
  @JsonKey(name: "options")
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _reason;
  @override
  @JsonKey(name: "reason")
  List<String>? get reason {
    final value = _reason;
    if (value == null) return null;
    if (_reason is EqualUnmodifiableListView) return _reason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Report(uri: $uri, options: $options, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._reason, _reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_reason));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "options") final List<String>? options,
      @JsonKey(name: "reason") final List<String>? reason}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "options")
  List<String>? get options;
  @override
  @JsonKey(name: "reason")
  List<String>? get reason;
  @override
  @JsonKey(ignore: true)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pictures _$PicturesFromJson(Map<String, dynamic> json) {
  return _Pictures.fromJson(json);
}

/// @nodoc
mixin _$Pictures {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "base_link")
  String? get baseLink => throw _privateConstructorUsedError;
  @JsonKey(name: "sizes")
  List<Size>? get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_key")
  String? get resourceKey => throw _privateConstructorUsedError;
  @JsonKey(name: "default_picture")
  bool? get defaultPicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PicturesCopyWith<Pictures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicturesCopyWith<$Res> {
  factory $PicturesCopyWith(Pictures value, $Res Function(Pictures) then) =
      _$PicturesCopyWithImpl<$Res, Pictures>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "base_link") String? baseLink,
      @JsonKey(name: "sizes") List<Size>? sizes,
      @JsonKey(name: "resource_key") String? resourceKey,
      @JsonKey(name: "default_picture") bool? defaultPicture});
}

/// @nodoc
class _$PicturesCopyWithImpl<$Res, $Val extends Pictures>
    implements $PicturesCopyWith<$Res> {
  _$PicturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? active = freezed,
    Object? type = freezed,
    Object? baseLink = freezed,
    Object? sizes = freezed,
    Object? resourceKey = freezed,
    Object? defaultPicture = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      baseLink: freezed == baseLink
          ? _value.baseLink
          : baseLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPicture: freezed == defaultPicture
          ? _value.defaultPicture
          : defaultPicture // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicturesImplCopyWith<$Res>
    implements $PicturesCopyWith<$Res> {
  factory _$$PicturesImplCopyWith(
          _$PicturesImpl value, $Res Function(_$PicturesImpl) then) =
      __$$PicturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "base_link") String? baseLink,
      @JsonKey(name: "sizes") List<Size>? sizes,
      @JsonKey(name: "resource_key") String? resourceKey,
      @JsonKey(name: "default_picture") bool? defaultPicture});
}

/// @nodoc
class __$$PicturesImplCopyWithImpl<$Res>
    extends _$PicturesCopyWithImpl<$Res, _$PicturesImpl>
    implements _$$PicturesImplCopyWith<$Res> {
  __$$PicturesImplCopyWithImpl(
      _$PicturesImpl _value, $Res Function(_$PicturesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? active = freezed,
    Object? type = freezed,
    Object? baseLink = freezed,
    Object? sizes = freezed,
    Object? resourceKey = freezed,
    Object? defaultPicture = freezed,
  }) {
    return _then(_$PicturesImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      baseLink: freezed == baseLink
          ? _value.baseLink
          : baseLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultPicture: freezed == defaultPicture
          ? _value.defaultPicture
          : defaultPicture // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PicturesImpl implements _Pictures {
  const _$PicturesImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "active") this.active,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "base_link") this.baseLink,
      @JsonKey(name: "sizes") final List<Size>? sizes,
      @JsonKey(name: "resource_key") this.resourceKey,
      @JsonKey(name: "default_picture") this.defaultPicture})
      : _sizes = sizes;

  factory _$PicturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicturesImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  @override
  @JsonKey(name: "active")
  final bool? active;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "base_link")
  final String? baseLink;
  final List<Size>? _sizes;
  @override
  @JsonKey(name: "sizes")
  List<Size>? get sizes {
    final value = _sizes;
    if (value == null) return null;
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "resource_key")
  final String? resourceKey;
  @override
  @JsonKey(name: "default_picture")
  final bool? defaultPicture;

  @override
  String toString() {
    return 'Pictures(uri: $uri, active: $active, type: $type, baseLink: $baseLink, sizes: $sizes, resourceKey: $resourceKey, defaultPicture: $defaultPicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicturesImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.baseLink, baseLink) ||
                other.baseLink == baseLink) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            (identical(other.resourceKey, resourceKey) ||
                other.resourceKey == resourceKey) &&
            (identical(other.defaultPicture, defaultPicture) ||
                other.defaultPicture == defaultPicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, active, type, baseLink,
      const DeepCollectionEquality().hash(_sizes), resourceKey, defaultPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PicturesImplCopyWith<_$PicturesImpl> get copyWith =>
      __$$PicturesImplCopyWithImpl<_$PicturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicturesImplToJson(
      this,
    );
  }
}

abstract class _Pictures implements Pictures {
  const factory _Pictures(
          {@JsonKey(name: "uri") final String? uri,
          @JsonKey(name: "active") final bool? active,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "base_link") final String? baseLink,
          @JsonKey(name: "sizes") final List<Size>? sizes,
          @JsonKey(name: "resource_key") final String? resourceKey,
          @JsonKey(name: "default_picture") final bool? defaultPicture}) =
      _$PicturesImpl;

  factory _Pictures.fromJson(Map<String, dynamic> json) =
      _$PicturesImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "base_link")
  String? get baseLink;
  @override
  @JsonKey(name: "sizes")
  List<Size>? get sizes;
  @override
  @JsonKey(name: "resource_key")
  String? get resourceKey;
  @override
  @JsonKey(name: "default_picture")
  bool? get defaultPicture;
  @override
  @JsonKey(ignore: true)
  _$$PicturesImplCopyWith<_$PicturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "link_with_play_button")
  String? get linkWithPlayButton => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call(
      {@JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "link_with_play_button") String? linkWithPlayButton});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? link = freezed,
    Object? linkWithPlayButton = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkWithPlayButton: freezed == linkWithPlayButton
          ? _value.linkWithPlayButton
          : linkWithPlayButton // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeImplCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$SizeImplCopyWith(
          _$SizeImpl value, $Res Function(_$SizeImpl) then) =
      __$$SizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "link_with_play_button") String? linkWithPlayButton});
}

/// @nodoc
class __$$SizeImplCopyWithImpl<$Res>
    extends _$SizeCopyWithImpl<$Res, _$SizeImpl>
    implements _$$SizeImplCopyWith<$Res> {
  __$$SizeImplCopyWithImpl(_$SizeImpl _value, $Res Function(_$SizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? link = freezed,
    Object? linkWithPlayButton = freezed,
  }) {
    return _then(_$SizeImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkWithPlayButton: freezed == linkWithPlayButton
          ? _value.linkWithPlayButton
          : linkWithPlayButton // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeImpl implements _Size {
  const _$SizeImpl(
      {@JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "link_with_play_button") this.linkWithPlayButton});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "link_with_play_button")
  final String? linkWithPlayButton;

  @override
  String toString() {
    return 'Size(width: $width, height: $height, link: $link, linkWithPlayButton: $linkWithPlayButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.linkWithPlayButton, linkWithPlayButton) ||
                other.linkWithPlayButton == linkWithPlayButton));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, width, height, link, linkWithPlayButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      __$$SizeImplCopyWithImpl<_$SizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeImplToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size(
      {@JsonKey(name: "width") final int? width,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "link") final String? link,
      @JsonKey(name: "link_with_play_button")
      final String? linkWithPlayButton}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "link_with_play_button")
  String? get linkWithPlayButton;
  @override
  @JsonKey(ignore: true)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Play _$PlayFromJson(Map<String, dynamic> json) {
  return _Play.fromJson(json);
}

/// @nodoc
mixin _$Play {
  @JsonKey(name: "progressive")
  List<Download>? get progressive => throw _privateConstructorUsedError;
  @JsonKey(name: "hls")
  Dash? get hls => throw _privateConstructorUsedError;
  @JsonKey(name: "dash")
  Dash? get dash => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayCopyWith<Play> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayCopyWith<$Res> {
  factory $PlayCopyWith(Play value, $Res Function(Play) then) =
      _$PlayCopyWithImpl<$Res, Play>;
  @useResult
  $Res call(
      {@JsonKey(name: "progressive") List<Download>? progressive,
      @JsonKey(name: "hls") Dash? hls,
      @JsonKey(name: "dash") Dash? dash,
      @JsonKey(name: "status") String? status});

  $DashCopyWith<$Res>? get hls;
  $DashCopyWith<$Res>? get dash;
}

/// @nodoc
class _$PlayCopyWithImpl<$Res, $Val extends Play>
    implements $PlayCopyWith<$Res> {
  _$PlayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressive = freezed,
    Object? hls = freezed,
    Object? dash = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      progressive: freezed == progressive
          ? _value.progressive
          : progressive // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      hls: freezed == hls
          ? _value.hls
          : hls // ignore: cast_nullable_to_non_nullable
              as Dash?,
      dash: freezed == dash
          ? _value.dash
          : dash // ignore: cast_nullable_to_non_nullable
              as Dash?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashCopyWith<$Res>? get hls {
    if (_value.hls == null) {
      return null;
    }

    return $DashCopyWith<$Res>(_value.hls!, (value) {
      return _then(_value.copyWith(hls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DashCopyWith<$Res>? get dash {
    if (_value.dash == null) {
      return null;
    }

    return $DashCopyWith<$Res>(_value.dash!, (value) {
      return _then(_value.copyWith(dash: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> implements $PlayCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "progressive") List<Download>? progressive,
      @JsonKey(name: "hls") Dash? hls,
      @JsonKey(name: "dash") Dash? dash,
      @JsonKey(name: "status") String? status});

  @override
  $DashCopyWith<$Res>? get hls;
  @override
  $DashCopyWith<$Res>? get dash;
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$PlayCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressive = freezed,
    Object? hls = freezed,
    Object? dash = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PlayImpl(
      progressive: freezed == progressive
          ? _value._progressive
          : progressive // ignore: cast_nullable_to_non_nullable
              as List<Download>?,
      hls: freezed == hls
          ? _value.hls
          : hls // ignore: cast_nullable_to_non_nullable
              as Dash?,
      dash: freezed == dash
          ? _value.dash
          : dash // ignore: cast_nullable_to_non_nullable
              as Dash?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayImpl implements _Play {
  const _$PlayImpl(
      {@JsonKey(name: "progressive") final List<Download>? progressive,
      @JsonKey(name: "hls") this.hls,
      @JsonKey(name: "dash") this.dash,
      @JsonKey(name: "status") this.status})
      : _progressive = progressive;

  factory _$PlayImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayImplFromJson(json);

  final List<Download>? _progressive;
  @override
  @JsonKey(name: "progressive")
  List<Download>? get progressive {
    final value = _progressive;
    if (value == null) return null;
    if (_progressive is EqualUnmodifiableListView) return _progressive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "hls")
  final Dash? hls;
  @override
  @JsonKey(name: "dash")
  final Dash? dash;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'Play(progressive: $progressive, hls: $hls, dash: $dash, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayImpl &&
            const DeepCollectionEquality()
                .equals(other._progressive, _progressive) &&
            (identical(other.hls, hls) || other.hls == hls) &&
            (identical(other.dash, dash) || other.dash == dash) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_progressive), hls, dash, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      __$$PlayImplCopyWithImpl<_$PlayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayImplToJson(
      this,
    );
  }
}

abstract class _Play implements Play {
  const factory _Play(
      {@JsonKey(name: "progressive") final List<Download>? progressive,
      @JsonKey(name: "hls") final Dash? hls,
      @JsonKey(name: "dash") final Dash? dash,
      @JsonKey(name: "status") final String? status}) = _$PlayImpl;

  factory _Play.fromJson(Map<String, dynamic> json) = _$PlayImpl.fromJson;

  @override
  @JsonKey(name: "progressive")
  List<Download>? get progressive;
  @override
  @JsonKey(name: "hls")
  Dash? get hls;
  @override
  @JsonKey(name: "dash")
  Dash? get dash;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dash _$DashFromJson(Map<String, dynamic> json) {
  return _Dash.fromJson(json);
}

/// @nodoc
mixin _$Dash {
  @JsonKey(name: "link_expiration_time")
  DateTime? get linkExpirationTime => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashCopyWith<Dash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashCopyWith<$Res> {
  factory $DashCopyWith(Dash value, $Res Function(Dash) then) =
      _$DashCopyWithImpl<$Res, Dash>;
  @useResult
  $Res call(
      {@JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime,
      @JsonKey(name: "link") String? link});
}

/// @nodoc
class _$DashCopyWithImpl<$Res, $Val extends Dash>
    implements $DashCopyWith<$Res> {
  _$DashCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkExpirationTime = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      linkExpirationTime: freezed == linkExpirationTime
          ? _value.linkExpirationTime
          : linkExpirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashImplCopyWith<$Res> implements $DashCopyWith<$Res> {
  factory _$$DashImplCopyWith(
          _$DashImpl value, $Res Function(_$DashImpl) then) =
      __$$DashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "link_expiration_time") DateTime? linkExpirationTime,
      @JsonKey(name: "link") String? link});
}

/// @nodoc
class __$$DashImplCopyWithImpl<$Res>
    extends _$DashCopyWithImpl<$Res, _$DashImpl>
    implements _$$DashImplCopyWith<$Res> {
  __$$DashImplCopyWithImpl(_$DashImpl _value, $Res Function(_$DashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkExpirationTime = freezed,
    Object? link = freezed,
  }) {
    return _then(_$DashImpl(
      linkExpirationTime: freezed == linkExpirationTime
          ? _value.linkExpirationTime
          : linkExpirationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashImpl implements _Dash {
  const _$DashImpl(
      {@JsonKey(name: "link_expiration_time") this.linkExpirationTime,
      @JsonKey(name: "link") this.link});

  factory _$DashImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashImplFromJson(json);

  @override
  @JsonKey(name: "link_expiration_time")
  final DateTime? linkExpirationTime;
  @override
  @JsonKey(name: "link")
  final String? link;

  @override
  String toString() {
    return 'Dash(linkExpirationTime: $linkExpirationTime, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashImpl &&
            (identical(other.linkExpirationTime, linkExpirationTime) ||
                other.linkExpirationTime == linkExpirationTime) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, linkExpirationTime, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashImplCopyWith<_$DashImpl> get copyWith =>
      __$$DashImplCopyWithImpl<_$DashImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashImplToJson(
      this,
    );
  }
}

abstract class _Dash implements Dash {
  const factory _Dash(
      {@JsonKey(name: "link_expiration_time")
      final DateTime? linkExpirationTime,
      @JsonKey(name: "link") final String? link}) = _$DashImpl;

  factory _Dash.fromJson(Map<String, dynamic> json) = _$DashImpl.fromJson;

  @override
  @JsonKey(name: "link_expiration_time")
  DateTime? get linkExpirationTime;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$DashImplCopyWith<_$DashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Privacy _$PrivacyFromJson(Map<String, dynamic> json) {
  return _Privacy.fromJson(json);
}

/// @nodoc
mixin _$Privacy {
  @JsonKey(name: "view")
  String? get view => throw _privateConstructorUsedError;
  @JsonKey(name: "embed")
  String? get embed => throw _privateConstructorUsedError;
  @JsonKey(name: "download")
  bool? get download => throw _privateConstructorUsedError;
  @JsonKey(name: "add")
  bool? get add => throw _privateConstructorUsedError;
  @JsonKey(name: "comments")
  String? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_share_link")
  bool? get allowShareLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacyCopyWith<Privacy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyCopyWith<$Res> {
  factory $PrivacyCopyWith(Privacy value, $Res Function(Privacy) then) =
      _$PrivacyCopyWithImpl<$Res, Privacy>;
  @useResult
  $Res call(
      {@JsonKey(name: "view") String? view,
      @JsonKey(name: "embed") String? embed,
      @JsonKey(name: "download") bool? download,
      @JsonKey(name: "add") bool? add,
      @JsonKey(name: "comments") String? comments,
      @JsonKey(name: "allow_share_link") bool? allowShareLink});
}

/// @nodoc
class _$PrivacyCopyWithImpl<$Res, $Val extends Privacy>
    implements $PrivacyCopyWith<$Res> {
  _$PrivacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = freezed,
    Object? embed = freezed,
    Object? download = freezed,
    Object? add = freezed,
    Object? comments = freezed,
    Object? allowShareLink = freezed,
  }) {
    return _then(_value.copyWith(
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      allowShareLink: freezed == allowShareLink
          ? _value.allowShareLink
          : allowShareLink // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyImplCopyWith<$Res> implements $PrivacyCopyWith<$Res> {
  factory _$$PrivacyImplCopyWith(
          _$PrivacyImpl value, $Res Function(_$PrivacyImpl) then) =
      __$$PrivacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "view") String? view,
      @JsonKey(name: "embed") String? embed,
      @JsonKey(name: "download") bool? download,
      @JsonKey(name: "add") bool? add,
      @JsonKey(name: "comments") String? comments,
      @JsonKey(name: "allow_share_link") bool? allowShareLink});
}

/// @nodoc
class __$$PrivacyImplCopyWithImpl<$Res>
    extends _$PrivacyCopyWithImpl<$Res, _$PrivacyImpl>
    implements _$$PrivacyImplCopyWith<$Res> {
  __$$PrivacyImplCopyWithImpl(
      _$PrivacyImpl _value, $Res Function(_$PrivacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = freezed,
    Object? embed = freezed,
    Object? download = freezed,
    Object? add = freezed,
    Object? comments = freezed,
    Object? allowShareLink = freezed,
  }) {
    return _then(_$PrivacyImpl(
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool?,
      add: freezed == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      allowShareLink: freezed == allowShareLink
          ? _value.allowShareLink
          : allowShareLink // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacyImpl implements _Privacy {
  const _$PrivacyImpl(
      {@JsonKey(name: "view") this.view,
      @JsonKey(name: "embed") this.embed,
      @JsonKey(name: "download") this.download,
      @JsonKey(name: "add") this.add,
      @JsonKey(name: "comments") this.comments,
      @JsonKey(name: "allow_share_link") this.allowShareLink});

  factory _$PrivacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacyImplFromJson(json);

  @override
  @JsonKey(name: "view")
  final String? view;
  @override
  @JsonKey(name: "embed")
  final String? embed;
  @override
  @JsonKey(name: "download")
  final bool? download;
  @override
  @JsonKey(name: "add")
  final bool? add;
  @override
  @JsonKey(name: "comments")
  final String? comments;
  @override
  @JsonKey(name: "allow_share_link")
  final bool? allowShareLink;

  @override
  String toString() {
    return 'Privacy(view: $view, embed: $embed, download: $download, add: $add, comments: $comments, allowShareLink: $allowShareLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyImpl &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.embed, embed) || other.embed == embed) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.add, add) || other.add == add) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.allowShareLink, allowShareLink) ||
                other.allowShareLink == allowShareLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, view, embed, download, add, comments, allowShareLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyImplCopyWith<_$PrivacyImpl> get copyWith =>
      __$$PrivacyImplCopyWithImpl<_$PrivacyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacyImplToJson(
      this,
    );
  }
}

abstract class _Privacy implements Privacy {
  const factory _Privacy(
          {@JsonKey(name: "view") final String? view,
          @JsonKey(name: "embed") final String? embed,
          @JsonKey(name: "download") final bool? download,
          @JsonKey(name: "add") final bool? add,
          @JsonKey(name: "comments") final String? comments,
          @JsonKey(name: "allow_share_link") final bool? allowShareLink}) =
      _$PrivacyImpl;

  factory _Privacy.fromJson(Map<String, dynamic> json) = _$PrivacyImpl.fromJson;

  @override
  @JsonKey(name: "view")
  String? get view;
  @override
  @JsonKey(name: "embed")
  String? get embed;
  @override
  @JsonKey(name: "download")
  bool? get download;
  @override
  @JsonKey(name: "add")
  bool? get add;
  @override
  @JsonKey(name: "comments")
  String? get comments;
  @override
  @JsonKey(name: "allow_share_link")
  bool? get allowShareLink;
  @override
  @JsonKey(ignore: true)
  _$$PrivacyImplCopyWith<_$PrivacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewPage _$ReviewPageFromJson(Map<String, dynamic> json) {
  return _ReviewPage.fromJson(json);
}

/// @nodoc
mixin _$ReviewPage {
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "is_shareable")
  bool? get isShareable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewPageCopyWith<ReviewPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPageCopyWith<$Res> {
  factory $ReviewPageCopyWith(
          ReviewPage value, $Res Function(ReviewPage) then) =
      _$ReviewPageCopyWithImpl<$Res, ReviewPage>;
  @useResult
  $Res call(
      {@JsonKey(name: "active") bool? active,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "is_shareable") bool? isShareable});
}

/// @nodoc
class _$ReviewPageCopyWithImpl<$Res, $Val extends ReviewPage>
    implements $ReviewPageCopyWith<$Res> {
  _$ReviewPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? link = freezed,
    Object? isShareable = freezed,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      isShareable: freezed == isShareable
          ? _value.isShareable
          : isShareable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewPageImplCopyWith<$Res>
    implements $ReviewPageCopyWith<$Res> {
  factory _$$ReviewPageImplCopyWith(
          _$ReviewPageImpl value, $Res Function(_$ReviewPageImpl) then) =
      __$$ReviewPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "active") bool? active,
      @JsonKey(name: "link") String? link,
      @JsonKey(name: "is_shareable") bool? isShareable});
}

/// @nodoc
class __$$ReviewPageImplCopyWithImpl<$Res>
    extends _$ReviewPageCopyWithImpl<$Res, _$ReviewPageImpl>
    implements _$$ReviewPageImplCopyWith<$Res> {
  __$$ReviewPageImplCopyWithImpl(
      _$ReviewPageImpl _value, $Res Function(_$ReviewPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? link = freezed,
    Object? isShareable = freezed,
  }) {
    return _then(_$ReviewPageImpl(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      isShareable: freezed == isShareable
          ? _value.isShareable
          : isShareable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewPageImpl implements _ReviewPage {
  const _$ReviewPageImpl(
      {@JsonKey(name: "active") this.active,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "is_shareable") this.isShareable});

  factory _$ReviewPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewPageImplFromJson(json);

  @override
  @JsonKey(name: "active")
  final bool? active;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "is_shareable")
  final bool? isShareable;

  @override
  String toString() {
    return 'ReviewPage(active: $active, link: $link, isShareable: $isShareable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPageImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.isShareable, isShareable) ||
                other.isShareable == isShareable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, link, isShareable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPageImplCopyWith<_$ReviewPageImpl> get copyWith =>
      __$$ReviewPageImplCopyWithImpl<_$ReviewPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewPageImplToJson(
      this,
    );
  }
}

abstract class _ReviewPage implements ReviewPage {
  const factory _ReviewPage(
          {@JsonKey(name: "active") final bool? active,
          @JsonKey(name: "link") final String? link,
          @JsonKey(name: "is_shareable") final bool? isShareable}) =
      _$ReviewPageImpl;

  factory _ReviewPage.fromJson(Map<String, dynamic> json) =
      _$ReviewPageImpl.fromJson;

  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "is_shareable")
  bool? get isShareable;
  @override
  @JsonKey(ignore: true)
  _$$ReviewPageImplCopyWith<_$ReviewPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  @JsonKey(name: "plays")
  int? get plays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({@JsonKey(name: "plays") int? plays});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plays = freezed,
  }) {
    return _then(_value.copyWith(
      plays: freezed == plays
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "plays") int? plays});
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plays = freezed,
  }) {
    return _then(_$StatsImpl(
      plays: freezed == plays
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsImpl implements _Stats {
  const _$StatsImpl({@JsonKey(name: "plays") this.plays});

  factory _$StatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsImplFromJson(json);

  @override
  @JsonKey(name: "plays")
  final int? plays;

  @override
  String toString() {
    return 'Stats(plays: $plays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.plays, plays) || other.plays == plays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsImplToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats({@JsonKey(name: "plays") final int? plays}) =
      _$StatsImpl;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$StatsImpl.fromJson;

  @override
  @JsonKey(name: "plays")
  int? get plays;
  @override
  @JsonKey(ignore: true)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transcode _$TranscodeFromJson(Map<String, dynamic> json) {
  return _Transcode.fromJson(json);
}

/// @nodoc
mixin _$Transcode {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranscodeCopyWith<Transcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranscodeCopyWith<$Res> {
  factory $TranscodeCopyWith(Transcode value, $Res Function(Transcode) then) =
      _$TranscodeCopyWithImpl<$Res, Transcode>;
  @useResult
  $Res call({@JsonKey(name: "status") String? status});
}

/// @nodoc
class _$TranscodeCopyWithImpl<$Res, $Val extends Transcode>
    implements $TranscodeCopyWith<$Res> {
  _$TranscodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranscodeImplCopyWith<$Res>
    implements $TranscodeCopyWith<$Res> {
  factory _$$TranscodeImplCopyWith(
          _$TranscodeImpl value, $Res Function(_$TranscodeImpl) then) =
      __$$TranscodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$TranscodeImplCopyWithImpl<$Res>
    extends _$TranscodeCopyWithImpl<$Res, _$TranscodeImpl>
    implements _$$TranscodeImplCopyWith<$Res> {
  __$$TranscodeImplCopyWithImpl(
      _$TranscodeImpl _value, $Res Function(_$TranscodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TranscodeImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranscodeImpl implements _Transcode {
  const _$TranscodeImpl({@JsonKey(name: "status") this.status});

  factory _$TranscodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranscodeImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'Transcode(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscodeImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranscodeImplCopyWith<_$TranscodeImpl> get copyWith =>
      __$$TranscodeImplCopyWithImpl<_$TranscodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranscodeImplToJson(
      this,
    );
  }
}

abstract class _Transcode implements Transcode {
  const factory _Transcode({@JsonKey(name: "status") final String? status}) =
      _$TranscodeImpl;

  factory _Transcode.fromJson(Map<String, dynamic> json) =
      _$TranscodeImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$TranscodeImplCopyWith<_$TranscodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Upload _$UploadFromJson(Map<String, dynamic> json) {
  return _Upload.fromJson(json);
}

/// @nodoc
mixin _$Upload {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  dynamic get link => throw _privateConstructorUsedError;
  @JsonKey(name: "upload_link")
  dynamic get uploadLink => throw _privateConstructorUsedError;
  @JsonKey(name: "form")
  dynamic get form => throw _privateConstructorUsedError;
  @JsonKey(name: "approach")
  dynamic get approach => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  dynamic get size => throw _privateConstructorUsedError;
  @JsonKey(name: "redirect_url")
  dynamic get redirectUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadCopyWith<Upload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCopyWith<$Res> {
  factory $UploadCopyWith(Upload value, $Res Function(Upload) then) =
      _$UploadCopyWithImpl<$Res, Upload>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "link") dynamic link,
      @JsonKey(name: "upload_link") dynamic uploadLink,
      @JsonKey(name: "form") dynamic form,
      @JsonKey(name: "approach") dynamic approach,
      @JsonKey(name: "size") dynamic size,
      @JsonKey(name: "redirect_url") dynamic redirectUrl});
}

/// @nodoc
class _$UploadCopyWithImpl<$Res, $Val extends Upload>
    implements $UploadCopyWith<$Res> {
  _$UploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? link = freezed,
    Object? uploadLink = freezed,
    Object? form = freezed,
    Object? approach = freezed,
    Object? size = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploadLink: freezed == uploadLink
          ? _value.uploadLink
          : uploadLink // ignore: cast_nullable_to_non_nullable
              as dynamic,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approach: freezed == approach
          ? _value.approach
          : approach // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImplCopyWith<$Res> implements $UploadCopyWith<$Res> {
  factory _$$UploadImplCopyWith(
          _$UploadImpl value, $Res Function(_$UploadImpl) then) =
      __$$UploadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "link") dynamic link,
      @JsonKey(name: "upload_link") dynamic uploadLink,
      @JsonKey(name: "form") dynamic form,
      @JsonKey(name: "approach") dynamic approach,
      @JsonKey(name: "size") dynamic size,
      @JsonKey(name: "redirect_url") dynamic redirectUrl});
}

/// @nodoc
class __$$UploadImplCopyWithImpl<$Res>
    extends _$UploadCopyWithImpl<$Res, _$UploadImpl>
    implements _$$UploadImplCopyWith<$Res> {
  __$$UploadImplCopyWithImpl(
      _$UploadImpl _value, $Res Function(_$UploadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? link = freezed,
    Object? uploadLink = freezed,
    Object? form = freezed,
    Object? approach = freezed,
    Object? size = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_$UploadImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uploadLink: freezed == uploadLink
          ? _value.uploadLink
          : uploadLink // ignore: cast_nullable_to_non_nullable
              as dynamic,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approach: freezed == approach
          ? _value.approach
          : approach // ignore: cast_nullable_to_non_nullable
              as dynamic,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImpl implements _Upload {
  const _$UploadImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "upload_link") this.uploadLink,
      @JsonKey(name: "form") this.form,
      @JsonKey(name: "approach") this.approach,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "redirect_url") this.redirectUrl});

  factory _$UploadImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "link")
  final dynamic link;
  @override
  @JsonKey(name: "upload_link")
  final dynamic uploadLink;
  @override
  @JsonKey(name: "form")
  final dynamic form;
  @override
  @JsonKey(name: "approach")
  final dynamic approach;
  @override
  @JsonKey(name: "size")
  final dynamic size;
  @override
  @JsonKey(name: "redirect_url")
  final dynamic redirectUrl;

  @override
  String toString() {
    return 'Upload(status: $status, link: $link, uploadLink: $uploadLink, form: $form, approach: $approach, size: $size, redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality()
                .equals(other.uploadLink, uploadLink) &&
            const DeepCollectionEquality().equals(other.form, form) &&
            const DeepCollectionEquality().equals(other.approach, approach) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.redirectUrl, redirectUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(uploadLink),
      const DeepCollectionEquality().hash(form),
      const DeepCollectionEquality().hash(approach),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(redirectUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      __$$UploadImplCopyWithImpl<_$UploadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImplToJson(
      this,
    );
  }
}

abstract class _Upload implements Upload {
  const factory _Upload(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "link") final dynamic link,
      @JsonKey(name: "upload_link") final dynamic uploadLink,
      @JsonKey(name: "form") final dynamic form,
      @JsonKey(name: "approach") final dynamic approach,
      @JsonKey(name: "size") final dynamic size,
      @JsonKey(name: "redirect_url") final dynamic redirectUrl}) = _$UploadImpl;

  factory _Upload.fromJson(Map<String, dynamic> json) = _$UploadImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "link")
  dynamic get link;
  @override
  @JsonKey(name: "upload_link")
  dynamic get uploadLink;
  @override
  @JsonKey(name: "form")
  dynamic get form;
  @override
  @JsonKey(name: "approach")
  dynamic get approach;
  @override
  @JsonKey(name: "size")
  dynamic get size;
  @override
  @JsonKey(name: "redirect_url")
  dynamic get redirectUrl;
  @override
  @JsonKey(ignore: true)
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Uploader _$UploaderFromJson(Map<String, dynamic> json) {
  return _Uploader.fromJson(json);
}

/// @nodoc
mixin _$Uploader {
  @JsonKey(name: "pictures")
  Pictures? get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploaderCopyWith<Uploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderCopyWith<$Res> {
  factory $UploaderCopyWith(Uploader value, $Res Function(Uploader) then) =
      _$UploaderCopyWithImpl<$Res, Uploader>;
  @useResult
  $Res call({@JsonKey(name: "pictures") Pictures? pictures});

  $PicturesCopyWith<$Res>? get pictures;
}

/// @nodoc
class _$UploaderCopyWithImpl<$Res, $Val extends Uploader>
    implements $UploaderCopyWith<$Res> {
  _$UploaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = freezed,
  }) {
    return _then(_value.copyWith(
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PicturesCopyWith<$Res>? get pictures {
    if (_value.pictures == null) {
      return null;
    }

    return $PicturesCopyWith<$Res>(_value.pictures!, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploaderImplCopyWith<$Res>
    implements $UploaderCopyWith<$Res> {
  factory _$$UploaderImplCopyWith(
          _$UploaderImpl value, $Res Function(_$UploaderImpl) then) =
      __$$UploaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "pictures") Pictures? pictures});

  @override
  $PicturesCopyWith<$Res>? get pictures;
}

/// @nodoc
class __$$UploaderImplCopyWithImpl<$Res>
    extends _$UploaderCopyWithImpl<$Res, _$UploaderImpl>
    implements _$$UploaderImplCopyWith<$Res> {
  __$$UploaderImplCopyWithImpl(
      _$UploaderImpl _value, $Res Function(_$UploaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = freezed,
  }) {
    return _then(_$UploaderImpl(
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploaderImpl implements _Uploader {
  const _$UploaderImpl({@JsonKey(name: "pictures") this.pictures});

  factory _$UploaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploaderImplFromJson(json);

  @override
  @JsonKey(name: "pictures")
  final Pictures? pictures;

  @override
  String toString() {
    return 'Uploader(pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderImpl &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pictures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      __$$UploaderImplCopyWithImpl<_$UploaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploaderImplToJson(
      this,
    );
  }
}

abstract class _Uploader implements Uploader {
  const factory _Uploader(
      {@JsonKey(name: "pictures") final Pictures? pictures}) = _$UploaderImpl;

  factory _Uploader.fromJson(Map<String, dynamic> json) =
      _$UploaderImpl.fromJson;

  @override
  @JsonKey(name: "pictures")
  Pictures? get pictures;
  @override
  @JsonKey(ignore: true)
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "uri")
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "capabilities")
  Capabilities? get capabilities => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "bio")
  dynamic get bio => throw _privateConstructorUsedError;
  @JsonKey(name: "short_bio")
  dynamic get shortBio => throw _privateConstructorUsedError;
  @JsonKey(name: "created_time")
  DateTime? get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "pictures")
  Pictures? get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "websites")
  List<dynamic>? get websites => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  UserMetadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "location_details")
  LocationDetails? get locationDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<dynamic>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "available_for_hire")
  bool? get availableForHire => throw _privateConstructorUsedError;
  @JsonKey(name: "can_work_remotely")
  bool? get canWorkRemotely => throw _privateConstructorUsedError;
  @JsonKey(name: "preferences")
  Preferences? get preferences => throw _privateConstructorUsedError;
  @JsonKey(name: "resource_key")
  String? get resourceKey => throw _privateConstructorUsedError;
  @JsonKey(name: "account")
  String? get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
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
      @JsonKey(name: "account") String? account});

  $CapabilitiesCopyWith<$Res>? get capabilities;
  $PicturesCopyWith<$Res>? get pictures;
  $UserMetadataCopyWith<$Res>? get metadata;
  $LocationDetailsCopyWith<$Res>? get locationDetails;
  $PreferencesCopyWith<$Res>? get preferences;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? link = freezed,
    Object? capabilities = freezed,
    Object? location = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? shortBio = freezed,
    Object? createdTime = freezed,
    Object? pictures = freezed,
    Object? websites = freezed,
    Object? metadata = freezed,
    Object? locationDetails = freezed,
    Object? skills = freezed,
    Object? availableForHire = freezed,
    Object? canWorkRemotely = freezed,
    Object? preferences = freezed,
    Object? resourceKey = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: freezed == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Capabilities?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shortBio: freezed == shortBio
          ? _value.shortBio
          : shortBio // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
      websites: freezed == websites
          ? _value.websites
          : websites // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata?,
      locationDetails: freezed == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as LocationDetails?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      availableForHire: freezed == availableForHire
          ? _value.availableForHire
          : availableForHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      canWorkRemotely: freezed == canWorkRemotely
          ? _value.canWorkRemotely
          : canWorkRemotely // ignore: cast_nullable_to_non_nullable
              as bool?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Preferences?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CapabilitiesCopyWith<$Res>? get capabilities {
    if (_value.capabilities == null) {
      return null;
    }

    return $CapabilitiesCopyWith<$Res>(_value.capabilities!, (value) {
      return _then(_value.copyWith(capabilities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PicturesCopyWith<$Res>? get pictures {
    if (_value.pictures == null) {
      return null;
    }

    return $PicturesCopyWith<$Res>(_value.pictures!, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $UserMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDetailsCopyWith<$Res>? get locationDetails {
    if (_value.locationDetails == null) {
      return null;
    }

    return $LocationDetailsCopyWith<$Res>(_value.locationDetails!, (value) {
      return _then(_value.copyWith(locationDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreferencesCopyWith<$Res>? get preferences {
    if (_value.preferences == null) {
      return null;
    }

    return $PreferencesCopyWith<$Res>(_value.preferences!, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uri") String? uri,
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
      @JsonKey(name: "account") String? account});

  @override
  $CapabilitiesCopyWith<$Res>? get capabilities;
  @override
  $PicturesCopyWith<$Res>? get pictures;
  @override
  $UserMetadataCopyWith<$Res>? get metadata;
  @override
  $LocationDetailsCopyWith<$Res>? get locationDetails;
  @override
  $PreferencesCopyWith<$Res>? get preferences;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? link = freezed,
    Object? capabilities = freezed,
    Object? location = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? shortBio = freezed,
    Object? createdTime = freezed,
    Object? pictures = freezed,
    Object? websites = freezed,
    Object? metadata = freezed,
    Object? locationDetails = freezed,
    Object? skills = freezed,
    Object? availableForHire = freezed,
    Object? canWorkRemotely = freezed,
    Object? preferences = freezed,
    Object? resourceKey = freezed,
    Object? account = freezed,
  }) {
    return _then(_$UserImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: freezed == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Capabilities?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shortBio: freezed == shortBio
          ? _value.shortBio
          : shortBio // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Pictures?,
      websites: freezed == websites
          ? _value._websites
          : websites // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata?,
      locationDetails: freezed == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as LocationDetails?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      availableForHire: freezed == availableForHire
          ? _value.availableForHire
          : availableForHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      canWorkRemotely: freezed == canWorkRemotely
          ? _value.canWorkRemotely
          : canWorkRemotely // ignore: cast_nullable_to_non_nullable
              as bool?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Preferences?,
      resourceKey: freezed == resourceKey
          ? _value.resourceKey
          : resourceKey // ignore: cast_nullable_to_non_nullable
              as String?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: "uri") this.uri,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "link") this.link,
      @JsonKey(name: "capabilities") this.capabilities,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "bio") this.bio,
      @JsonKey(name: "short_bio") this.shortBio,
      @JsonKey(name: "created_time") this.createdTime,
      @JsonKey(name: "pictures") this.pictures,
      @JsonKey(name: "websites") final List<dynamic>? websites,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "location_details") this.locationDetails,
      @JsonKey(name: "skills") final List<dynamic>? skills,
      @JsonKey(name: "available_for_hire") this.availableForHire,
      @JsonKey(name: "can_work_remotely") this.canWorkRemotely,
      @JsonKey(name: "preferences") this.preferences,
      @JsonKey(name: "resource_key") this.resourceKey,
      @JsonKey(name: "account") this.account})
      : _websites = websites,
        _skills = skills;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "uri")
  final String? uri;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "link")
  final String? link;
  @override
  @JsonKey(name: "capabilities")
  final Capabilities? capabilities;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "bio")
  final dynamic bio;
  @override
  @JsonKey(name: "short_bio")
  final dynamic shortBio;
  @override
  @JsonKey(name: "created_time")
  final DateTime? createdTime;
  @override
  @JsonKey(name: "pictures")
  final Pictures? pictures;
  final List<dynamic>? _websites;
  @override
  @JsonKey(name: "websites")
  List<dynamic>? get websites {
    final value = _websites;
    if (value == null) return null;
    if (_websites is EqualUnmodifiableListView) return _websites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "metadata")
  final UserMetadata? metadata;
  @override
  @JsonKey(name: "location_details")
  final LocationDetails? locationDetails;
  final List<dynamic>? _skills;
  @override
  @JsonKey(name: "skills")
  List<dynamic>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "available_for_hire")
  final bool? availableForHire;
  @override
  @JsonKey(name: "can_work_remotely")
  final bool? canWorkRemotely;
  @override
  @JsonKey(name: "preferences")
  final Preferences? preferences;
  @override
  @JsonKey(name: "resource_key")
  final String? resourceKey;
  @override
  @JsonKey(name: "account")
  final String? account;

  @override
  String toString() {
    return 'User(uri: $uri, name: $name, link: $link, capabilities: $capabilities, location: $location, gender: $gender, bio: $bio, shortBio: $shortBio, createdTime: $createdTime, pictures: $pictures, websites: $websites, metadata: $metadata, locationDetails: $locationDetails, skills: $skills, availableForHire: $availableForHire, canWorkRemotely: $canWorkRemotely, preferences: $preferences, resourceKey: $resourceKey, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.shortBio, shortBio) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures) &&
            const DeepCollectionEquality().equals(other._websites, _websites) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.locationDetails, locationDetails) ||
                other.locationDetails == locationDetails) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.availableForHire, availableForHire) ||
                other.availableForHire == availableForHire) &&
            (identical(other.canWorkRemotely, canWorkRemotely) ||
                other.canWorkRemotely == canWorkRemotely) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.resourceKey, resourceKey) ||
                other.resourceKey == resourceKey) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uri,
        name,
        link,
        capabilities,
        location,
        gender,
        const DeepCollectionEquality().hash(bio),
        const DeepCollectionEquality().hash(shortBio),
        createdTime,
        pictures,
        const DeepCollectionEquality().hash(_websites),
        metadata,
        locationDetails,
        const DeepCollectionEquality().hash(_skills),
        availableForHire,
        canWorkRemotely,
        preferences,
        resourceKey,
        account
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "uri") final String? uri,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "link") final String? link,
      @JsonKey(name: "capabilities") final Capabilities? capabilities,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "gender") final String? gender,
      @JsonKey(name: "bio") final dynamic bio,
      @JsonKey(name: "short_bio") final dynamic shortBio,
      @JsonKey(name: "created_time") final DateTime? createdTime,
      @JsonKey(name: "pictures") final Pictures? pictures,
      @JsonKey(name: "websites") final List<dynamic>? websites,
      @JsonKey(name: "metadata") final UserMetadata? metadata,
      @JsonKey(name: "location_details") final LocationDetails? locationDetails,
      @JsonKey(name: "skills") final List<dynamic>? skills,
      @JsonKey(name: "available_for_hire") final bool? availableForHire,
      @JsonKey(name: "can_work_remotely") final bool? canWorkRemotely,
      @JsonKey(name: "preferences") final Preferences? preferences,
      @JsonKey(name: "resource_key") final String? resourceKey,
      @JsonKey(name: "account") final String? account}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "uri")
  String? get uri;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "link")
  String? get link;
  @override
  @JsonKey(name: "capabilities")
  Capabilities? get capabilities;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "bio")
  dynamic get bio;
  @override
  @JsonKey(name: "short_bio")
  dynamic get shortBio;
  @override
  @JsonKey(name: "created_time")
  DateTime? get createdTime;
  @override
  @JsonKey(name: "pictures")
  Pictures? get pictures;
  @override
  @JsonKey(name: "websites")
  List<dynamic>? get websites;
  @override
  @JsonKey(name: "metadata")
  UserMetadata? get metadata;
  @override
  @JsonKey(name: "location_details")
  LocationDetails? get locationDetails;
  @override
  @JsonKey(name: "skills")
  List<dynamic>? get skills;
  @override
  @JsonKey(name: "available_for_hire")
  bool? get availableForHire;
  @override
  @JsonKey(name: "can_work_remotely")
  bool? get canWorkRemotely;
  @override
  @JsonKey(name: "preferences")
  Preferences? get preferences;
  @override
  @JsonKey(name: "resource_key")
  String? get resourceKey;
  @override
  @JsonKey(name: "account")
  String? get account;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Capabilities _$CapabilitiesFromJson(Map<String, dynamic> json) {
  return _Capabilities.fromJson(json);
}

/// @nodoc
mixin _$Capabilities {
  @JsonKey(name: "hasLiveSubscription")
  bool? get hasLiveSubscription => throw _privateConstructorUsedError;
  @JsonKey(name: "hasEnterpriseLihp")
  bool? get hasEnterpriseLihp => throw _privateConstructorUsedError;
  @JsonKey(name: "hasSvvTimecodedComments")
  bool? get hasSvvTimecodedComments => throw _privateConstructorUsedError;
  @JsonKey(name: "hasSimplifiedEnterpriseAccount")
  bool? get hasSimplifiedEnterpriseAccount =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilitiesCopyWith<Capabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilitiesCopyWith<$Res> {
  factory $CapabilitiesCopyWith(
          Capabilities value, $Res Function(Capabilities) then) =
      _$CapabilitiesCopyWithImpl<$Res, Capabilities>;
  @useResult
  $Res call(
      {@JsonKey(name: "hasLiveSubscription") bool? hasLiveSubscription,
      @JsonKey(name: "hasEnterpriseLihp") bool? hasEnterpriseLihp,
      @JsonKey(name: "hasSvvTimecodedComments") bool? hasSvvTimecodedComments,
      @JsonKey(name: "hasSimplifiedEnterpriseAccount")
      bool? hasSimplifiedEnterpriseAccount});
}

/// @nodoc
class _$CapabilitiesCopyWithImpl<$Res, $Val extends Capabilities>
    implements $CapabilitiesCopyWith<$Res> {
  _$CapabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasLiveSubscription = freezed,
    Object? hasEnterpriseLihp = freezed,
    Object? hasSvvTimecodedComments = freezed,
    Object? hasSimplifiedEnterpriseAccount = freezed,
  }) {
    return _then(_value.copyWith(
      hasLiveSubscription: freezed == hasLiveSubscription
          ? _value.hasLiveSubscription
          : hasLiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEnterpriseLihp: freezed == hasEnterpriseLihp
          ? _value.hasEnterpriseLihp
          : hasEnterpriseLihp // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSvvTimecodedComments: freezed == hasSvvTimecodedComments
          ? _value.hasSvvTimecodedComments
          : hasSvvTimecodedComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSimplifiedEnterpriseAccount: freezed == hasSimplifiedEnterpriseAccount
          ? _value.hasSimplifiedEnterpriseAccount
          : hasSimplifiedEnterpriseAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilitiesImplCopyWith<$Res>
    implements $CapabilitiesCopyWith<$Res> {
  factory _$$CapabilitiesImplCopyWith(
          _$CapabilitiesImpl value, $Res Function(_$CapabilitiesImpl) then) =
      __$$CapabilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "hasLiveSubscription") bool? hasLiveSubscription,
      @JsonKey(name: "hasEnterpriseLihp") bool? hasEnterpriseLihp,
      @JsonKey(name: "hasSvvTimecodedComments") bool? hasSvvTimecodedComments,
      @JsonKey(name: "hasSimplifiedEnterpriseAccount")
      bool? hasSimplifiedEnterpriseAccount});
}

/// @nodoc
class __$$CapabilitiesImplCopyWithImpl<$Res>
    extends _$CapabilitiesCopyWithImpl<$Res, _$CapabilitiesImpl>
    implements _$$CapabilitiesImplCopyWith<$Res> {
  __$$CapabilitiesImplCopyWithImpl(
      _$CapabilitiesImpl _value, $Res Function(_$CapabilitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasLiveSubscription = freezed,
    Object? hasEnterpriseLihp = freezed,
    Object? hasSvvTimecodedComments = freezed,
    Object? hasSimplifiedEnterpriseAccount = freezed,
  }) {
    return _then(_$CapabilitiesImpl(
      hasLiveSubscription: freezed == hasLiveSubscription
          ? _value.hasLiveSubscription
          : hasLiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEnterpriseLihp: freezed == hasEnterpriseLihp
          ? _value.hasEnterpriseLihp
          : hasEnterpriseLihp // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSvvTimecodedComments: freezed == hasSvvTimecodedComments
          ? _value.hasSvvTimecodedComments
          : hasSvvTimecodedComments // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSimplifiedEnterpriseAccount: freezed == hasSimplifiedEnterpriseAccount
          ? _value.hasSimplifiedEnterpriseAccount
          : hasSimplifiedEnterpriseAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilitiesImpl implements _Capabilities {
  const _$CapabilitiesImpl(
      {@JsonKey(name: "hasLiveSubscription") this.hasLiveSubscription,
      @JsonKey(name: "hasEnterpriseLihp") this.hasEnterpriseLihp,
      @JsonKey(name: "hasSvvTimecodedComments") this.hasSvvTimecodedComments,
      @JsonKey(name: "hasSimplifiedEnterpriseAccount")
      this.hasSimplifiedEnterpriseAccount});

  factory _$CapabilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CapabilitiesImplFromJson(json);

  @override
  @JsonKey(name: "hasLiveSubscription")
  final bool? hasLiveSubscription;
  @override
  @JsonKey(name: "hasEnterpriseLihp")
  final bool? hasEnterpriseLihp;
  @override
  @JsonKey(name: "hasSvvTimecodedComments")
  final bool? hasSvvTimecodedComments;
  @override
  @JsonKey(name: "hasSimplifiedEnterpriseAccount")
  final bool? hasSimplifiedEnterpriseAccount;

  @override
  String toString() {
    return 'Capabilities(hasLiveSubscription: $hasLiveSubscription, hasEnterpriseLihp: $hasEnterpriseLihp, hasSvvTimecodedComments: $hasSvvTimecodedComments, hasSimplifiedEnterpriseAccount: $hasSimplifiedEnterpriseAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilitiesImpl &&
            (identical(other.hasLiveSubscription, hasLiveSubscription) ||
                other.hasLiveSubscription == hasLiveSubscription) &&
            (identical(other.hasEnterpriseLihp, hasEnterpriseLihp) ||
                other.hasEnterpriseLihp == hasEnterpriseLihp) &&
            (identical(
                    other.hasSvvTimecodedComments, hasSvvTimecodedComments) ||
                other.hasSvvTimecodedComments == hasSvvTimecodedComments) &&
            (identical(other.hasSimplifiedEnterpriseAccount,
                    hasSimplifiedEnterpriseAccount) ||
                other.hasSimplifiedEnterpriseAccount ==
                    hasSimplifiedEnterpriseAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasLiveSubscription,
      hasEnterpriseLihp,
      hasSvvTimecodedComments,
      hasSimplifiedEnterpriseAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilitiesImplCopyWith<_$CapabilitiesImpl> get copyWith =>
      __$$CapabilitiesImplCopyWithImpl<_$CapabilitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilitiesImplToJson(
      this,
    );
  }
}

abstract class _Capabilities implements Capabilities {
  const factory _Capabilities(
      {@JsonKey(name: "hasLiveSubscription") final bool? hasLiveSubscription,
      @JsonKey(name: "hasEnterpriseLihp") final bool? hasEnterpriseLihp,
      @JsonKey(name: "hasSvvTimecodedComments")
      final bool? hasSvvTimecodedComments,
      @JsonKey(name: "hasSimplifiedEnterpriseAccount")
      final bool? hasSimplifiedEnterpriseAccount}) = _$CapabilitiesImpl;

  factory _Capabilities.fromJson(Map<String, dynamic> json) =
      _$CapabilitiesImpl.fromJson;

  @override
  @JsonKey(name: "hasLiveSubscription")
  bool? get hasLiveSubscription;
  @override
  @JsonKey(name: "hasEnterpriseLihp")
  bool? get hasEnterpriseLihp;
  @override
  @JsonKey(name: "hasSvvTimecodedComments")
  bool? get hasSvvTimecodedComments;
  @override
  @JsonKey(name: "hasSimplifiedEnterpriseAccount")
  bool? get hasSimplifiedEnterpriseAccount;
  @override
  @JsonKey(ignore: true)
  _$$CapabilitiesImplCopyWith<_$CapabilitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDetails _$LocationDetailsFromJson(Map<String, dynamic> json) {
  return _LocationDetails.fromJson(json);
}

/// @nodoc
mixin _$LocationDetails {
  @JsonKey(name: "formatted_address")
  String? get formattedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  dynamic get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  dynamic get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  dynamic get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  dynamic get state => throw _privateConstructorUsedError;
  @JsonKey(name: "neighborhood")
  dynamic get neighborhood => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_locality")
  dynamic get subLocality => throw _privateConstructorUsedError;
  @JsonKey(name: "state_iso_code")
  dynamic get stateIsoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  dynamic get country => throw _privateConstructorUsedError;
  @JsonKey(name: "country_iso_code")
  dynamic get countryIsoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDetailsCopyWith<LocationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsCopyWith<$Res> {
  factory $LocationDetailsCopyWith(
          LocationDetails value, $Res Function(LocationDetails) then) =
      _$LocationDetailsCopyWithImpl<$Res, LocationDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted_address") String? formattedAddress,
      @JsonKey(name: "latitude") dynamic latitude,
      @JsonKey(name: "longitude") dynamic longitude,
      @JsonKey(name: "city") dynamic city,
      @JsonKey(name: "state") dynamic state,
      @JsonKey(name: "neighborhood") dynamic neighborhood,
      @JsonKey(name: "sub_locality") dynamic subLocality,
      @JsonKey(name: "state_iso_code") dynamic stateIsoCode,
      @JsonKey(name: "country") dynamic country,
      @JsonKey(name: "country_iso_code") dynamic countryIsoCode});
}

/// @nodoc
class _$LocationDetailsCopyWithImpl<$Res, $Val extends LocationDetails>
    implements $LocationDetailsCopyWith<$Res> {
  _$LocationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? neighborhood = freezed,
    Object? subLocality = freezed,
    Object? stateIsoCode = freezed,
    Object? country = freezed,
    Object? countryIsoCode = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subLocality: freezed == subLocality
          ? _value.subLocality
          : subLocality // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateIsoCode: freezed == stateIsoCode
          ? _value.stateIsoCode
          : stateIsoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDetailsImplCopyWith<$Res>
    implements $LocationDetailsCopyWith<$Res> {
  factory _$$LocationDetailsImplCopyWith(_$LocationDetailsImpl value,
          $Res Function(_$LocationDetailsImpl) then) =
      __$$LocationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted_address") String? formattedAddress,
      @JsonKey(name: "latitude") dynamic latitude,
      @JsonKey(name: "longitude") dynamic longitude,
      @JsonKey(name: "city") dynamic city,
      @JsonKey(name: "state") dynamic state,
      @JsonKey(name: "neighborhood") dynamic neighborhood,
      @JsonKey(name: "sub_locality") dynamic subLocality,
      @JsonKey(name: "state_iso_code") dynamic stateIsoCode,
      @JsonKey(name: "country") dynamic country,
      @JsonKey(name: "country_iso_code") dynamic countryIsoCode});
}

/// @nodoc
class __$$LocationDetailsImplCopyWithImpl<$Res>
    extends _$LocationDetailsCopyWithImpl<$Res, _$LocationDetailsImpl>
    implements _$$LocationDetailsImplCopyWith<$Res> {
  __$$LocationDetailsImplCopyWithImpl(
      _$LocationDetailsImpl _value, $Res Function(_$LocationDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? neighborhood = freezed,
    Object? subLocality = freezed,
    Object? stateIsoCode = freezed,
    Object? country = freezed,
    Object? countryIsoCode = freezed,
  }) {
    return _then(_$LocationDetailsImpl(
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subLocality: freezed == subLocality
          ? _value.subLocality
          : subLocality // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateIsoCode: freezed == stateIsoCode
          ? _value.stateIsoCode
          : stateIsoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDetailsImpl implements _LocationDetails {
  const _$LocationDetailsImpl(
      {@JsonKey(name: "formatted_address") this.formattedAddress,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "neighborhood") this.neighborhood,
      @JsonKey(name: "sub_locality") this.subLocality,
      @JsonKey(name: "state_iso_code") this.stateIsoCode,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "country_iso_code") this.countryIsoCode});

  factory _$LocationDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDetailsImplFromJson(json);

  @override
  @JsonKey(name: "formatted_address")
  final String? formattedAddress;
  @override
  @JsonKey(name: "latitude")
  final dynamic latitude;
  @override
  @JsonKey(name: "longitude")
  final dynamic longitude;
  @override
  @JsonKey(name: "city")
  final dynamic city;
  @override
  @JsonKey(name: "state")
  final dynamic state;
  @override
  @JsonKey(name: "neighborhood")
  final dynamic neighborhood;
  @override
  @JsonKey(name: "sub_locality")
  final dynamic subLocality;
  @override
  @JsonKey(name: "state_iso_code")
  final dynamic stateIsoCode;
  @override
  @JsonKey(name: "country")
  final dynamic country;
  @override
  @JsonKey(name: "country_iso_code")
  final dynamic countryIsoCode;

  @override
  String toString() {
    return 'LocationDetails(formattedAddress: $formattedAddress, latitude: $latitude, longitude: $longitude, city: $city, state: $state, neighborhood: $neighborhood, subLocality: $subLocality, stateIsoCode: $stateIsoCode, country: $country, countryIsoCode: $countryIsoCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailsImpl &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.neighborhood, neighborhood) &&
            const DeepCollectionEquality()
                .equals(other.subLocality, subLocality) &&
            const DeepCollectionEquality()
                .equals(other.stateIsoCode, stateIsoCode) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.countryIsoCode, countryIsoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formattedAddress,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(neighborhood),
      const DeepCollectionEquality().hash(subLocality),
      const DeepCollectionEquality().hash(stateIsoCode),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(countryIsoCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailsImplCopyWith<_$LocationDetailsImpl> get copyWith =>
      __$$LocationDetailsImplCopyWithImpl<_$LocationDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailsImplToJson(
      this,
    );
  }
}

abstract class _LocationDetails implements LocationDetails {
  const factory _LocationDetails(
          {@JsonKey(name: "formatted_address") final String? formattedAddress,
          @JsonKey(name: "latitude") final dynamic latitude,
          @JsonKey(name: "longitude") final dynamic longitude,
          @JsonKey(name: "city") final dynamic city,
          @JsonKey(name: "state") final dynamic state,
          @JsonKey(name: "neighborhood") final dynamic neighborhood,
          @JsonKey(name: "sub_locality") final dynamic subLocality,
          @JsonKey(name: "state_iso_code") final dynamic stateIsoCode,
          @JsonKey(name: "country") final dynamic country,
          @JsonKey(name: "country_iso_code") final dynamic countryIsoCode}) =
      _$LocationDetailsImpl;

  factory _LocationDetails.fromJson(Map<String, dynamic> json) =
      _$LocationDetailsImpl.fromJson;

  @override
  @JsonKey(name: "formatted_address")
  String? get formattedAddress;
  @override
  @JsonKey(name: "latitude")
  dynamic get latitude;
  @override
  @JsonKey(name: "longitude")
  dynamic get longitude;
  @override
  @JsonKey(name: "city")
  dynamic get city;
  @override
  @JsonKey(name: "state")
  dynamic get state;
  @override
  @JsonKey(name: "neighborhood")
  dynamic get neighborhood;
  @override
  @JsonKey(name: "sub_locality")
  dynamic get subLocality;
  @override
  @JsonKey(name: "state_iso_code")
  dynamic get stateIsoCode;
  @override
  @JsonKey(name: "country")
  dynamic get country;
  @override
  @JsonKey(name: "country_iso_code")
  dynamic get countryIsoCode;
  @override
  @JsonKey(ignore: true)
  _$$LocationDetailsImplCopyWith<_$LocationDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMetadata _$UserMetadataFromJson(Map<String, dynamic> json) {
  return _UserMetadata.fromJson(json);
}

/// @nodoc
mixin _$UserMetadata {
  @JsonKey(name: "connections")
  FluffyConnections? get connections => throw _privateConstructorUsedError;
  @JsonKey(name: "interactions")
  FluffyInteractions? get interactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMetadataCopyWith<UserMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetadataCopyWith<$Res> {
  factory $UserMetadataCopyWith(
          UserMetadata value, $Res Function(UserMetadata) then) =
      _$UserMetadataCopyWithImpl<$Res, UserMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "connections") FluffyConnections? connections,
      @JsonKey(name: "interactions") FluffyInteractions? interactions});

  $FluffyConnectionsCopyWith<$Res>? get connections;
  $FluffyInteractionsCopyWith<$Res>? get interactions;
}

/// @nodoc
class _$UserMetadataCopyWithImpl<$Res, $Val extends UserMetadata>
    implements $UserMetadataCopyWith<$Res> {
  _$UserMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = freezed,
    Object? interactions = freezed,
  }) {
    return _then(_value.copyWith(
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as FluffyConnections?,
      interactions: freezed == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as FluffyInteractions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FluffyConnectionsCopyWith<$Res>? get connections {
    if (_value.connections == null) {
      return null;
    }

    return $FluffyConnectionsCopyWith<$Res>(_value.connections!, (value) {
      return _then(_value.copyWith(connections: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FluffyInteractionsCopyWith<$Res>? get interactions {
    if (_value.interactions == null) {
      return null;
    }

    return $FluffyInteractionsCopyWith<$Res>(_value.interactions!, (value) {
      return _then(_value.copyWith(interactions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserMetadataImplCopyWith<$Res>
    implements $UserMetadataCopyWith<$Res> {
  factory _$$UserMetadataImplCopyWith(
          _$UserMetadataImpl value, $Res Function(_$UserMetadataImpl) then) =
      __$$UserMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "connections") FluffyConnections? connections,
      @JsonKey(name: "interactions") FluffyInteractions? interactions});

  @override
  $FluffyConnectionsCopyWith<$Res>? get connections;
  @override
  $FluffyInteractionsCopyWith<$Res>? get interactions;
}

/// @nodoc
class __$$UserMetadataImplCopyWithImpl<$Res>
    extends _$UserMetadataCopyWithImpl<$Res, _$UserMetadataImpl>
    implements _$$UserMetadataImplCopyWith<$Res> {
  __$$UserMetadataImplCopyWithImpl(
      _$UserMetadataImpl _value, $Res Function(_$UserMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connections = freezed,
    Object? interactions = freezed,
  }) {
    return _then(_$UserMetadataImpl(
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as FluffyConnections?,
      interactions: freezed == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as FluffyInteractions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMetadataImpl implements _UserMetadata {
  const _$UserMetadataImpl(
      {@JsonKey(name: "connections") this.connections,
      @JsonKey(name: "interactions") this.interactions});

  factory _$UserMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMetadataImplFromJson(json);

  @override
  @JsonKey(name: "connections")
  final FluffyConnections? connections;
  @override
  @JsonKey(name: "interactions")
  final FluffyInteractions? interactions;

  @override
  String toString() {
    return 'UserMetadata(connections: $connections, interactions: $interactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMetadataImpl &&
            (identical(other.connections, connections) ||
                other.connections == connections) &&
            (identical(other.interactions, interactions) ||
                other.interactions == interactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, connections, interactions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      __$$UserMetadataImplCopyWithImpl<_$UserMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMetadataImplToJson(
      this,
    );
  }
}

abstract class _UserMetadata implements UserMetadata {
  const factory _UserMetadata(
      {@JsonKey(name: "connections") final FluffyConnections? connections,
      @JsonKey(name: "interactions")
      final FluffyInteractions? interactions}) = _$UserMetadataImpl;

  factory _UserMetadata.fromJson(Map<String, dynamic> json) =
      _$UserMetadataImpl.fromJson;

  @override
  @JsonKey(name: "connections")
  FluffyConnections? get connections;
  @override
  @JsonKey(name: "interactions")
  FluffyInteractions? get interactions;
  @override
  @JsonKey(ignore: true)
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FluffyConnections _$FluffyConnectionsFromJson(Map<String, dynamic> json) {
  return _FluffyConnections.fromJson(json);
}

/// @nodoc
mixin _$FluffyConnections {
  @JsonKey(name: "albums")
  Albums? get albums => throw _privateConstructorUsedError;
  @JsonKey(name: "appearances")
  Albums? get appearances => throw _privateConstructorUsedError;
  @JsonKey(name: "channels")
  Albums? get channels => throw _privateConstructorUsedError;
  @JsonKey(name: "feed")
  Recommendations? get feed => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  Albums? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "following")
  Albums? get following => throw _privateConstructorUsedError;
  @JsonKey(name: "groups")
  Albums? get groups => throw _privateConstructorUsedError;
  @JsonKey(name: "likes")
  Albums? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "membership")
  Recommendations? get membership => throw _privateConstructorUsedError;
  @JsonKey(name: "moderated_channels")
  Albums? get moderatedChannels => throw _privateConstructorUsedError;
  @JsonKey(name: "portfolios")
  Albums? get portfolios => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  Albums? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "shared")
  Albums? get shared => throw _privateConstructorUsedError;
  @JsonKey(name: "pictures")
  Albums? get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "folders_root")
  Recommendations? get foldersRoot => throw _privateConstructorUsedError;
  @JsonKey(name: "folders")
  Albums? get folders => throw _privateConstructorUsedError;
  @JsonKey(name: "teams")
  Albums? get teams => throw _privateConstructorUsedError;
  @JsonKey(name: "permission_policies")
  Albums? get permissionPolicies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FluffyConnectionsCopyWith<FluffyConnections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FluffyConnectionsCopyWith<$Res> {
  factory $FluffyConnectionsCopyWith(
          FluffyConnections value, $Res Function(FluffyConnections) then) =
      _$FluffyConnectionsCopyWithImpl<$Res, FluffyConnections>;
  @useResult
  $Res call(
      {@JsonKey(name: "albums") Albums? albums,
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
      @JsonKey(name: "permission_policies") Albums? permissionPolicies});

  $AlbumsCopyWith<$Res>? get albums;
  $AlbumsCopyWith<$Res>? get appearances;
  $AlbumsCopyWith<$Res>? get channels;
  $RecommendationsCopyWith<$Res>? get feed;
  $AlbumsCopyWith<$Res>? get followers;
  $AlbumsCopyWith<$Res>? get following;
  $AlbumsCopyWith<$Res>? get groups;
  $AlbumsCopyWith<$Res>? get likes;
  $RecommendationsCopyWith<$Res>? get membership;
  $AlbumsCopyWith<$Res>? get moderatedChannels;
  $AlbumsCopyWith<$Res>? get portfolios;
  $AlbumsCopyWith<$Res>? get videos;
  $AlbumsCopyWith<$Res>? get shared;
  $AlbumsCopyWith<$Res>? get pictures;
  $RecommendationsCopyWith<$Res>? get foldersRoot;
  $AlbumsCopyWith<$Res>? get folders;
  $AlbumsCopyWith<$Res>? get teams;
  $AlbumsCopyWith<$Res>? get permissionPolicies;
}

/// @nodoc
class _$FluffyConnectionsCopyWithImpl<$Res, $Val extends FluffyConnections>
    implements $FluffyConnectionsCopyWith<$Res> {
  _$FluffyConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
    Object? appearances = freezed,
    Object? channels = freezed,
    Object? feed = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? groups = freezed,
    Object? likes = freezed,
    Object? membership = freezed,
    Object? moderatedChannels = freezed,
    Object? portfolios = freezed,
    Object? videos = freezed,
    Object? shared = freezed,
    Object? pictures = freezed,
    Object? foldersRoot = freezed,
    Object? folders = freezed,
    Object? teams = freezed,
    Object? permissionPolicies = freezed,
  }) {
    return _then(_value.copyWith(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      appearances: freezed == appearances
          ? _value.appearances
          : appearances // ignore: cast_nullable_to_non_nullable
              as Albums?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Albums?,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Albums?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as Albums?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Albums?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Albums?,
      membership: freezed == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      moderatedChannels: freezed == moderatedChannels
          ? _value.moderatedChannels
          : moderatedChannels // ignore: cast_nullable_to_non_nullable
              as Albums?,
      portfolios: freezed == portfolios
          ? _value.portfolios
          : portfolios // ignore: cast_nullable_to_non_nullable
              as Albums?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Albums?,
      shared: freezed == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as Albums?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Albums?,
      foldersRoot: freezed == foldersRoot
          ? _value.foldersRoot
          : foldersRoot // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as Albums?,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Albums?,
      permissionPolicies: freezed == permissionPolicies
          ? _value.permissionPolicies
          : permissionPolicies // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get albums {
    if (_value.albums == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.albums!, (value) {
      return _then(_value.copyWith(albums: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get appearances {
    if (_value.appearances == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.appearances!, (value) {
      return _then(_value.copyWith(appearances: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get channels {
    if (_value.channels == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.channels!, (value) {
      return _then(_value.copyWith(channels: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get following {
    if (_value.following == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.following!, (value) {
      return _then(_value.copyWith(following: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get groups {
    if (_value.groups == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.groups!, (value) {
      return _then(_value.copyWith(groups: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get likes {
    if (_value.likes == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.likes!, (value) {
      return _then(_value.copyWith(likes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get membership {
    if (_value.membership == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.membership!, (value) {
      return _then(_value.copyWith(membership: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get moderatedChannels {
    if (_value.moderatedChannels == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.moderatedChannels!, (value) {
      return _then(_value.copyWith(moderatedChannels: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get portfolios {
    if (_value.portfolios == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.portfolios!, (value) {
      return _then(_value.copyWith(portfolios: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get shared {
    if (_value.shared == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.shared!, (value) {
      return _then(_value.copyWith(shared: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get pictures {
    if (_value.pictures == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.pictures!, (value) {
      return _then(_value.copyWith(pictures: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendationsCopyWith<$Res>? get foldersRoot {
    if (_value.foldersRoot == null) {
      return null;
    }

    return $RecommendationsCopyWith<$Res>(_value.foldersRoot!, (value) {
      return _then(_value.copyWith(foldersRoot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get folders {
    if (_value.folders == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.folders!, (value) {
      return _then(_value.copyWith(folders: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get teams {
    if (_value.teams == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.teams!, (value) {
      return _then(_value.copyWith(teams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get permissionPolicies {
    if (_value.permissionPolicies == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.permissionPolicies!, (value) {
      return _then(_value.copyWith(permissionPolicies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FluffyConnectionsImplCopyWith<$Res>
    implements $FluffyConnectionsCopyWith<$Res> {
  factory _$$FluffyConnectionsImplCopyWith(_$FluffyConnectionsImpl value,
          $Res Function(_$FluffyConnectionsImpl) then) =
      __$$FluffyConnectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "albums") Albums? albums,
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
      @JsonKey(name: "permission_policies") Albums? permissionPolicies});

  @override
  $AlbumsCopyWith<$Res>? get albums;
  @override
  $AlbumsCopyWith<$Res>? get appearances;
  @override
  $AlbumsCopyWith<$Res>? get channels;
  @override
  $RecommendationsCopyWith<$Res>? get feed;
  @override
  $AlbumsCopyWith<$Res>? get followers;
  @override
  $AlbumsCopyWith<$Res>? get following;
  @override
  $AlbumsCopyWith<$Res>? get groups;
  @override
  $AlbumsCopyWith<$Res>? get likes;
  @override
  $RecommendationsCopyWith<$Res>? get membership;
  @override
  $AlbumsCopyWith<$Res>? get moderatedChannels;
  @override
  $AlbumsCopyWith<$Res>? get portfolios;
  @override
  $AlbumsCopyWith<$Res>? get videos;
  @override
  $AlbumsCopyWith<$Res>? get shared;
  @override
  $AlbumsCopyWith<$Res>? get pictures;
  @override
  $RecommendationsCopyWith<$Res>? get foldersRoot;
  @override
  $AlbumsCopyWith<$Res>? get folders;
  @override
  $AlbumsCopyWith<$Res>? get teams;
  @override
  $AlbumsCopyWith<$Res>? get permissionPolicies;
}

/// @nodoc
class __$$FluffyConnectionsImplCopyWithImpl<$Res>
    extends _$FluffyConnectionsCopyWithImpl<$Res, _$FluffyConnectionsImpl>
    implements _$$FluffyConnectionsImplCopyWith<$Res> {
  __$$FluffyConnectionsImplCopyWithImpl(_$FluffyConnectionsImpl _value,
      $Res Function(_$FluffyConnectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
    Object? appearances = freezed,
    Object? channels = freezed,
    Object? feed = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? groups = freezed,
    Object? likes = freezed,
    Object? membership = freezed,
    Object? moderatedChannels = freezed,
    Object? portfolios = freezed,
    Object? videos = freezed,
    Object? shared = freezed,
    Object? pictures = freezed,
    Object? foldersRoot = freezed,
    Object? folders = freezed,
    Object? teams = freezed,
    Object? permissionPolicies = freezed,
  }) {
    return _then(_$FluffyConnectionsImpl(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      appearances: freezed == appearances
          ? _value.appearances
          : appearances // ignore: cast_nullable_to_non_nullable
              as Albums?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Albums?,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Albums?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as Albums?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Albums?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Albums?,
      membership: freezed == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      moderatedChannels: freezed == moderatedChannels
          ? _value.moderatedChannels
          : moderatedChannels // ignore: cast_nullable_to_non_nullable
              as Albums?,
      portfolios: freezed == portfolios
          ? _value.portfolios
          : portfolios // ignore: cast_nullable_to_non_nullable
              as Albums?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Albums?,
      shared: freezed == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as Albums?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as Albums?,
      foldersRoot: freezed == foldersRoot
          ? _value.foldersRoot
          : foldersRoot // ignore: cast_nullable_to_non_nullable
              as Recommendations?,
      folders: freezed == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as Albums?,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Albums?,
      permissionPolicies: freezed == permissionPolicies
          ? _value.permissionPolicies
          : permissionPolicies // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FluffyConnectionsImpl implements _FluffyConnections {
  const _$FluffyConnectionsImpl(
      {@JsonKey(name: "albums") this.albums,
      @JsonKey(name: "appearances") this.appearances,
      @JsonKey(name: "channels") this.channels,
      @JsonKey(name: "feed") this.feed,
      @JsonKey(name: "followers") this.followers,
      @JsonKey(name: "following") this.following,
      @JsonKey(name: "groups") this.groups,
      @JsonKey(name: "likes") this.likes,
      @JsonKey(name: "membership") this.membership,
      @JsonKey(name: "moderated_channels") this.moderatedChannels,
      @JsonKey(name: "portfolios") this.portfolios,
      @JsonKey(name: "videos") this.videos,
      @JsonKey(name: "shared") this.shared,
      @JsonKey(name: "pictures") this.pictures,
      @JsonKey(name: "folders_root") this.foldersRoot,
      @JsonKey(name: "folders") this.folders,
      @JsonKey(name: "teams") this.teams,
      @JsonKey(name: "permission_policies") this.permissionPolicies});

  factory _$FluffyConnectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FluffyConnectionsImplFromJson(json);

  @override
  @JsonKey(name: "albums")
  final Albums? albums;
  @override
  @JsonKey(name: "appearances")
  final Albums? appearances;
  @override
  @JsonKey(name: "channels")
  final Albums? channels;
  @override
  @JsonKey(name: "feed")
  final Recommendations? feed;
  @override
  @JsonKey(name: "followers")
  final Albums? followers;
  @override
  @JsonKey(name: "following")
  final Albums? following;
  @override
  @JsonKey(name: "groups")
  final Albums? groups;
  @override
  @JsonKey(name: "likes")
  final Albums? likes;
  @override
  @JsonKey(name: "membership")
  final Recommendations? membership;
  @override
  @JsonKey(name: "moderated_channels")
  final Albums? moderatedChannels;
  @override
  @JsonKey(name: "portfolios")
  final Albums? portfolios;
  @override
  @JsonKey(name: "videos")
  final Albums? videos;
  @override
  @JsonKey(name: "shared")
  final Albums? shared;
  @override
  @JsonKey(name: "pictures")
  final Albums? pictures;
  @override
  @JsonKey(name: "folders_root")
  final Recommendations? foldersRoot;
  @override
  @JsonKey(name: "folders")
  final Albums? folders;
  @override
  @JsonKey(name: "teams")
  final Albums? teams;
  @override
  @JsonKey(name: "permission_policies")
  final Albums? permissionPolicies;

  @override
  String toString() {
    return 'FluffyConnections(albums: $albums, appearances: $appearances, channels: $channels, feed: $feed, followers: $followers, following: $following, groups: $groups, likes: $likes, membership: $membership, moderatedChannels: $moderatedChannels, portfolios: $portfolios, videos: $videos, shared: $shared, pictures: $pictures, foldersRoot: $foldersRoot, folders: $folders, teams: $teams, permissionPolicies: $permissionPolicies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FluffyConnectionsImpl &&
            (identical(other.albums, albums) || other.albums == albums) &&
            (identical(other.appearances, appearances) ||
                other.appearances == appearances) &&
            (identical(other.channels, channels) ||
                other.channels == channels) &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.groups, groups) || other.groups == groups) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.membership, membership) ||
                other.membership == membership) &&
            (identical(other.moderatedChannels, moderatedChannels) ||
                other.moderatedChannels == moderatedChannels) &&
            (identical(other.portfolios, portfolios) ||
                other.portfolios == portfolios) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.shared, shared) || other.shared == shared) &&
            (identical(other.pictures, pictures) ||
                other.pictures == pictures) &&
            (identical(other.foldersRoot, foldersRoot) ||
                other.foldersRoot == foldersRoot) &&
            (identical(other.folders, folders) || other.folders == folders) &&
            (identical(other.teams, teams) || other.teams == teams) &&
            (identical(other.permissionPolicies, permissionPolicies) ||
                other.permissionPolicies == permissionPolicies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albums,
      appearances,
      channels,
      feed,
      followers,
      following,
      groups,
      likes,
      membership,
      moderatedChannels,
      portfolios,
      videos,
      shared,
      pictures,
      foldersRoot,
      folders,
      teams,
      permissionPolicies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FluffyConnectionsImplCopyWith<_$FluffyConnectionsImpl> get copyWith =>
      __$$FluffyConnectionsImplCopyWithImpl<_$FluffyConnectionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FluffyConnectionsImplToJson(
      this,
    );
  }
}

abstract class _FluffyConnections implements FluffyConnections {
  const factory _FluffyConnections(
      {@JsonKey(name: "albums") final Albums? albums,
      @JsonKey(name: "appearances") final Albums? appearances,
      @JsonKey(name: "channels") final Albums? channels,
      @JsonKey(name: "feed") final Recommendations? feed,
      @JsonKey(name: "followers") final Albums? followers,
      @JsonKey(name: "following") final Albums? following,
      @JsonKey(name: "groups") final Albums? groups,
      @JsonKey(name: "likes") final Albums? likes,
      @JsonKey(name: "membership") final Recommendations? membership,
      @JsonKey(name: "moderated_channels") final Albums? moderatedChannels,
      @JsonKey(name: "portfolios") final Albums? portfolios,
      @JsonKey(name: "videos") final Albums? videos,
      @JsonKey(name: "shared") final Albums? shared,
      @JsonKey(name: "pictures") final Albums? pictures,
      @JsonKey(name: "folders_root") final Recommendations? foldersRoot,
      @JsonKey(name: "folders") final Albums? folders,
      @JsonKey(name: "teams") final Albums? teams,
      @JsonKey(name: "permission_policies")
      final Albums? permissionPolicies}) = _$FluffyConnectionsImpl;

  factory _FluffyConnections.fromJson(Map<String, dynamic> json) =
      _$FluffyConnectionsImpl.fromJson;

  @override
  @JsonKey(name: "albums")
  Albums? get albums;
  @override
  @JsonKey(name: "appearances")
  Albums? get appearances;
  @override
  @JsonKey(name: "channels")
  Albums? get channels;
  @override
  @JsonKey(name: "feed")
  Recommendations? get feed;
  @override
  @JsonKey(name: "followers")
  Albums? get followers;
  @override
  @JsonKey(name: "following")
  Albums? get following;
  @override
  @JsonKey(name: "groups")
  Albums? get groups;
  @override
  @JsonKey(name: "likes")
  Albums? get likes;
  @override
  @JsonKey(name: "membership")
  Recommendations? get membership;
  @override
  @JsonKey(name: "moderated_channels")
  Albums? get moderatedChannels;
  @override
  @JsonKey(name: "portfolios")
  Albums? get portfolios;
  @override
  @JsonKey(name: "videos")
  Albums? get videos;
  @override
  @JsonKey(name: "shared")
  Albums? get shared;
  @override
  @JsonKey(name: "pictures")
  Albums? get pictures;
  @override
  @JsonKey(name: "folders_root")
  Recommendations? get foldersRoot;
  @override
  @JsonKey(name: "folders")
  Albums? get folders;
  @override
  @JsonKey(name: "teams")
  Albums? get teams;
  @override
  @JsonKey(name: "permission_policies")
  Albums? get permissionPolicies;
  @override
  @JsonKey(ignore: true)
  _$$FluffyConnectionsImplCopyWith<_$FluffyConnectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FluffyInteractions _$FluffyInteractionsFromJson(Map<String, dynamic> json) {
  return _FluffyInteractions.fromJson(json);
}

/// @nodoc
mixin _$FluffyInteractions {
  @JsonKey(name: "follow")
  Like? get follow => throw _privateConstructorUsedError;
  @JsonKey(name: "block")
  Like? get block => throw _privateConstructorUsedError;
  @JsonKey(name: "report")
  Report? get report => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FluffyInteractionsCopyWith<FluffyInteractions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FluffyInteractionsCopyWith<$Res> {
  factory $FluffyInteractionsCopyWith(
          FluffyInteractions value, $Res Function(FluffyInteractions) then) =
      _$FluffyInteractionsCopyWithImpl<$Res, FluffyInteractions>;
  @useResult
  $Res call(
      {@JsonKey(name: "follow") Like? follow,
      @JsonKey(name: "block") Like? block,
      @JsonKey(name: "report") Report? report});

  $LikeCopyWith<$Res>? get follow;
  $LikeCopyWith<$Res>? get block;
  $ReportCopyWith<$Res>? get report;
}

/// @nodoc
class _$FluffyInteractionsCopyWithImpl<$Res, $Val extends FluffyInteractions>
    implements $FluffyInteractionsCopyWith<$Res> {
  _$FluffyInteractionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? follow = freezed,
    Object? block = freezed,
    Object? report = freezed,
  }) {
    return _then(_value.copyWith(
      follow: freezed == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as Like?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as Like?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeCopyWith<$Res>? get follow {
    if (_value.follow == null) {
      return null;
    }

    return $LikeCopyWith<$Res>(_value.follow!, (value) {
      return _then(_value.copyWith(follow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeCopyWith<$Res>? get block {
    if (_value.block == null) {
      return null;
    }

    return $LikeCopyWith<$Res>(_value.block!, (value) {
      return _then(_value.copyWith(block: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FluffyInteractionsImplCopyWith<$Res>
    implements $FluffyInteractionsCopyWith<$Res> {
  factory _$$FluffyInteractionsImplCopyWith(_$FluffyInteractionsImpl value,
          $Res Function(_$FluffyInteractionsImpl) then) =
      __$$FluffyInteractionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "follow") Like? follow,
      @JsonKey(name: "block") Like? block,
      @JsonKey(name: "report") Report? report});

  @override
  $LikeCopyWith<$Res>? get follow;
  @override
  $LikeCopyWith<$Res>? get block;
  @override
  $ReportCopyWith<$Res>? get report;
}

/// @nodoc
class __$$FluffyInteractionsImplCopyWithImpl<$Res>
    extends _$FluffyInteractionsCopyWithImpl<$Res, _$FluffyInteractionsImpl>
    implements _$$FluffyInteractionsImplCopyWith<$Res> {
  __$$FluffyInteractionsImplCopyWithImpl(_$FluffyInteractionsImpl _value,
      $Res Function(_$FluffyInteractionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? follow = freezed,
    Object? block = freezed,
    Object? report = freezed,
  }) {
    return _then(_$FluffyInteractionsImpl(
      follow: freezed == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as Like?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as Like?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FluffyInteractionsImpl implements _FluffyInteractions {
  const _$FluffyInteractionsImpl(
      {@JsonKey(name: "follow") this.follow,
      @JsonKey(name: "block") this.block,
      @JsonKey(name: "report") this.report});

  factory _$FluffyInteractionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FluffyInteractionsImplFromJson(json);

  @override
  @JsonKey(name: "follow")
  final Like? follow;
  @override
  @JsonKey(name: "block")
  final Like? block;
  @override
  @JsonKey(name: "report")
  final Report? report;

  @override
  String toString() {
    return 'FluffyInteractions(follow: $follow, block: $block, report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FluffyInteractionsImpl &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.report, report) || other.report == report));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, follow, block, report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FluffyInteractionsImplCopyWith<_$FluffyInteractionsImpl> get copyWith =>
      __$$FluffyInteractionsImplCopyWithImpl<_$FluffyInteractionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FluffyInteractionsImplToJson(
      this,
    );
  }
}

abstract class _FluffyInteractions implements FluffyInteractions {
  const factory _FluffyInteractions(
          {@JsonKey(name: "follow") final Like? follow,
          @JsonKey(name: "block") final Like? block,
          @JsonKey(name: "report") final Report? report}) =
      _$FluffyInteractionsImpl;

  factory _FluffyInteractions.fromJson(Map<String, dynamic> json) =
      _$FluffyInteractionsImpl.fromJson;

  @override
  @JsonKey(name: "follow")
  Like? get follow;
  @override
  @JsonKey(name: "block")
  Like? get block;
  @override
  @JsonKey(name: "report")
  Report? get report;
  @override
  @JsonKey(ignore: true)
  _$$FluffyInteractionsImplCopyWith<_$FluffyInteractionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
mixin _$Preferences {
  @JsonKey(name: "videos")
  Videos? get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res, Preferences>;
  @useResult
  $Res call({@JsonKey(name: "videos") Videos? videos});

  $VideosCopyWith<$Res>? get videos;
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res, $Val extends Preferences>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_value.copyWith(
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $VideosCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreferencesImplCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$PreferencesImplCopyWith(
          _$PreferencesImpl value, $Res Function(_$PreferencesImpl) then) =
      __$$PreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "videos") Videos? videos});

  @override
  $VideosCopyWith<$Res>? get videos;
}

/// @nodoc
class __$$PreferencesImplCopyWithImpl<$Res>
    extends _$PreferencesCopyWithImpl<$Res, _$PreferencesImpl>
    implements _$$PreferencesImplCopyWith<$Res> {
  __$$PreferencesImplCopyWithImpl(
      _$PreferencesImpl _value, $Res Function(_$PreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_$PreferencesImpl(
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesImpl implements _Preferences {
  const _$PreferencesImpl({@JsonKey(name: "videos") this.videos});

  factory _$PreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesImplFromJson(json);

  @override
  @JsonKey(name: "videos")
  final Videos? videos;

  @override
  String toString() {
    return 'Preferences(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesImpl &&
            (identical(other.videos, videos) || other.videos == videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      __$$PreferencesImplCopyWithImpl<_$PreferencesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesImplToJson(
      this,
    );
  }
}

abstract class _Preferences implements Preferences {
  const factory _Preferences({@JsonKey(name: "videos") final Videos? videos}) =
      _$PreferencesImpl;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$PreferencesImpl.fromJson;

  @override
  @JsonKey(name: "videos")
  Videos? get videos;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  @JsonKey(name: "rating")
  List<String>? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  Privacy? get privacy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") List<String>? rating,
      @JsonKey(name: "privacy") Privacy? privacy});

  $PrivacyCopyWith<$Res>? get privacy;
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivacyCopyWith<$Res>? get privacy {
    if (_value.privacy == null) {
      return null;
    }

    return $PrivacyCopyWith<$Res>(_value.privacy!, (value) {
      return _then(_value.copyWith(privacy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideosImplCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$VideosImplCopyWith(
          _$VideosImpl value, $Res Function(_$VideosImpl) then) =
      __$$VideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") List<String>? rating,
      @JsonKey(name: "privacy") Privacy? privacy});

  @override
  $PrivacyCopyWith<$Res>? get privacy;
}

/// @nodoc
class __$$VideosImplCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$VideosImpl>
    implements _$$VideosImplCopyWith<$Res> {
  __$$VideosImplCopyWithImpl(
      _$VideosImpl _value, $Res Function(_$VideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_$VideosImpl(
      rating: freezed == rating
          ? _value._rating
          : rating // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as Privacy?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosImpl implements _Videos {
  const _$VideosImpl(
      {@JsonKey(name: "rating") final List<String>? rating,
      @JsonKey(name: "privacy") this.privacy})
      : _rating = rating;

  factory _$VideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosImplFromJson(json);

  final List<String>? _rating;
  @override
  @JsonKey(name: "rating")
  List<String>? get rating {
    final value = _rating;
    if (value == null) return null;
    if (_rating is EqualUnmodifiableListView) return _rating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "privacy")
  final Privacy? privacy;

  @override
  String toString() {
    return 'Videos(rating: $rating, privacy: $privacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosImpl &&
            const DeepCollectionEquality().equals(other._rating, _rating) &&
            (identical(other.privacy, privacy) || other.privacy == privacy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rating), privacy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      __$$VideosImplCopyWithImpl<_$VideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosImplToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos(
      {@JsonKey(name: "rating") final List<String>? rating,
      @JsonKey(name: "privacy") final Privacy? privacy}) = _$VideosImpl;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$VideosImpl.fromJson;

  @override
  @JsonKey(name: "rating")
  List<String>? get rating;
  @override
  @JsonKey(name: "privacy")
  Privacy? get privacy;
  @override
  @JsonKey(ignore: true)
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
