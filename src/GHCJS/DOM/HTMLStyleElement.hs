{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLStyleElement
       (ghcjs_dom_html_style_element_set_disabled,
        htmlStyleElementSetDisabled,
        ghcjs_dom_html_style_element_get_disabled,
        htmlStyleElementGetDisabled,
        ghcjs_dom_html_style_element_set_media, htmlStyleElementSetMedia,
        ghcjs_dom_html_style_element_get_media, htmlStyleElementGetMedia,
        ghcjs_dom_html_style_element_get_sheet, htmlStyleElementGetSheet,
        HTMLStyleElement, IsHTMLStyleElement, castToHTMLStyleElement,
        gTypeHTMLStyleElement, toHTMLStyleElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_style_element_set_disabled ::
        JSRef HTMLStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
htmlStyleElementSetDisabled ::
                            (MonadIO m, IsHTMLStyleElement self) => self -> Bool -> m ()
htmlStyleElementSetDisabled self val
  = liftIO
      (ghcjs_dom_html_style_element_set_disabled
         (unHTMLStyleElement (toHTMLStyleElement self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_style_element_get_disabled ::
        JSRef HTMLStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
htmlStyleElementGetDisabled ::
                            (MonadIO m, IsHTMLStyleElement self) => self -> m Bool
htmlStyleElementGetDisabled self
  = liftIO
      (ghcjs_dom_html_style_element_get_disabled
         (unHTMLStyleElement (toHTMLStyleElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_style_element_set_media ::
        JSRef HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
htmlStyleElementSetMedia ::
                         (MonadIO m, IsHTMLStyleElement self, ToJSString val) =>
                           self -> val -> m ()
htmlStyleElementSetMedia self val
  = liftIO
      (ghcjs_dom_html_style_element_set_media
         (unHTMLStyleElement (toHTMLStyleElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_style_element_get_media ::
        JSRef HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
htmlStyleElementGetMedia ::
                         (MonadIO m, IsHTMLStyleElement self, FromJSString result) =>
                           self -> m result
htmlStyleElementGetMedia self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_style_element_get_media
            (unHTMLStyleElement (toHTMLStyleElement self))))
 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_html_style_element_get_sheet ::
        JSRef HTMLStyleElement -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.sheet Mozilla HTMLStyleElement.sheet documentation> 
htmlStyleElementGetSheet ::
                         (MonadIO m, IsHTMLStyleElement self) =>
                           self -> m (Maybe StyleSheet)
htmlStyleElementGetSheet self
  = liftIO
      ((ghcjs_dom_html_style_element_get_sheet
          (unHTMLStyleElement (toHTMLStyleElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLStyleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
