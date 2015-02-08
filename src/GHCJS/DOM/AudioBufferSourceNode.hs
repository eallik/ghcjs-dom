{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioBufferSourceNode
       (ghcjs_dom_audio_buffer_source_node_start,
        audioBufferSourceNodeStart,
        ghcjs_dom_audio_buffer_source_node_stop, audioBufferSourceNodeStop,
        ghcjs_dom_audio_buffer_source_node_note_on,
        audioBufferSourceNodeNoteOn,
        ghcjs_dom_audio_buffer_source_node_note_grain_on,
        audioBufferSourceNodeNoteGrainOn,
        ghcjs_dom_audio_buffer_source_node_note_off,
        audioBufferSourceNodeNoteOff, cUNSCHEDULED_STATE, cSCHEDULED_STATE,
        cPLAYING_STATE, cFINISHED_STATE,
        ghcjs_dom_audio_buffer_source_node_set_buffer,
        audioBufferSourceNodeSetBuffer,
        ghcjs_dom_audio_buffer_source_node_get_buffer,
        audioBufferSourceNodeGetBuffer,
        ghcjs_dom_audio_buffer_source_node_get_playback_state,
        audioBufferSourceNodeGetPlaybackState,
        ghcjs_dom_audio_buffer_source_node_get_gain,
        audioBufferSourceNodeGetGain,
        ghcjs_dom_audio_buffer_source_node_get_playback_rate,
        audioBufferSourceNodeGetPlaybackRate,
        ghcjs_dom_audio_buffer_source_node_set_loop,
        audioBufferSourceNodeSetLoop,
        ghcjs_dom_audio_buffer_source_node_get_loop,
        audioBufferSourceNodeGetLoop,
        ghcjs_dom_audio_buffer_source_node_set_loop_start,
        audioBufferSourceNodeSetLoopStart,
        ghcjs_dom_audio_buffer_source_node_get_loop_start,
        audioBufferSourceNodeGetLoopStart,
        ghcjs_dom_audio_buffer_source_node_set_loop_end,
        audioBufferSourceNodeSetLoopEnd,
        ghcjs_dom_audio_buffer_source_node_get_loop_end,
        audioBufferSourceNodeGetLoopEnd,
        ghcjs_dom_audio_buffer_source_node_set_looping,
        audioBufferSourceNodeSetLooping,
        ghcjs_dom_audio_buffer_source_node_get_looping,
        audioBufferSourceNodeGetLooping, audioBufferSourceNodeEnded,
        AudioBufferSourceNode, IsAudioBufferSourceNode,
        castToAudioBufferSourceNode, gTypeAudioBufferSourceNode,
        toAudioBufferSourceNode)
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

 
foreign import javascript unsafe "$1[\"start\"]($2, $3, $4)"
        ghcjs_dom_audio_buffer_source_node_start ::
        JSRef AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.start Mozilla AudioBufferSourceNode.start documentation> 
audioBufferSourceNodeStart ::
                           (MonadIO m, IsAudioBufferSourceNode self) =>
                             self -> Double -> Double -> Double -> m ()
audioBufferSourceNodeStart self when grainOffset grainDuration
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_start
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         when
         grainOffset
         grainDuration)
 
foreign import javascript unsafe "$1[\"stop\"]($2)"
        ghcjs_dom_audio_buffer_source_node_stop ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.stop Mozilla AudioBufferSourceNode.stop documentation> 
audioBufferSourceNodeStop ::
                          (MonadIO m, IsAudioBufferSourceNode self) => self -> Double -> m ()
audioBufferSourceNodeStop self when
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_stop
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         when)
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)"
        ghcjs_dom_audio_buffer_source_node_note_on ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOn Mozilla AudioBufferSourceNode.noteOn documentation> 
audioBufferSourceNodeNoteOn ::
                            (MonadIO m, IsAudioBufferSourceNode self) => self -> Double -> m ()
audioBufferSourceNodeNoteOn self when
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_note_on
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         when)
 
foreign import javascript unsafe "$1[\"noteGrainOn\"]($2, $3, $4)"
        ghcjs_dom_audio_buffer_source_node_note_grain_on ::
        JSRef AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteGrainOn Mozilla AudioBufferSourceNode.noteGrainOn documentation> 
audioBufferSourceNodeNoteGrainOn ::
                                 (MonadIO m, IsAudioBufferSourceNode self) =>
                                   self -> Double -> Double -> Double -> m ()
audioBufferSourceNodeNoteGrainOn self when grainOffset
  grainDuration
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_note_grain_on
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         when
         grainOffset
         grainDuration)
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)"
        ghcjs_dom_audio_buffer_source_node_note_off ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOff Mozilla AudioBufferSourceNode.noteOff documentation> 
audioBufferSourceNodeNoteOff ::
                             (MonadIO m, IsAudioBufferSourceNode self) => self -> Double -> m ()
audioBufferSourceNodeNoteOff self when
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_note_off
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         when)
cUNSCHEDULED_STATE = 0
cSCHEDULED_STATE = 1
cPLAYING_STATE = 2
cFINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        ghcjs_dom_audio_buffer_source_node_set_buffer ::
        JSRef AudioBufferSourceNode -> JSRef AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
audioBufferSourceNodeSetBuffer ::
                               (MonadIO m, IsAudioBufferSourceNode self, IsAudioBuffer val) =>
                                 self -> Maybe val -> m ()
