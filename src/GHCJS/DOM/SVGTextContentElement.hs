{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTextContentElement
       (ghcjs_dom_svg_text_content_element_get_number_of_chars,
        svgTextContentElementGetNumberOfChars,
        ghcjs_dom_svg_text_content_element_get_computed_text_length,
        svgTextContentElementGetComputedTextLength,
        ghcjs_dom_svg_text_content_element_get_sub_string_length,
        svgTextContentElementGetSubStringLength,
        ghcjs_dom_svg_text_content_element_get_start_position_of_char,
        svgTextContentElementGetStartPositionOfChar,
        ghcjs_dom_svg_text_content_element_get_end_position_of_char,
        svgTextContentElementGetEndPositionOfChar,
        ghcjs_dom_svg_text_content_element_get_extent_of_char,
        svgTextContentElementGetExtentOfChar,
        ghcjs_dom_svg_text_content_element_get_rotation_of_char,
        svgTextContentElementGetRotationOfChar,
        ghcjs_dom_svg_text_content_element_get_char_num_at_position,
        svgTextContentElementGetCharNumAtPosition,
        ghcjs_dom_svg_text_content_element_select_sub_string,
        svgTextContentElementSelectSubString, cLENGTHADJUST_UNKNOWN,
        cLENGTHADJUST_SPACING, cLENGTHADJUST_SPACINGANDGLYPHS,
        ghcjs_dom_svg_text_content_element_get_text_length,
        svgTextContentElementGetTextLength,
        ghcjs_dom_svg_text_content_element_get_length_adjust,
        svgTextContentElementGetLengthAdjust, SVGTextContentElement,
        IsSVGTextContentElement, castToSVGTextContentElement,
        gTypeSVGTextContentElement, toSVGTextContentElement)
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

 
foreign import javascript unsafe "$1[\"getNumberOfChars\"]()"
        ghcjs_dom_svg_text_content_element_get_number_of_chars ::
        JSRef SVGTextContentElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.numberOfChars Mozilla SVGTextContentElement.numberOfChars documentation> 
svgTextContentElementGetNumberOfChars ::
                                      (MonadIO m, IsSVGTextContentElement self) => self -> m Int
svgTextContentElementGetNumberOfChars self
  = liftIO
      (ghcjs_dom_svg_text_content_element_get_number_of_chars
         (unSVGTextContentElement (toSVGTextContentElement self)))
 
foreign import javascript unsafe "$1[\"getComputedTextLength\"]()"
        ghcjs_dom_svg_text_content_element_get_computed_text_length ::
        JSRef SVGTextContentElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.computedTextLength Mozilla SVGTextContentElement.computedTextLength documentation> 
svgTextContentElementGetComputedTextLength ::
                                           (MonadIO m, IsSVGTextContentElement self) =>
                                             self -> m Float
svgTextContentElementGetComputedTextLength self
  = liftIO
      (ghcjs_dom_svg_text_content_element_get_computed_text_length
         (unSVGTextContentElement (toSVGTextContentElement self)))
 
foreign import javascript unsafe
        "$1[\"getSubStringLength\"]($2, $3)"
        ghcjs_dom_svg_text_content_element_get_sub_string_length ::
        JSRef SVGTextContentElement -> Word -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.subStringLength Mozilla SVGTextContentElement.subStringLength documentation> 
svgTextContentElementGetSubStringLength ::
                                        (MonadIO m, IsSVGTextContentElement self) =>
                                          self -> Word -> Word -> m Float
svgTextContentElementGetSubStringLength self offset length
  = liftIO
      (ghcjs_dom_svg_text_content_element_get_sub_string_length
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset
         length)
 
foreign import javascript unsafe
        "$1[\"getStartPositionOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_start_position_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.startPositionOfChar Mozilla SVGTextContentElement.startPositionOfChar documentation> 
svgTextContentElementGetStartPositionOfChar ::
                                            (MonadIO m, IsSVGTextContentElement self) =>
                                              self -> Word -> m (Maybe SVGPoint)
svgTextContentElementGetStartPositionOfChar self offset
  = liftIO
      ((ghcjs_dom_svg_text_content_element_get_start_position_of_char
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getEndPositionOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_end_position_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.endPositionOfChar Mozilla SVGTextContentElement.endPositionOfChar documentation> 
svgTextContentElementGetEndPositionOfChar ::
                                          (MonadIO m, IsSVGTextContentElement self) =>
                                            self -> Word -> m (Maybe SVGPoint)
svgTextContentElementGetEndPositionOfChar self offset
  = liftIO
      ((ghcjs_dom_svg_text_content_element_get_end_position_of_char
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getExtentOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_extent_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.extentOfChar Mozilla SVGTextContentElement.extentOfChar documentation> 
svgTextContentElementGetExtentOfChar ::
                                     (MonadIO m, IsSVGTextContentElement self) =>
                                       self -> Word -> m (Maybe SVGRect)
svgTextContentElementGetExtentOfChar self offset
  = liftIO
      ((ghcjs_dom_svg_text_content_element_get_extent_of_char
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRotationOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_rotation_of_char ::
        JSRef SVGTextContentElement -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.rotationOfChar Mozilla SVGTextContentElement.rotationOfChar documentation> 
svgTextContentElementGetRotationOfChar ::
                                       (MonadIO m, IsSVGTextContentElement self) =>
                                         self -> Word -> m Float
svgTextContentElementGetRotationOfChar self offset
  = liftIO
      (ghcjs_dom_svg_text_content_element_get_rotation_of_char
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset)
 
foreign import javascript unsafe "$1[\"getCharNumAtPosition\"]($2)"
        ghcjs_dom_svg_text_content_element_get_char_num_at_position ::
        JSRef SVGTextContentElement -> JSRef SVGPoint -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.charNumAtPosition Mozilla SVGTextContentElement.charNumAtPosition documentation> 
svgTextContentElementGetCharNumAtPosition ::
                                          (MonadIO m, IsSVGTextContentElement self,
                                           IsSVGPoint point) =>
                                            self -> Maybe point -> m Int
svgTextContentElementGetCharNumAtPosition self point
  = liftIO
      (ghcjs_dom_svg_text_content_element_get_char_num_at_position
         (unSVGTextContentElement (toSVGTextContentElement self))
         (maybe jsNull (unSVGPoint . toSVGPoint) point))
 
foreign import javascript unsafe "$1[\"selectSubString\"]($2, $3)"
        ghcjs_dom_svg_text_content_element_select_sub_string ::
        JSRef SVGTextContentElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.selectSubString Mozilla SVGTextContentElement.selectSubString documentation> 
svgTextContentElementSelectSubString ::
                                     (MonadIO m, IsSVGTextContentElement self) =>
                                       self -> Word -> Word -> m ()
svgTextContentElementSelectSubString self offset length
  = liftIO
      (ghcjs_dom_svg_text_content_element_select_sub_string
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset
         length)
cLENGTHADJUST_UNKNOWN = 0
cLENGTHADJUST_SPACING = 1
cLENGTHADJUST_SPACINGANDGLYPHS = 2
 
foreign import javascript unsafe "$1[\"textLength\"]"
        ghcjs_dom_svg_text_content_element_get_text_length ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
svgTextContentElementGetTextLength ::
                                   (MonadIO m, IsSVGTextContentElement self) =>
                                     self -> m (Maybe SVGAnimatedLength)
svgTextContentElementGetTextLength self
  = liftIO
      ((ghcjs_dom_svg_text_content_element_get_text_length
          (unSVGTextContentElement (toSVGTextContentElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lengthAdjust\"]"
        ghcjs_dom_svg_text_content_element_get_length_adjust ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
svgTextContentElementGetLengthAdjust ::
                                     (MonadIO m, IsSVGTextContentElement self) =>
                                       self -> m (Maybe SVGAnimatedEnumeration)
svgTextContentElementGetLengthAdjust self
  = liftIO
      ((ghcjs_dom_svg_text_content_element_get_length_adjust
          (unSVGTextContentElement (toSVGTextContentElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGTextContentElement (
  ) where
#endif
