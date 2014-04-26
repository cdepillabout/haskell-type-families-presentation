{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}

class Add a where
    add :: a -> a -> a

instance Add Integer where
    add x y = x + y

instance Add Double where
    add x y = x + y

main :: IO ()
main = do
        print $ add (5 :: Integer) 6
        print $ add (5.0 :: Double) 6.0
