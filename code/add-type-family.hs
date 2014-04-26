{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}

class Add a b where
    type SumTy a b
    plus :: a -> b -> SumTy a b

instance Add Integer Double where
    type SumTy Integer Double = Double
    plus x y = fromIntegral x + y

instance Add Double Integer where
    type SumTy Double Integer = Double
    plus x y = x + fromIntegral y

instance (Num a) => Add a a where
    type SumTy a a = a
    plus x y = x + y

main = print $ plus (5 :: Integer) (6 :: Double)

