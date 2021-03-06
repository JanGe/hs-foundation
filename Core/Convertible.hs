-- |
-- Module      : Core.Convertible
-- License     : BSD-style
-- Maintainer  : Vincent Hanquez <vincent@snarc.org>
-- Stability   : experimental
-- Portability : portable
--
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
module Core.Convertible
    ( Convertible(..)
    ) where

import Core.Internal.Base

-- | Class of things that can be converted from a to b
class Convertible a b where
    type Convert a b
    convert :: a -> Convert a b

instance Convertible a a where
    type Convert a a = a
    convert = id
