{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSecurityPolicy
       (ghcjs_dom_dom_security_policy_allows_connection_to,
        domSecurityPolicyAllowsConnectionTo,
        ghcjs_dom_dom_security_policy_allows_font_from,
        domSecurityPolicyAllowsFontFrom,
        ghcjs_dom_dom_security_policy_allows_form_action,
        domSecurityPolicyAllowsFormAction,
        ghcjs_dom_dom_security_policy_allows_frame_from,
        domSecurityPolicyAllowsFrameFrom,
        ghcjs_dom_dom_security_policy_allows_image_from,
        domSecurityPolicyAllowsImageFrom,
        ghcjs_dom_dom_security_policy_allows_media_from,
        domSecurityPolicyAllowsMediaFrom,
        ghcjs_dom_dom_security_policy_allows_object_from,
        domSecurityPolicyAllowsObjectFrom,
        ghcjs_dom_dom_security_policy_allows_plugin_type,
        domSecurityPolicyAllowsPluginType,
        ghcjs_dom_dom_security_policy_allows_script_from,
        domSecurityPolicyAllowsScriptFrom,
        ghcjs_dom_dom_security_policy_allows_style_from,
        domSecurityPolicyAllowsStyleFrom,
        ghcjs_dom_dom_security_policy_get_allows_eval,
        domSecurityPolicyGetAllowsEval,
        ghcjs_dom_dom_security_policy_get_allows_inline_script,
        domSecurityPolicyGetAllowsInlineScript,
        ghcjs_dom_dom_security_policy_get_allows_inline_style,
        domSecurityPolicyGetAllowsInlineStyle,
        ghcjs_dom_dom_security_policy_get_is_active,
        domSecurityPolicyGetIsActive,
        ghcjs_dom_dom_security_policy_get_report_ur_is,
        domSecurityPolicyGetReportURIs, DOMSecurityPolicy,
        IsDOMSecurityPolicy, castToDOMSecurityPolicy,
        gTypeDOMSecurityPolicy, toDOMSecurityPolicy)
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
        "($1[\"allowsConnectionTo\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_connection_to ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsConnectionTo Mozilla SecurityPolicy.allowsConnectionTo documentation> 
domSecurityPolicyAllowsConnectionTo ::
                                    (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                      self -> url -> m Bool
domSecurityPolicyAllowsConnectionTo self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_connection_to
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_font_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFontFrom Mozilla SecurityPolicy.allowsFontFrom documentation> 
domSecurityPolicyAllowsFontFrom ::
                                (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                  self -> url -> m Bool
domSecurityPolicyAllowsFontFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_font_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_form_action ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFormAction Mozilla SecurityPolicy.allowsFormAction documentation> 
domSecurityPolicyAllowsFormAction ::
                                  (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> m Bool
domSecurityPolicyAllowsFormAction self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_form_action
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_frame_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFrameFrom Mozilla SecurityPolicy.allowsFrameFrom documentation> 
domSecurityPolicyAllowsFrameFrom ::
                                 (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> m Bool
domSecurityPolicyAllowsFrameFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_frame_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_image_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsImageFrom Mozilla SecurityPolicy.allowsImageFrom documentation> 
domSecurityPolicyAllowsImageFrom ::
                                 (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> m Bool
domSecurityPolicyAllowsImageFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_image_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_media_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsMediaFrom Mozilla SecurityPolicy.allowsMediaFrom documentation> 
domSecurityPolicyAllowsMediaFrom ::
                                 (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> m Bool
domSecurityPolicyAllowsMediaFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_media_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_object_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsObjectFrom Mozilla SecurityPolicy.allowsObjectFrom documentation> 
domSecurityPolicyAllowsObjectFrom ::
                                  (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> m Bool
domSecurityPolicyAllowsObjectFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_object_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_plugin_type ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsPluginType Mozilla SecurityPolicy.allowsPluginType documentation> 
domSecurityPolicyAllowsPluginType ::
                                  (MonadIO m, IsDOMSecurityPolicy self, ToJSString type') =>
                                    self -> type' -> m Bool
domSecurityPolicyAllowsPluginType self type'
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_plugin_type
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString type'))
 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_script_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsScriptFrom Mozilla SecurityPolicy.allowsScriptFrom documentation> 
domSecurityPolicyAllowsScriptFrom ::
                                  (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> m Bool
domSecurityPolicyAllowsScriptFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_script_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_style_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsStyleFrom Mozilla SecurityPolicy.allowsStyleFrom documentation> 
domSecurityPolicyAllowsStyleFrom ::
                                 (MonadIO m, IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> m Bool
domSecurityPolicyAllowsStyleFrom self url
  = liftIO
      (ghcjs_dom_dom_security_policy_allows_style_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))
 
foreign import javascript unsafe "($1[\"allowsEval\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_eval ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsEval Mozilla SecurityPolicy.allowsEval documentation> 
domSecurityPolicyGetAllowsEval ::
                               (MonadIO m, IsDOMSecurityPolicy self) => self -> m Bool
domSecurityPolicyGetAllowsEval self
  = liftIO
      (ghcjs_dom_dom_security_policy_get_allows_eval
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_inline_script ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineScript Mozilla SecurityPolicy.allowsInlineScript documentation> 
domSecurityPolicyGetAllowsInlineScript ::
                                       (MonadIO m, IsDOMSecurityPolicy self) => self -> m Bool
domSecurityPolicyGetAllowsInlineScript self
  = liftIO
      (ghcjs_dom_dom_security_policy_get_allows_inline_script
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_inline_style ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineStyle Mozilla SecurityPolicy.allowsInlineStyle documentation> 
domSecurityPolicyGetAllowsInlineStyle ::
                                      (MonadIO m, IsDOMSecurityPolicy self) => self -> m Bool
domSecurityPolicyGetAllowsInlineStyle self
  = liftIO
      (ghcjs_dom_dom_security_policy_get_allows_inline_style
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
 
foreign import javascript unsafe "($1[\"isActive\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_is_active ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.isActive Mozilla SecurityPolicy.isActive documentation> 
domSecurityPolicyGetIsActive ::
                             (MonadIO m, IsDOMSecurityPolicy self) => self -> m Bool
domSecurityPolicyGetIsActive self
  = liftIO
      (ghcjs_dom_dom_security_policy_get_is_active
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        ghcjs_dom_dom_security_policy_get_report_ur_is ::
        JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.reportURIs Mozilla SecurityPolicy.reportURIs documentation> 
domSecurityPolicyGetReportURIs ::
                               (MonadIO m, IsDOMSecurityPolicy self) =>
                                 self -> m (Maybe DOMStringList)
domSecurityPolicyGetReportURIs self
  = liftIO
      ((ghcjs_dom_dom_security_policy_get_report_ur_is
          (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.DOMSecurityPolicy (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
#endif
