{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}

class Add a where
    plus :: a -> a -> a

instance Add Integer where
    plus x y = x + y

instance Add Double where
    plus x y = x + y

main :: IO ()
main = do
        print $ plus (5 :: Integer) 6
        print $ plus (5.0 :: Double) 6.0
