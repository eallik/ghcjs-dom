{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBKeyRange
       (ghcjs_dom_idb_key_range_only, idbKeyRangeOnly,
        ghcjs_dom_idb_key_range_lower_bound, idbKeyRangeLowerBound,
        ghcjs_dom_idb_key_range_upper_bound, idbKeyRangeUpperBound,
        ghcjs_dom_idb_key_range_bound, idbKeyRangeBound,
        ghcjs_dom_idb_key_range_get_lower, idbKeyRangeGetLower,
        ghcjs_dom_idb_key_range_get_upper, idbKeyRangeGetUpper,
        ghcjs_dom_idb_key_range_get_lower_open, idbKeyRangeGetLowerOpen,
        ghcjs_dom_idb_key_range_get_upper_open, idbKeyRangeGetUpperOpen,
        IDBKeyRange, IsIDBKeyRange, castToIDBKeyRange, gTypeIDBKeyRange,
        toIDBKeyRange)
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

 
foreign import javascript unsafe "$1[\"only\"]($2)"
        ghcjs_dom_idb_key_range_only ::
        JSRef IDBKeyRange -> JSRef a -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
idbKeyRangeOnly ::
                (MonadIO m, IsIDBKeyRange self) =>
                  self -> JSRef a -> m (Maybe IDBKeyRange)
idbKeyRangeOnly self value
  = liftIO
      ((ghcjs_dom_idb_key_range_only (unIDBKeyRange (toIDBKeyRange self))
          value)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lowerBound\"]($2, $3)"
        ghcjs_dom_idb_key_range_lower_bound ::
        JSRef IDBKeyRange -> JSRef a -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
idbKeyRangeLowerBound ::
                      (MonadIO m, IsIDBKeyRange self) =>
                        self -> JSRef a -> Bool -> m (Maybe IDBKeyRange)
idbKeyRangeLowerBound self lower open
  = liftIO
      ((ghcjs_dom_idb_key_range_lower_bound
          (unIDBKeyRange (toIDBKeyRange self))
          lower
          open)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"upperBound\"]($2, $3)"
        ghcjs_dom_idb_key_range_upper_bound ::
        JSRef IDBKeyRange -> JSRef a -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
idbKeyRangeUpperBound ::
                      (MonadIO m, IsIDBKeyRange self) =>
                        self -> JSRef a -> Bool -> m (Maybe IDBKeyRange)
idbKeyRangeUpperBound self upper open
  = liftIO
      ((ghcjs_dom_idb_key_range_upper_bound
          (unIDBKeyRange (toIDBKeyRange self))
          upper
          open)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"bound\"]($2, $3, $4, $5)"
        ghcjs_dom_idb_key_range_bound ::
        JSRef IDBKeyRange ->
          JSRef a -> JSRef a -> Bool -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
idbKeyRangeBound ::
                 (MonadIO m, IsIDBKeyRange self) =>
                   self -> JSRef a -> JSRef a -> Bool -> Bool -> m (Maybe IDBKeyRange)
idbKeyRangeBound self lower upper lowerOpen upperOpen
  = liftIO
      ((ghcjs_dom_idb_key_range_bound
          (unIDBKeyRange (toIDBKeyRange self))
          lower
          upper
          lowerOpen
          upperOpen)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lower\"]"
        ghcjs_dom_idb_key_range_get_lower ::
        JSRef IDBKeyRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lower Mozilla IDBKeyRange.lower documentation> 
idbKeyRangeGetLower ::
                    (MonadIO m, IsIDBKeyRange self) => self -> m (JSRef a)
idbKeyRangeGetLower self
  = liftIO
      (ghcjs_dom_idb_key_range_get_lower
         (unIDBKeyRange (toIDBKeyRange self)))
 
foreign import javascript unsafe "$1[\"upper\"]"
        ghcjs_dom_idb_key_range_get_upper ::
        JSRef IDBKeyRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upper Mozilla IDBKeyRange.upper documentation> 
idbKeyRangeGetUpper ::
                    (MonadIO m, IsIDBKeyRange self) => self -> m (JSRef a)
idbKeyRangeGetUpper self
  = liftIO
      (ghcjs_dom_idb_key_range_get_upper
         (unIDBKeyRange (toIDBKeyRange self)))
 
foreign import javascript unsafe "($1[\"lowerOpen\"] ? 1 : 0)"
        ghcjs_dom_idb_key_range_get_lower_open ::
        JSRef IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerOpen Mozilla IDBKeyRange.lowerOpen documentation> 
idbKeyRangeGetLowerOpen ::
                        (MonadIO m, IsIDBKeyRange self) => self -> m Bool
idbKeyRangeGetLowerOpen self
  = liftIO
      (ghcjs_dom_idb_key_range_get_lower_open
         (unIDBKeyRange (toIDBKeyRange self)))
 
foreign import javascript unsafe "($1[\"upperOpen\"] ? 1 : 0)"
        ghcjs_dom_idb_key_range_get_upper_open ::
        JSRef IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperOpen Mozilla IDBKeyRange.upperOpen documentation> 
idbKeyRangeGetUpperOpen ::
                        (MonadIO m, IsIDBKeyRange self) => self -> m Bool
idbKeyRangeGetUpperOpen self
  = liftIO
      (ghcjs_dom_idb_key_range_get_upper_open
         (unIDBKeyRange (toIDBKeyRange self)))
#else
module GHCJS.DOM.IDBKeyRange (
  ) where
#endif
