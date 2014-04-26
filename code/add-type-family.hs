{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}

class Add a b where
    type SumTy a b
    add :: a -> b -> SumTy a b

instance Add Integer Double where
    type SumTy Integer Double = Double
    add x y = fromIntegral x + y

instance Add Double Integer where
    type SumTy Double Integer = Double
    add x y = x + fromIntegral y

instance (Num a) => Add a a where
    type SumTy a a = a
    add x y = x + y

main :: IO ()
main = putStrLn "Hello"

