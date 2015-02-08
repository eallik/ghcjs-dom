{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ImageData
       (ghcjs_dom_image_data_new, imageDataNew,
        ghcjs_dom_image_data_get_width, imageDataGetWidth,
        ghcjs_dom_image_data_get_height, imageDataGetHeight,
        ghcjs_dom_image_data_get_data, imageDataGetData, ImageData,
        IsImageData, castToImageData, gTypeImageData, toImageData)
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
        "new window[\"ImageData\"]($1, $2,\n$3)" ghcjs_dom_image_data_new
        :: JSRef Uint8ClampedArray -> Word -> Word -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
imageDataNew ::
             (MonadIO m, IsUint8ClampedArray data') =>
               Maybe data' -> Word -> Word -> m ImageData
imageDataNew data' sw sh
  = liftIO
      (ghcjs_dom_image_data_new
         (maybe jsNull (unUint8ClampedArray . toUint8ClampedArray) data')
         sw
         sh
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"ImageData\"]($1, $2)" ghcjs_dom_image_data_new' ::
        Word -> Word -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
imageDataNew' :: (MonadIO m) => Word -> Word -> m ImageData
imageDataNew' sw sh
  = liftIO (ghcjs_dom_image_data_new' sw sh >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_image_data_get_width :: JSRef ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.width Mozilla ImageData.width documentation> 
imageDataGetWidth :: (MonadIO m, IsImageData self) => self -> m Int
imageDataGetWidth self
  = liftIO
      (ghcjs_dom_image_data_get_width (unImageData (toImageData self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_image_data_get_height :: JSRef ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
imageDataGetHeight ::
                   (MonadIO m, IsImageData self) => self -> m Int
imageDataGetHeight self
  = liftIO
      (ghcjs_dom_image_data_get_height (unImageData (toImageData self)))
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_image_data_get_data ::
        JSRef ImageData -> IO (JSRef Uint8ClampedArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.data Mozilla ImageData.data documentation> 
imageDataGetData ::
                 (MonadIO m, IsImageData self) =>
                   self -> m (Maybe Uint8ClampedArray)
imageDataGetData self
  = liftIO
      ((ghcjs_dom_image_data_get_data (unImageData (toImageData self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.ImageData (
  ) where
#endif
