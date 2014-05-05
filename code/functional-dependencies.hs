{-# LANGUAGE FunctionalDependencies, FlexibleInstances, MultiParamTypeClasses #-}

class Add a b c | a b -> c where
    plus :: a -> b -> c

instance Add Integer Double Double where
    plus x y = fromIntegral x + y

instance Add Double Integer Double where
    plus x y = x + fromIntegral y

instance (Num a) => Add a a a where
    plus x y = x + y

main = print $ plus (5 :: Integer) (6 :: Double)


