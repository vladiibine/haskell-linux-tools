module LibSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception(evaluate)

import qualified Lib as L


spec = do
    describe "dummy/samity tests for lt-cat" $ do
        it "2 == 2 ?" $ do
            3 `shouldBe` 3
