{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaControlsHost
       (ghcjs_dom_media_controls_host_sorted_track_list_for_menu,
        mediaControlsHostSortedTrackListForMenu,
        ghcjs_dom_media_controls_host_sorted_track_list_for_menuAudio,
        mediaControlsHostSortedTrackListForMenuAudio,
        ghcjs_dom_media_controls_host_display_name_for_track,
        mediaControlsHostDisplayNameForTrack,
        ghcjs_dom_media_controls_host_display_name_for_trackAudio,
        mediaControlsHostDisplayNameForTrackAudio,
        ghcjs_dom_media_controls_host_set_selected_text_track,
        mediaControlsHostSetSelectedTextTrack,
        ghcjs_dom_media_controls_host_update_text_track_container,
        mediaControlsHostUpdateTextTrackContainer,
        ghcjs_dom_media_controls_host_entered_fullscreen,
        mediaControlsHostEnteredFullscreen,
        ghcjs_dom_media_controls_host_exited_fullscreen,
        mediaControlsHostExitedFullscreen,
        ghcjs_dom_media_controls_host_enter_fullscreen_optimized,
        mediaControlsHostEnterFullscreenOptimized,
        ghcjs_dom_media_controls_host_media_ui_image_data,
        mediaControlsHostMediaUIImageData,
        ghcjs_dom_media_controls_host_get_caption_menu_off_item,
        mediaControlsHostGetCaptionMenuOffItem,
        ghcjs_dom_media_controls_host_get_caption_menu_automatic_item,
        mediaControlsHostGetCaptionMenuAutomaticItem,
        ghcjs_dom_media_controls_host_get_caption_display_mode,
        mediaControlsHostGetCaptionDisplayMode,
        ghcjs_dom_media_controls_host_get_text_track_container,
        mediaControlsHostGetTextTrackContainer,
        ghcjs_dom_media_controls_host_get_media_playback_allows_inline,
        mediaControlsHostGetMediaPlaybackAllowsInline,
        ghcjs_dom_media_controls_host_get_supports_fullscreen,
        mediaControlsHostGetSupportsFullscreen,
        ghcjs_dom_media_controls_host_get_user_gesture_required,
        mediaControlsHostGetUserGestureRequired,
        ghcjs_dom_media_controls_host_get_external_device_display_name,
        mediaControlsHostGetExternalDeviceDisplayName,
        ghcjs_dom_media_controls_host_get_external_device_type,
        mediaControlsHostGetExternalDeviceType,
        ghcjs_dom_media_controls_host_set_controls_depend_on_page_scale_factor,
        mediaControlsHostSetControlsDependOnPageScaleFactor,
        ghcjs_dom_media_controls_host_get_controls_depend_on_page_scale_factor,
        mediaControlsHostGetControlsDependOnPageScaleFactor,
        ghcjs_dom_media_controls_host_get_optimized_fullscreen_supported,
        mediaControlsHostGetOptimizedFullscreenSupported,
        ghcjs_dom_media_controls_host_get_fullscreen_mode,
        mediaControlsHostGetFullscreenMode, MediaControlsHost,
        IsMediaControlsHost, castToMediaControlsHost,
        gTypeMediaControlsHost, toMediaControlsHost)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)"
        ghcjs_dom_media_controls_host_sorted_track_list_for_menu ::
        JSRef MediaControlsHost ->
          JSRef TextTrackList -> IO (JSRef [Maybe TextTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenu Mozilla MediaControlsHost.sortedTrackListForMenu documentation> 
mediaControlsHostSortedTrackListForMenu ::
                                        (MonadIO m, IsMediaControlsHost self,
                                         IsTextTrackList trackList) =>
                                          self -> Maybe trackList -> m [Maybe TextTrack]
mediaControlsHostSortedTrackListForMenu self trackList
  = liftIO
      ((ghcjs_dom_media_controls_host_sorted_track_list_for_menu
          (unMediaControlsHost (toMediaControlsHost self))
          (maybe jsNull (unTextTrackList . toTextTrackList) trackList))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"sortedTrackListForMenu\"]($2)"
        ghcjs_dom_media_controls_host_sorted_track_list_for_menuAudio ::
        JSRef MediaControlsHost ->
          JSRef AudioTrackList -> IO (JSRef [Maybe AudioTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.sortedTrackListForMenuAudio Mozilla MediaControlsHost.sortedTrackListForMenuAudio documentation> 
mediaControlsHostSortedTrackListForMenuAudio ::
                                             (MonadIO m, IsMediaControlsHost self,
                                              IsAudioTrackList trackList) =>
                                               self -> Maybe trackList -> m [Maybe AudioTrack]
mediaControlsHostSortedTrackListForMenuAudio self trackList
  = liftIO
      ((ghcjs_dom_media_controls_host_sorted_track_list_for_menuAudio
          (unMediaControlsHost (toMediaControlsHost self))
          (maybe jsNull (unAudioTrackList . toAudioTrackList) trackList))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"displayNameForTrack\"]($2)"
        ghcjs_dom_media_controls_host_display_name_for_track ::
        JSRef MediaControlsHost -> JSRef TextTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrack Mozilla MediaControlsHost.displayNameForTrack documentation> 
mediaControlsHostDisplayNameForTrack ::
                                     (MonadIO m, IsMediaControlsHost self, IsTextTrack track,
                                      FromJSString result) =>
                                       self -> Maybe track -> m result
mediaControlsHostDisplayNameForTrack self track
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_controls_host_display_name_for_track
            (unMediaControlsHost (toMediaControlsHost self))
            (maybe jsNull (unTextTrack . toTextTrack) track)))
 
foreign import javascript unsafe "$1[\"displayNameForTrack\"]($2)"
        ghcjs_dom_media_controls_host_display_name_for_trackAudio ::
        JSRef MediaControlsHost -> JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.displayNameForTrackAudio Mozilla MediaControlsHost.displayNameForTrackAudio documentation> 
mediaControlsHostDisplayNameForTrackAudio ::
                                          (MonadIO m, IsMediaControlsHost self, IsAudioTrack track,
                                           FromJSString result) =>
                                            self -> Maybe track -> m result
mediaControlsHostDisplayNameForTrackAudio self track
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_controls_host_display_name_for_trackAudio
            (unMediaControlsHost (toMediaControlsHost self))
            (maybe jsNull (unAudioTrack . toAudioTrack) track)))
 
foreign import javascript unsafe "$1[\"setSelectedTextTrack\"]($2)"
        ghcjs_dom_media_controls_host_set_selected_text_track ::
        JSRef MediaControlsHost -> JSRef TextTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.selectedTextTrack Mozilla MediaControlsHost.selectedTextTrack documentation> 
mediaControlsHostSetSelectedTextTrack ::
                                      (MonadIO m, IsMediaControlsHost self, IsTextTrack track) =>
                                        self -> Maybe track -> m ()
mediaControlsHostSetSelectedTextTrack self track
  = liftIO
      (ghcjs_dom_media_controls_host_set_selected_text_track
         (unMediaControlsHost (toMediaControlsHost self))
         (maybe jsNull (unTextTrack . toTextTrack) track))
 
foreign import javascript unsafe
        "$1[\"updateTextTrackContainer\"]()"
        ghcjs_dom_media_controls_host_update_text_track_container ::
        JSRef MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.updateTextTrackContainer Mozilla MediaControlsHost.updateTextTrackContainer documentation> 
mediaControlsHostUpdateTextTrackContainer ::
                                          (MonadIO m, IsMediaControlsHost self) => self -> m ()
mediaControlsHostUpdateTextTrackContainer self
  = liftIO
      (ghcjs_dom_media_controls_host_update_text_track_container
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe "$1[\"enteredFullscreen\"]()"
        ghcjs_dom_media_controls_host_entered_fullscreen ::
        JSRef MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enteredFullscreen Mozilla MediaControlsHost.enteredFullscreen documentation> 
mediaControlsHostEnteredFullscreen ::
                                   (MonadIO m, IsMediaControlsHost self) => self -> m ()
mediaControlsHostEnteredFullscreen self
  = liftIO
      (ghcjs_dom_media_controls_host_entered_fullscreen
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe "$1[\"exitedFullscreen\"]()"
        ghcjs_dom_media_controls_host_exited_fullscreen ::
        JSRef MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.exitedFullscreen Mozilla MediaControlsHost.exitedFullscreen documentation> 
mediaControlsHostExitedFullscreen ::
                                  (MonadIO m, IsMediaControlsHost self) => self -> m ()
mediaControlsHostExitedFullscreen self
  = liftIO
      (ghcjs_dom_media_controls_host_exited_fullscreen
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe
        "$1[\"enterFullscreenOptimized\"]()"
        ghcjs_dom_media_controls_host_enter_fullscreen_optimized ::
        JSRef MediaControlsHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.enterFullscreenOptimized Mozilla MediaControlsHost.enterFullscreenOptimized documentation> 
mediaControlsHostEnterFullscreenOptimized ::
                                          (MonadIO m, IsMediaControlsHost self) => self -> m ()
mediaControlsHostEnterFullscreenOptimized self
  = liftIO
      (ghcjs_dom_media_controls_host_enter_fullscreen_optimized
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe "$1[\"mediaUIImageData\"]($2)"
        ghcjs_dom_media_controls_host_media_ui_image_data ::
        JSRef MediaControlsHost -> JSRef MediaUIPartID -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.mediaUIImageData Mozilla MediaControlsHost.mediaUIImageData documentation> 
mediaControlsHostMediaUIImageData ::
                                  (MonadIO m, IsMediaControlsHost self, FromJSString result) =>
                                    self -> MediaUIPartID -> m result
mediaControlsHostMediaUIImageData self partID
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_controls_host_media_ui_image_data
            (unMediaControlsHost (toMediaControlsHost self))
            (ptoJSRef partID)))
 
foreign import javascript unsafe "$1[\"captionMenuOffItem\"]"
        ghcjs_dom_media_controls_host_get_caption_menu_off_item ::
        JSRef MediaControlsHost -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuOffItem Mozilla MediaControlsHost.captionMenuOffItem documentation> 
mediaControlsHostGetCaptionMenuOffItem ::
                                       (MonadIO m, IsMediaControlsHost self) =>
                                         self -> m (Maybe TextTrack)
mediaControlsHostGetCaptionMenuOffItem self
  = liftIO
      ((ghcjs_dom_media_controls_host_get_caption_menu_off_item
          (unMediaControlsHost (toMediaControlsHost self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"captionMenuAutomaticItem\"]"
        ghcjs_dom_media_controls_host_get_caption_menu_automatic_item ::
        JSRef MediaControlsHost -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionMenuAutomaticItem Mozilla MediaControlsHost.captionMenuAutomaticItem documentation> 
mediaControlsHostGetCaptionMenuAutomaticItem ::
                                             (MonadIO m, IsMediaControlsHost self) =>
                                               self -> m (Maybe TextTrack)
mediaControlsHostGetCaptionMenuAutomaticItem self
  = liftIO
      ((ghcjs_dom_media_controls_host_get_caption_menu_automatic_item
          (unMediaControlsHost (toMediaControlsHost self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"captionDisplayMode\"]"
        ghcjs_dom_media_controls_host_get_caption_display_mode ::
        JSRef MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.captionDisplayMode Mozilla MediaControlsHost.captionDisplayMode documentation> 
mediaControlsHostGetCaptionDisplayMode ::
                                       (MonadIO m, IsMediaControlsHost self, FromJSString result) =>
                                         self -> m result
mediaControlsHostGetCaptionDisplayMode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_controls_host_get_caption_display_mode
            (unMediaControlsHost (toMediaControlsHost self))))
 
foreign import javascript unsafe "$1[\"textTrackContainer\"]"
        ghcjs_dom_media_controls_host_get_text_track_container ::
        JSRef MediaControlsHost -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.textTrackContainer Mozilla MediaControlsHost.textTrackContainer documentation> 
mediaControlsHostGetTextTrackContainer ::
                                       (MonadIO m, IsMediaControlsHost self) =>
                                         self -> m (Maybe HTMLElement)
mediaControlsHostGetTextTrackContainer self
  = liftIO
      ((ghcjs_dom_media_controls_host_get_text_track_container
          (unMediaControlsHost (toMediaControlsHost self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"mediaPlaybackAllowsInline\"] ? 1 : 0)"
        ghcjs_dom_media_controls_host_get_media_playback_allows_inline ::
        JSRef MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.mediaPlaybackAllowsInline Mozilla MediaControlsHost.mediaPlaybackAllowsInline documentation> 
mediaControlsHostGetMediaPlaybackAllowsInline ::
                                              (MonadIO m, IsMediaControlsHost self) =>
                                                self -> m Bool
mediaControlsHostGetMediaPlaybackAllowsInline self
  = liftIO
      (ghcjs_dom_media_controls_host_get_media_playback_allows_inline
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe
        "($1[\"supportsFullscreen\"] ? 1 : 0)"
        ghcjs_dom_media_controls_host_get_supports_fullscreen ::
        JSRef MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.supportsFullscreen Mozilla MediaControlsHost.supportsFullscreen documentation> 
mediaControlsHostGetSupportsFullscreen ::
                                       (MonadIO m, IsMediaControlsHost self) => self -> m Bool
mediaControlsHostGetSupportsFullscreen self
  = liftIO
      (ghcjs_dom_media_controls_host_get_supports_fullscreen
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe
        "($1[\"userGestureRequired\"] ? 1 : 0)"
        ghcjs_dom_media_controls_host_get_user_gesture_required ::
        JSRef MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.userGestureRequired Mozilla MediaControlsHost.userGestureRequired documentation> 
mediaControlsHostGetUserGestureRequired ::
                                        (MonadIO m, IsMediaControlsHost self) => self -> m Bool
mediaControlsHostGetUserGestureRequired self
  = liftIO
      (ghcjs_dom_media_controls_host_get_user_gesture_required
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe
        "$1[\"externalDeviceDisplayName\"]"
        ghcjs_dom_media_controls_host_get_external_device_display_name ::
        JSRef MediaControlsHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceDisplayName Mozilla MediaControlsHost.externalDeviceDisplayName documentation> 
mediaControlsHostGetExternalDeviceDisplayName ::
                                              (MonadIO m, IsMediaControlsHost self,
                                               FromJSString result) =>
                                                self -> m result
mediaControlsHostGetExternalDeviceDisplayName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_controls_host_get_external_device_display_name
            (unMediaControlsHost (toMediaControlsHost self))))
 
foreign import javascript unsafe "$1[\"externalDeviceType\"]"
        ghcjs_dom_media_controls_host_get_external_device_type ::
        JSRef MediaControlsHost -> IO (JSRef DeviceType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.externalDeviceType Mozilla MediaControlsHost.externalDeviceType documentation> 
mediaControlsHostGetExternalDeviceType ::
                                       (MonadIO m, IsMediaControlsHost self) => self -> m DeviceType
mediaControlsHostGetExternalDeviceType self
  = liftIO
      ((ghcjs_dom_media_controls_host_get_external_device_type
          (unMediaControlsHost (toMediaControlsHost self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"controlsDependOnPageScaleFactor\"] = $2;"
        ghcjs_dom_media_controls_host_set_controls_depend_on_page_scale_factor
        :: JSRef MediaControlsHost -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
mediaControlsHostSetControlsDependOnPageScaleFactor ::
                                                    (MonadIO m, IsMediaControlsHost self) =>
                                                      self -> Bool -> m ()
mediaControlsHostSetControlsDependOnPageScaleFactor self val
  = liftIO
      (ghcjs_dom_media_controls_host_set_controls_depend_on_page_scale_factor
         (unMediaControlsHost (toMediaControlsHost self))
         val)
 
foreign import javascript unsafe
        "($1[\"controlsDependOnPageScaleFactor\"] ? 1 : 0)"
        ghcjs_dom_media_controls_host_get_controls_depend_on_page_scale_factor
        :: JSRef MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.controlsDependOnPageScaleFactor Mozilla MediaControlsHost.controlsDependOnPageScaleFactor documentation> 
mediaControlsHostGetControlsDependOnPageScaleFactor ::
                                                    (MonadIO m, IsMediaControlsHost self) =>
                                                      self -> m Bool
mediaControlsHostGetControlsDependOnPageScaleFactor self
  = liftIO
      (ghcjs_dom_media_controls_host_get_controls_depend_on_page_scale_factor
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe
        "($1[\"optimizedFullscreenSupported\"] ? 1 : 0)"
        ghcjs_dom_media_controls_host_get_optimized_fullscreen_supported ::
        JSRef MediaControlsHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.optimizedFullscreenSupported Mozilla MediaControlsHost.optimizedFullscreenSupported documentation> 
mediaControlsHostGetOptimizedFullscreenSupported ::
                                                 (MonadIO m, IsMediaControlsHost self) =>
                                                   self -> m Bool
mediaControlsHostGetOptimizedFullscreenSupported self
  = liftIO
      (ghcjs_dom_media_controls_host_get_optimized_fullscreen_supported
         (unMediaControlsHost (toMediaControlsHost self)))
 
foreign import javascript unsafe "$1[\"fullscreenMode\"]"
        ghcjs_dom_media_controls_host_get_fullscreen_mode ::
        JSRef MediaControlsHost -> IO (JSRef FullscreenMode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost.fullscreenMode Mozilla MediaControlsHost.fullscreenMode documentation> 
mediaControlsHostGetFullscreenMode ::
                                   (MonadIO m, IsMediaControlsHost self) => self -> m FullscreenMode
mediaControlsHostGetFullscreenMode self
  = liftIO
      ((ghcjs_dom_media_controls_host_get_fullscreen_mode
          (unMediaControlsHost (toMediaControlsHost self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.MediaControlsHost (
  ) where
#endif
