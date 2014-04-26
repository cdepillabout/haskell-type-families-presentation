{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}

class Add a b where
    plus :: a -> b -> c

instance Add Integer Double where
    plus x y = fromIntegral x + y

instance Add Double Integer where
    plus x y = x + fromIntegral y

main :: IO ()
main = do
        print $ plus (5 :: Integer) 6
        print $ plus (5.0 :: Double) 6.0