audioBufferSourceNodeSetBuffer self val
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_set_buffer
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         (maybe jsNull (unAudioBuffer . toAudioBuffer) val))
 
foreign import javascript unsafe "$1[\"buffer\"]"
        ghcjs_dom_audio_buffer_source_node_get_buffer ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
audioBufferSourceNodeGetBuffer ::
                               (MonadIO m, IsAudioBufferSourceNode self) =>
                                 self -> m (Maybe AudioBuffer)
audioBufferSourceNodeGetBuffer self
  = liftIO
      ((ghcjs_dom_audio_buffer_source_node_get_buffer
          (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        ghcjs_dom_audio_buffer_source_node_get_playback_state ::
        JSRef AudioBufferSourceNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackState Mozilla AudioBufferSourceNode.playbackState documentation> 
audioBufferSourceNodeGetPlaybackState ::
                                      (MonadIO m, IsAudioBufferSourceNode self) => self -> m Word
audioBufferSourceNodeGetPlaybackState self
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_get_playback_state
         (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
 
foreign import javascript unsafe "$1[\"gain\"]"
        ghcjs_dom_audio_buffer_source_node_get_gain ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
audioBufferSourceNodeGetGain ::
                             (MonadIO m, IsAudioBufferSourceNode self) =>
                               self -> m (Maybe AudioParam)
audioBufferSourceNodeGetGain self
  = liftIO
      ((ghcjs_dom_audio_buffer_source_node_get_gain
          (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        ghcjs_dom_audio_buffer_source_node_get_playback_rate ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
audioBufferSourceNodeGetPlaybackRate ::
                                     (MonadIO m, IsAudioBufferSourceNode self) =>
                                       self -> m (Maybe AudioParam)
audioBufferSourceNodeGetPlaybackRate self
  = liftIO
      ((ghcjs_dom_audio_buffer_source_node_get_playback_rate
          (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_audio_buffer_source_node_set_loop ::
        JSRef AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
audioBufferSourceNodeSetLoop ::
                             (MonadIO m, IsAudioBufferSourceNode self) => self -> Bool -> m ()
audioBufferSourceNodeSetLoop self val
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_set_loop
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        ghcjs_dom_audio_buffer_source_node_get_loop ::
        JSRef AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
audioBufferSourceNodeGetLoop ::
                             (MonadIO m, IsAudioBufferSourceNode self) => self -> m Bool
audioBufferSourceNodeGetLoop self
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_get_loop
         (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
 
foreign import javascript unsafe "$1[\"loopStart\"] = $2;"
        ghcjs_dom_audio_buffer_source_node_set_loop_start ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
audioBufferSourceNodeSetLoopStart ::
                                  (MonadIO m, IsAudioBufferSourceNode self) =>
                                    self -> Double -> m ()
audioBufferSourceNodeSetLoopStart self val
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_set_loop_start
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         val)
 
foreign import javascript unsafe "$1[\"loopStart\"]"
        ghcjs_dom_audio_buffer_source_node_get_loop_start ::
        JSRef AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
audioBufferSourceNodeGetLoopStart ::
                                  (MonadIO m, IsAudioBufferSourceNode self) => self -> m Double
audioBufferSourceNodeGetLoopStart self
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_get_loop_start
         (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
 
foreign import javascript unsafe "$1[\"loopEnd\"] = $2;"
        ghcjs_dom_audio_buffer_source_node_set_loop_end ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
audioBufferSourceNodeSetLoopEnd ::
                                (MonadIO m, IsAudioBufferSourceNode self) => self -> Double -> m ()
audioBufferSourceNodeSetLoopEnd self val
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_set_loop_end
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         val)
 
foreign import javascript unsafe "$1[\"loopEnd\"]"
        ghcjs_dom_audio_buffer_source_node_get_loop_end ::
        JSRef AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
audioBufferSourceNodeGetLoopEnd ::
                                (MonadIO m, IsAudioBufferSourceNode self) => self -> m Double
audioBufferSourceNodeGetLoopEnd self
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_get_loop_end
         (unAudioBufferSourceNode (toAudioBufferSourceNode self)))
 
foreign import javascript unsafe "$1[\"looping\"] = $2;"
        ghcjs_dom_audio_buffer_source_node_set_looping ::
        JSRef AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
audioBufferSourceNodeSetLooping ::
                                (MonadIO m, IsAudioBufferSourceNode self) => self -> Bool -> m ()
audioBufferSourceNodeSetLooping self val
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_set_looping
         (unAudioBufferSourceNode (toAudioBufferSourceNode self))
         val)
 
foreign import javascript unsafe "($1[\"looping\"] ? 1 : 0)"
        ghcjs_dom_audio_buffer_source_node_get_looping ::
        JSRef AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
audioBufferSourceNodeGetLooping ::
                                (MonadIO m, IsAudioBufferSourceNode self) => self -> m Bool
audioBufferSourceNodeGetLooping self
  = liftIO
      (ghcjs_dom_audio_buffer_source_node_get_looping
         (unAudioBufferSourceNode (toAudioBufferSourceNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.ended Mozilla AudioBufferSourceNode.ended documentation> 
audioBufferSourceNodeEnded ::
                           (IsAudioBufferSourceNode self, IsEventTarget self) =>
                             EventName self Event
audioBufferSourceNodeEnded = unsafeEventName (toJSString "ended")
#else
module GHCJS.DOM.AudioBufferSourceNode (
  ) where
#endif
