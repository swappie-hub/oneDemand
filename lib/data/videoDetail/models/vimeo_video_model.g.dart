// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vimeo_video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VimeoVideoResponseImpl _$$VimeoVideoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VimeoVideoResponseImpl(
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      link: json['link'] as String?,
      playerEmbedUrl: json['player_embed_url'] as String?,
      duration: json['duration'] as int?,
      width: json['width'] as int?,
      language: json['language'] as String?,
      height: json['height'] as int?,
      embed: json['embed'] == null
          ? null
          : Embed.fromJson(json['embed'] as Map<String, dynamic>),
      createdTime: json['created_time'] == null
          ? null
          : DateTime.parse(json['created_time'] as String),
      modifiedTime: json['modified_time'] == null
          ? null
          : DateTime.parse(json['modified_time'] as String),
      releaseTime: json['release_time'] == null
          ? null
          : DateTime.parse(json['release_time'] as String),
      contentRating: (json['content_rating'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contentRatingClass: json['content_rating_class'] as String?,
      ratingModLocked: json['rating_mod_locked'] as bool?,
      license: json['license'],
      privacy: json['privacy'] == null
          ? null
          : Privacy.fromJson(json['privacy'] as Map<String, dynamic>),
      pictures: json['pictures'] == null
          ? null
          : Pictures.fromJson(json['pictures'] as Map<String, dynamic>),
      tags: json['tags'] as List<dynamic>?,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      categories: json['categories'] as List<dynamic>?,
      uploader: json['uploader'] == null
          ? null
          : Uploader.fromJson(json['uploader'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : VimeoVideoResponseMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
      manageLink: json['manage_link'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      lastUserActionEventDate: json['last_user_action_event_date'] == null
          ? null
          : DateTime.parse(json['last_user_action_event_date'] as String),
      parentFolder: json['parent_folder'],
      reviewPage: json['review_page'] == null
          ? null
          : ReviewPage.fromJson(json['review_page'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => Download.fromJson(e as Map<String, dynamic>))
          .toList(),
      download: (json['download'] as List<dynamic>?)
          ?.map((e) => Download.fromJson(e as Map<String, dynamic>))
          .toList(),
      app: json['app'] == null
          ? null
          : App.fromJson(json['app'] as Map<String, dynamic>),
      play: json['play'] == null
          ? null
          : Play.fromJson(json['play'] as Map<String, dynamic>),
      status: json['status'] as String?,
      resourceKey: json['resource_key'] as String?,
      upload: json['upload'] == null
          ? null
          : Upload.fromJson(json['upload'] as Map<String, dynamic>),
      transcode: json['transcode'] == null
          ? null
          : Transcode.fromJson(json['transcode'] as Map<String, dynamic>),
      isPlayable: json['is_playable'] as bool?,
      hasAudio: json['has_audio'] as bool?,
    );

Map<String, dynamic> _$$VimeoVideoResponseImplToJson(
        _$VimeoVideoResponseImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'link': instance.link,
      'player_embed_url': instance.playerEmbedUrl,
      'duration': instance.duration,
      'width': instance.width,
      'language': instance.language,
      'height': instance.height,
      'embed': instance.embed,
      'created_time': instance.createdTime?.toIso8601String(),
      'modified_time': instance.modifiedTime?.toIso8601String(),
      'release_time': instance.releaseTime?.toIso8601String(),
      'content_rating': instance.contentRating,
      'content_rating_class': instance.contentRatingClass,
      'rating_mod_locked': instance.ratingModLocked,
      'license': instance.license,
      'privacy': instance.privacy,
      'pictures': instance.pictures,
      'tags': instance.tags,
      'stats': instance.stats,
      'categories': instance.categories,
      'uploader': instance.uploader,
      'metadata': instance.metadata,
      'manage_link': instance.manageLink,
      'user': instance.user,
      'last_user_action_event_date':
          instance.lastUserActionEventDate?.toIso8601String(),
      'parent_folder': instance.parentFolder,
      'review_page': instance.reviewPage,
      'files': instance.files,
      'download': instance.download,
      'app': instance.app,
      'play': instance.play,
      'status': instance.status,
      'resource_key': instance.resourceKey,
      'upload': instance.upload,
      'transcode': instance.transcode,
      'is_playable': instance.isPlayable,
      'has_audio': instance.hasAudio,
    };

_$AppImpl _$$AppImplFromJson(Map<String, dynamic> json) => _$AppImpl(
      name: json['name'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$AppImplToJson(_$AppImpl instance) => <String, dynamic>{
      'name': instance.name,
      'uri': instance.uri,
    };

_$DownloadImpl _$$DownloadImplFromJson(Map<String, dynamic> json) =>
    _$DownloadImpl(
      quality: json['quality'] as String?,
      rendition: json['rendition'] as String?,
      type: json['type'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String),
      link: json['link'] as String?,
      createdTime: json['created_time'] == null
          ? null
          : DateTime.parse(json['created_time'] as String),
      fps: (json['fps'] as num?)?.toDouble(),
      size: json['size'] as int?,
      md5: json['md5'],
      publicName: json['public_name'] as String?,
      sizeShort: json['size_short'] as String?,
      codec: json['codec'] as String?,
      linkExpirationTime: json['link_expiration_time'] == null
          ? null
          : DateTime.parse(json['link_expiration_time'] as String),
    );

Map<String, dynamic> _$$DownloadImplToJson(_$DownloadImpl instance) =>
    <String, dynamic>{
      'quality': instance.quality,
      'rendition': instance.rendition,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'expires': instance.expires?.toIso8601String(),
      'link': instance.link,
      'created_time': instance.createdTime?.toIso8601String(),
      'fps': instance.fps,
      'size': instance.size,
      'md5': instance.md5,
      'public_name': instance.publicName,
      'size_short': instance.sizeShort,
      'codec': instance.codec,
      'link_expiration_time': instance.linkExpirationTime?.toIso8601String(),
    };

_$EmbedImpl _$$EmbedImplFromJson(Map<String, dynamic> json) => _$EmbedImpl(
      html: json['html'] as String?,
      badges: json['badges'] == null
          ? null
          : Badges.fromJson(json['badges'] as Map<String, dynamic>),
      interactive: json['interactive'] as bool?,
      buttons: json['buttons'] == null
          ? null
          : Buttons.fromJson(json['buttons'] as Map<String, dynamic>),
      logos: json['logos'] == null
          ? null
          : Logos.fromJson(json['logos'] as Map<String, dynamic>),
      playButton: json['play_button'] == null
          ? null
          : PlayButton.fromJson(json['play_button'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      endScreen: json['end_screen'] as List<dynamic>?,
      playbar: json['playbar'] as bool?,
      qualitySelector: json['quality_selector'] as bool?,
      pip: json['pip'] as bool?,
      autopip: json['autopip'] as bool?,
      volume: json['volume'] as bool?,
      color: json['color'] as String?,
      colors: json['colors'] == null
          ? null
          : Colors.fromJson(json['colors'] as Map<String, dynamic>),
      eventSchedule: json['event_schedule'] as bool?,
      hasCards: json['has_cards'] as bool?,
      outroType: json['outro_type'] as String?,
      showTimezone: json['show_timezone'] as bool?,
      cards: json['cards'] as List<dynamic>?,
      airplay: json['airplay'] as bool?,
      audioTracks: json['audio_tracks'] as bool?,
      chapters: json['chapters'] as bool?,
      chromecast: json['chromecast'] as bool?,
      closedCaptions: json['closed_captions'] as bool?,
      transcript: json['transcript'] as bool?,
      askAi: json['ask_ai'] as bool?,
      uri: json['uri'],
      emailCaptureForm: json['email_capture_form'],
      speed: json['speed'] as bool?,
    );

Map<String, dynamic> _$$EmbedImplToJson(_$EmbedImpl instance) =>
    <String, dynamic>{
      'html': instance.html,
      'badges': instance.badges,
      'interactive': instance.interactive,
      'buttons': instance.buttons,
      'logos': instance.logos,
      'play_button': instance.playButton,
      'title': instance.title,
      'end_screen': instance.endScreen,
      'playbar': instance.playbar,
      'quality_selector': instance.qualitySelector,
      'pip': instance.pip,
      'autopip': instance.autopip,
      'volume': instance.volume,
      'color': instance.color,
      'colors': instance.colors,
      'event_schedule': instance.eventSchedule,
      'has_cards': instance.hasCards,
      'outro_type': instance.outroType,
      'show_timezone': instance.showTimezone,
      'cards': instance.cards,
      'airplay': instance.airplay,
      'audio_tracks': instance.audioTracks,
      'chapters': instance.chapters,
      'chromecast': instance.chromecast,
      'closed_captions': instance.closedCaptions,
      'transcript': instance.transcript,
      'ask_ai': instance.askAi,
      'uri': instance.uri,
      'email_capture_form': instance.emailCaptureForm,
      'speed': instance.speed,
    };

_$BadgesImpl _$$BadgesImplFromJson(Map<String, dynamic> json) => _$BadgesImpl(
      hdr: json['hdr'] as bool?,
      live: json['live'] == null
          ? null
          : Live.fromJson(json['live'] as Map<String, dynamic>),
      staffPick: json['staff_pick'] == null
          ? null
          : StaffPick.fromJson(json['staff_pick'] as Map<String, dynamic>),
      vod: json['vod'] as bool?,
      weekendChallenge: json['weekend_challenge'] as bool?,
    );

Map<String, dynamic> _$$BadgesImplToJson(_$BadgesImpl instance) =>
    <String, dynamic>{
      'hdr': instance.hdr,
      'live': instance.live,
      'staff_pick': instance.staffPick,
      'vod': instance.vod,
      'weekend_challenge': instance.weekendChallenge,
    };

_$LiveImpl _$$LiveImplFromJson(Map<String, dynamic> json) => _$LiveImpl(
      streaming: json['streaming'] as bool?,
      archived: json['archived'] as bool?,
    );

Map<String, dynamic> _$$LiveImplToJson(_$LiveImpl instance) =>
    <String, dynamic>{
      'streaming': instance.streaming,
      'archived': instance.archived,
    };

_$StaffPickImpl _$$StaffPickImplFromJson(Map<String, dynamic> json) =>
    _$StaffPickImpl(
      normal: json['normal'] as bool?,
      bestOfTheMonth: json['best_of_the_month'] as bool?,
      bestOfTheYear: json['best_of_the_year'] as bool?,
      premiere: json['premiere'] as bool?,
    );

Map<String, dynamic> _$$StaffPickImplToJson(_$StaffPickImpl instance) =>
    <String, dynamic>{
      'normal': instance.normal,
      'best_of_the_month': instance.bestOfTheMonth,
      'best_of_the_year': instance.bestOfTheYear,
      'premiere': instance.premiere,
    };

_$ButtonsImpl _$$ButtonsImplFromJson(Map<String, dynamic> json) =>
    _$ButtonsImpl(
      watchlater: json['watchlater'] as bool?,
      share: json['share'] as bool?,
      embed: json['embed'] as bool?,
      hd: json['hd'] as bool?,
      fullscreen: json['fullscreen'] as bool?,
      scaling: json['scaling'] as bool?,
      like: json['like'] as bool?,
    );

Map<String, dynamic> _$$ButtonsImplToJson(_$ButtonsImpl instance) =>
    <String, dynamic>{
      'watchlater': instance.watchlater,
      'share': instance.share,
      'embed': instance.embed,
      'hd': instance.hd,
      'fullscreen': instance.fullscreen,
      'scaling': instance.scaling,
      'like': instance.like,
    };

_$ColorsImpl _$$ColorsImplFromJson(Map<String, dynamic> json) => _$ColorsImpl(
      colorOne: json['color_one'] as String?,
      colorTwo: json['color_two'] as String?,
      colorThree: json['color_three'] as String?,
      colorFour: json['color_four'] as String?,
    );

Map<String, dynamic> _$$ColorsImplToJson(_$ColorsImpl instance) =>
    <String, dynamic>{
      'color_one': instance.colorOne,
      'color_two': instance.colorTwo,
      'color_three': instance.colorThree,
      'color_four': instance.colorFour,
    };

_$LogosImpl _$$LogosImplFromJson(Map<String, dynamic> json) => _$LogosImpl(
      vimeo: json['vimeo'] as bool?,
      custom: json['custom'] == null
          ? null
          : Custom.fromJson(json['custom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LogosImplToJson(_$LogosImpl instance) =>
    <String, dynamic>{
      'vimeo': instance.vimeo,
      'custom': instance.custom,
    };

_$CustomImpl _$$CustomImplFromJson(Map<String, dynamic> json) => _$CustomImpl(
      active: json['active'] as bool?,
      url: json['url'],
      link: json['link'],
      useLink: json['use_link'] as bool?,
      sticky: json['sticky'] as bool?,
    );

Map<String, dynamic> _$$CustomImplToJson(_$CustomImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'url': instance.url,
      'link': instance.link,
      'use_link': instance.useLink,
      'sticky': instance.sticky,
    };

_$PlayButtonImpl _$$PlayButtonImplFromJson(Map<String, dynamic> json) =>
    _$PlayButtonImpl(
      position: json['position'] as String?,
    );

Map<String, dynamic> _$$PlayButtonImplToJson(_$PlayButtonImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      name: json['name'] as String?,
      owner: json['owner'] as String?,
      portrait: json['portrait'] as String?,
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'portrait': instance.portrait,
    };

_$VimeoVideoResponseMetadataImpl _$$VimeoVideoResponseMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$VimeoVideoResponseMetadataImpl(
      connections: json['connections'] == null
          ? null
          : PurpleConnections.fromJson(
              json['connections'] as Map<String, dynamic>),
      interactions: json['interactions'] == null
          ? null
          : PurpleInteractions.fromJson(
              json['interactions'] as Map<String, dynamic>),
      isVimeoCreate: json['is_vimeo_create'] as bool?,
      isScreenRecord: json['is_screen_record'] as bool?,
    );

Map<String, dynamic> _$$VimeoVideoResponseMetadataImplToJson(
        _$VimeoVideoResponseMetadataImpl instance) =>
    <String, dynamic>{
      'connections': instance.connections,
      'interactions': instance.interactions,
      'is_vimeo_create': instance.isVimeoCreate,
      'is_screen_record': instance.isScreenRecord,
    };

_$PurpleConnectionsImpl _$$PurpleConnectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PurpleConnectionsImpl(
      comments: json['comments'] == null
          ? null
          : Albums.fromJson(json['comments'] as Map<String, dynamic>),
      credits: json['credits'] == null
          ? null
          : Albums.fromJson(json['credits'] as Map<String, dynamic>),
      likes: json['likes'] == null
          ? null
          : Albums.fromJson(json['likes'] as Map<String, dynamic>),
      pictures: json['pictures'] == null
          ? null
          : Albums.fromJson(json['pictures'] as Map<String, dynamic>),
      texttracks: json['texttracks'] == null
          ? null
          : Albums.fromJson(json['texttracks'] as Map<String, dynamic>),
      related: json['related'],
      recommendations: json['recommendations'] == null
          ? null
          : Recommendations.fromJson(
              json['recommendations'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
      availableAlbums: json['available_albums'] == null
          ? null
          : Albums.fromJson(json['available_albums'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurpleConnectionsImplToJson(
        _$PurpleConnectionsImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'credits': instance.credits,
      'likes': instance.likes,
      'pictures': instance.pictures,
      'texttracks': instance.texttracks,
      'related': instance.related,
      'recommendations': instance.recommendations,
      'albums': instance.albums,
      'available_albums': instance.availableAlbums,
      'versions': instance.versions,
    };

_$AlbumsImpl _$$AlbumsImplFromJson(Map<String, dynamic> json) => _$AlbumsImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$AlbumsImplToJson(_$AlbumsImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'total': instance.total,
    };

_$RecommendationsImpl _$$RecommendationsImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationsImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RecommendationsImplToJson(
        _$RecommendationsImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
    };

_$VersionsImpl _$$VersionsImplFromJson(Map<String, dynamic> json) =>
    _$VersionsImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      total: json['total'] as int?,
      currentUri: json['current_uri'] as String?,
      resourceKey: json['resource_key'] as String?,
      latestIncompleteVersion: json['latest_incomplete_version'],
    );

Map<String, dynamic> _$$VersionsImplToJson(_$VersionsImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'total': instance.total,
      'current_uri': instance.currentUri,
      'resource_key': instance.resourceKey,
      'latest_incomplete_version': instance.latestIncompleteVersion,
    };

_$PurpleInteractionsImpl _$$PurpleInteractionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PurpleInteractionsImpl(
      watchlater: json['watchlater'] == null
          ? null
          : Like.fromJson(json['watchlater'] as Map<String, dynamic>),
      like: json['like'] == null
          ? null
          : Like.fromJson(json['like'] as Map<String, dynamic>),
      report: json['report'] == null
          ? null
          : Report.fromJson(json['report'] as Map<String, dynamic>),
      viewTeamMembers: json['view_team_members'] == null
          ? null
          : Recommendations.fromJson(
              json['view_team_members'] as Map<String, dynamic>),
      edit: json['edit'] == null
          ? null
          : Edit.fromJson(json['edit'] as Map<String, dynamic>),
      editContentRating: json['edit_content_rating'] == null
          ? null
          : EditContentRating.fromJson(
              json['edit_content_rating'] as Map<String, dynamic>),
      editPrivacy: json['edit_privacy'] == null
          ? null
          : EditPrivacy.fromJson(json['edit_privacy'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : Recommendations.fromJson(json['delete'] as Map<String, dynamic>),
      canUpdatePrivacyToPublic: json['can_update_privacy_to_public'] == null
          ? null
          : Recommendations.fromJson(
              json['can_update_privacy_to_public'] as Map<String, dynamic>),
      invite: json['invite'] == null
          ? null
          : Recommendations.fromJson(json['invite'] as Map<String, dynamic>),
      trim: json['trim'] == null
          ? null
          : Recommendations.fromJson(json['trim'] as Map<String, dynamic>),
      validate: json['validate'] == null
          ? null
          : Recommendations.fromJson(json['validate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurpleInteractionsImplToJson(
        _$PurpleInteractionsImpl instance) =>
    <String, dynamic>{
      'watchlater': instance.watchlater,
      'like': instance.like,
      'report': instance.report,
      'view_team_members': instance.viewTeamMembers,
      'edit': instance.edit,
      'edit_content_rating': instance.editContentRating,
      'edit_privacy': instance.editPrivacy,
      'delete': instance.delete,
      'can_update_privacy_to_public': instance.canUpdatePrivacyToPublic,
      'invite': instance.invite,
      'trim': instance.trim,
      'validate': instance.validate,
    };

_$EditImpl _$$EditImplFromJson(Map<String, dynamic> json) => _$EditImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      blockedFields: (json['blocked_fields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$EditImplToJson(_$EditImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'blocked_fields': instance.blockedFields,
    };

_$EditContentRatingImpl _$$EditContentRatingImplFromJson(
        Map<String, dynamic> json) =>
    _$EditContentRatingImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contentRating: (json['content_rating'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$EditContentRatingImplToJson(
        _$EditContentRatingImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'content_rating': instance.contentRating,
    };

_$EditPrivacyImpl _$$EditPrivacyImplFromJson(Map<String, dynamic> json) =>
    _$EditPrivacyImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contentType: json['content_type'] as String?,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditPrivacyImplToJson(_$EditPrivacyImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'content_type': instance.contentType,
      'properties': instance.properties,
    };

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      name: json['name'] as String?,
      required: json['required'] as bool?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'required': instance.required,
      'options': instance.options,
    };

_$LikeImpl _$$LikeImplFromJson(Map<String, dynamic> json) => _$LikeImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      added: json['added'] as bool?,
      addedTime: json['added_time'],
      showCount: json['show_count'] as bool?,
    );

Map<String, dynamic> _$$LikeImplToJson(_$LikeImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'added': instance.added,
      'added_time': instance.addedTime,
      'show_count': instance.showCount,
    };

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      uri: json['uri'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reason:
          (json['reason'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'options': instance.options,
      'reason': instance.reason,
    };

_$PicturesImpl _$$PicturesImplFromJson(Map<String, dynamic> json) =>
    _$PicturesImpl(
      uri: json['uri'] as String?,
      active: json['active'] as bool?,
      type: json['type'] as String?,
      baseLink: json['base_link'] as String?,
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceKey: json['resource_key'] as String?,
      defaultPicture: json['default_picture'] as bool?,
    );

Map<String, dynamic> _$$PicturesImplToJson(_$PicturesImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'active': instance.active,
      'type': instance.type,
      'base_link': instance.baseLink,
      'sizes': instance.sizes,
      'resource_key': instance.resourceKey,
      'default_picture': instance.defaultPicture,
    };

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      width: json['width'] as int?,
      height: json['height'] as int?,
      link: json['link'] as String?,
      linkWithPlayButton: json['link_with_play_button'] as String?,
    );

Map<String, dynamic> _$$SizeImplToJson(_$SizeImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'link': instance.link,
      'link_with_play_button': instance.linkWithPlayButton,
    };

_$PlayImpl _$$PlayImplFromJson(Map<String, dynamic> json) => _$PlayImpl(
      progressive: (json['progressive'] as List<dynamic>?)
          ?.map((e) => Download.fromJson(e as Map<String, dynamic>))
          .toList(),
      hls: json['hls'] == null
          ? null
          : Dash.fromJson(json['hls'] as Map<String, dynamic>),
      dash: json['dash'] == null
          ? null
          : Dash.fromJson(json['dash'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$PlayImplToJson(_$PlayImpl instance) =>
    <String, dynamic>{
      'progressive': instance.progressive,
      'hls': instance.hls,
      'dash': instance.dash,
      'status': instance.status,
    };

_$DashImpl _$$DashImplFromJson(Map<String, dynamic> json) => _$DashImpl(
      linkExpirationTime: json['link_expiration_time'] == null
          ? null
          : DateTime.parse(json['link_expiration_time'] as String),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$DashImplToJson(_$DashImpl instance) =>
    <String, dynamic>{
      'link_expiration_time': instance.linkExpirationTime?.toIso8601String(),
      'link': instance.link,
    };

_$PrivacyImpl _$$PrivacyImplFromJson(Map<String, dynamic> json) =>
    _$PrivacyImpl(
      view: json['view'] as String?,
      embed: json['embed'] as String?,
      download: json['download'] as bool?,
      add: json['add'] as bool?,
      comments: json['comments'] as String?,
      allowShareLink: json['allow_share_link'] as bool?,
    );

Map<String, dynamic> _$$PrivacyImplToJson(_$PrivacyImpl instance) =>
    <String, dynamic>{
      'view': instance.view,
      'embed': instance.embed,
      'download': instance.download,
      'add': instance.add,
      'comments': instance.comments,
      'allow_share_link': instance.allowShareLink,
    };

_$ReviewPageImpl _$$ReviewPageImplFromJson(Map<String, dynamic> json) =>
    _$ReviewPageImpl(
      active: json['active'] as bool?,
      link: json['link'] as String?,
      isShareable: json['is_shareable'] as bool?,
    );

Map<String, dynamic> _$$ReviewPageImplToJson(_$ReviewPageImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'link': instance.link,
      'is_shareable': instance.isShareable,
    };

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      plays: json['plays'] as int?,
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'plays': instance.plays,
    };

_$TranscodeImpl _$$TranscodeImplFromJson(Map<String, dynamic> json) =>
    _$TranscodeImpl(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$TranscodeImplToJson(_$TranscodeImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$UploadImpl _$$UploadImplFromJson(Map<String, dynamic> json) => _$UploadImpl(
      status: json['status'] as String?,
      link: json['link'],
      uploadLink: json['upload_link'],
      form: json['form'],
      approach: json['approach'],
      size: json['size'],
      redirectUrl: json['redirect_url'],
    );

Map<String, dynamic> _$$UploadImplToJson(_$UploadImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'link': instance.link,
      'upload_link': instance.uploadLink,
      'form': instance.form,
      'approach': instance.approach,
      'size': instance.size,
      'redirect_url': instance.redirectUrl,
    };

_$UploaderImpl _$$UploaderImplFromJson(Map<String, dynamic> json) =>
    _$UploaderImpl(
      pictures: json['pictures'] == null
          ? null
          : Pictures.fromJson(json['pictures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploaderImplToJson(_$UploaderImpl instance) =>
    <String, dynamic>{
      'pictures': instance.pictures,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      link: json['link'] as String?,
      capabilities: json['capabilities'] == null
          ? null
          : Capabilities.fromJson(json['capabilities'] as Map<String, dynamic>),
      location: json['location'] as String?,
      gender: json['gender'] as String?,
      bio: json['bio'],
      shortBio: json['short_bio'],
      createdTime: json['created_time'] == null
          ? null
          : DateTime.parse(json['created_time'] as String),
      pictures: json['pictures'] == null
          ? null
          : Pictures.fromJson(json['pictures'] as Map<String, dynamic>),
      websites: json['websites'] as List<dynamic>?,
      metadata: json['metadata'] == null
          ? null
          : UserMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      locationDetails: json['location_details'] == null
          ? null
          : LocationDetails.fromJson(
              json['location_details'] as Map<String, dynamic>),
      skills: json['skills'] as List<dynamic>?,
      availableForHire: json['available_for_hire'] as bool?,
      canWorkRemotely: json['can_work_remotely'] as bool?,
      preferences: json['preferences'] == null
          ? null
          : Preferences.fromJson(json['preferences'] as Map<String, dynamic>),
      resourceKey: json['resource_key'] as String?,
      account: json['account'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'name': instance.name,
      'link': instance.link,
      'capabilities': instance.capabilities,
      'location': instance.location,
      'gender': instance.gender,
      'bio': instance.bio,
      'short_bio': instance.shortBio,
      'created_time': instance.createdTime?.toIso8601String(),
      'pictures': instance.pictures,
      'websites': instance.websites,
      'metadata': instance.metadata,
      'location_details': instance.locationDetails,
      'skills': instance.skills,
      'available_for_hire': instance.availableForHire,
      'can_work_remotely': instance.canWorkRemotely,
      'preferences': instance.preferences,
      'resource_key': instance.resourceKey,
      'account': instance.account,
    };

_$CapabilitiesImpl _$$CapabilitiesImplFromJson(Map<String, dynamic> json) =>
    _$CapabilitiesImpl(
      hasLiveSubscription: json['hasLiveSubscription'] as bool?,
      hasEnterpriseLihp: json['hasEnterpriseLihp'] as bool?,
      hasSvvTimecodedComments: json['hasSvvTimecodedComments'] as bool?,
      hasSimplifiedEnterpriseAccount:
          json['hasSimplifiedEnterpriseAccount'] as bool?,
    );

Map<String, dynamic> _$$CapabilitiesImplToJson(_$CapabilitiesImpl instance) =>
    <String, dynamic>{
      'hasLiveSubscription': instance.hasLiveSubscription,
      'hasEnterpriseLihp': instance.hasEnterpriseLihp,
      'hasSvvTimecodedComments': instance.hasSvvTimecodedComments,
      'hasSimplifiedEnterpriseAccount': instance.hasSimplifiedEnterpriseAccount,
    };

_$LocationDetailsImpl _$$LocationDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDetailsImpl(
      formattedAddress: json['formatted_address'] as String?,
      latitude: json['latitude'],
      longitude: json['longitude'],
      city: json['city'],
      state: json['state'],
      neighborhood: json['neighborhood'],
      subLocality: json['sub_locality'],
      stateIsoCode: json['state_iso_code'],
      country: json['country'],
      countryIsoCode: json['country_iso_code'],
    );

Map<String, dynamic> _$$LocationDetailsImplToJson(
        _$LocationDetailsImpl instance) =>
    <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
      'state': instance.state,
      'neighborhood': instance.neighborhood,
      'sub_locality': instance.subLocality,
      'state_iso_code': instance.stateIsoCode,
      'country': instance.country,
      'country_iso_code': instance.countryIsoCode,
    };

_$UserMetadataImpl _$$UserMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UserMetadataImpl(
      connections: json['connections'] == null
          ? null
          : FluffyConnections.fromJson(
              json['connections'] as Map<String, dynamic>),
      interactions: json['interactions'] == null
          ? null
          : FluffyInteractions.fromJson(
              json['interactions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserMetadataImplToJson(_$UserMetadataImpl instance) =>
    <String, dynamic>{
      'connections': instance.connections,
      'interactions': instance.interactions,
    };

_$FluffyConnectionsImpl _$$FluffyConnectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$FluffyConnectionsImpl(
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
      appearances: json['appearances'] == null
          ? null
          : Albums.fromJson(json['appearances'] as Map<String, dynamic>),
      channels: json['channels'] == null
          ? null
          : Albums.fromJson(json['channels'] as Map<String, dynamic>),
      feed: json['feed'] == null
          ? null
          : Recommendations.fromJson(json['feed'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Albums.fromJson(json['followers'] as Map<String, dynamic>),
      following: json['following'] == null
          ? null
          : Albums.fromJson(json['following'] as Map<String, dynamic>),
      groups: json['groups'] == null
          ? null
          : Albums.fromJson(json['groups'] as Map<String, dynamic>),
      likes: json['likes'] == null
          ? null
          : Albums.fromJson(json['likes'] as Map<String, dynamic>),
      membership: json['membership'] == null
          ? null
          : Recommendations.fromJson(
              json['membership'] as Map<String, dynamic>),
      moderatedChannels: json['moderated_channels'] == null
          ? null
          : Albums.fromJson(json['moderated_channels'] as Map<String, dynamic>),
      portfolios: json['portfolios'] == null
          ? null
          : Albums.fromJson(json['portfolios'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : Albums.fromJson(json['videos'] as Map<String, dynamic>),
      shared: json['shared'] == null
          ? null
          : Albums.fromJson(json['shared'] as Map<String, dynamic>),
      pictures: json['pictures'] == null
          ? null
          : Albums.fromJson(json['pictures'] as Map<String, dynamic>),
      foldersRoot: json['folders_root'] == null
          ? null
          : Recommendations.fromJson(
              json['folders_root'] as Map<String, dynamic>),
      folders: json['folders'] == null
          ? null
          : Albums.fromJson(json['folders'] as Map<String, dynamic>),
      teams: json['teams'] == null
          ? null
          : Albums.fromJson(json['teams'] as Map<String, dynamic>),
      permissionPolicies: json['permission_policies'] == null
          ? null
          : Albums.fromJson(
              json['permission_policies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FluffyConnectionsImplToJson(
        _$FluffyConnectionsImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums,
      'appearances': instance.appearances,
      'channels': instance.channels,
      'feed': instance.feed,
      'followers': instance.followers,
      'following': instance.following,
      'groups': instance.groups,
      'likes': instance.likes,
      'membership': instance.membership,
      'moderated_channels': instance.moderatedChannels,
      'portfolios': instance.portfolios,
      'videos': instance.videos,
      'shared': instance.shared,
      'pictures': instance.pictures,
      'folders_root': instance.foldersRoot,
      'folders': instance.folders,
      'teams': instance.teams,
      'permission_policies': instance.permissionPolicies,
    };

_$FluffyInteractionsImpl _$$FluffyInteractionsImplFromJson(
        Map<String, dynamic> json) =>
    _$FluffyInteractionsImpl(
      follow: json['follow'] == null
          ? null
          : Like.fromJson(json['follow'] as Map<String, dynamic>),
      block: json['block'] == null
          ? null
          : Like.fromJson(json['block'] as Map<String, dynamic>),
      report: json['report'] == null
          ? null
          : Report.fromJson(json['report'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FluffyInteractionsImplToJson(
        _$FluffyInteractionsImpl instance) =>
    <String, dynamic>{
      'follow': instance.follow,
      'block': instance.block,
      'report': instance.report,
    };

_$PreferencesImpl _$$PreferencesImplFromJson(Map<String, dynamic> json) =>
    _$PreferencesImpl(
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreferencesImplToJson(_$PreferencesImpl instance) =>
    <String, dynamic>{
      'videos': instance.videos,
    };

_$VideosImpl _$$VideosImplFromJson(Map<String, dynamic> json) => _$VideosImpl(
      rating:
          (json['rating'] as List<dynamic>?)?.map((e) => e as String).toList(),
      privacy: json['privacy'] == null
          ? null
          : Privacy.fromJson(json['privacy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VideosImplToJson(_$VideosImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'privacy': instance.privacy,
    };
