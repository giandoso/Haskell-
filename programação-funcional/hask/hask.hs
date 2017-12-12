--Lista 1
--1

quadrado :: Int -> Int 
quadrado n = n * n

cubo :: Int -> Int
cubo n=n*n*n


--2

min1 :: Int -> Int -> Int
min1 a b 
 |a <= b = a
 |otherwise = b

maximo :: Int -> Int -> Int 
maximo a b
 |a >= b = a
 |otherwise = b

-- 4
min3 :: Int -> Int -> Int -> Int
min3 s t c 
 | (min1 s t) < c = (min1 s t)
 | otherwise = c



-- 5
corte :: Int -> Int 
corte n 
 | (maximo n 100) > 100 = 100
 | (min n 0)  < 0 = 0
 | otherwise = n

-- 6
unidades :: Int -> Int
unidades n = n `mod` 10

-- 7
dezenas :: Int -> Int
dezenas n = ((n `mod` 100) - (unidades n)) `div` 10

-- 8
centenas :: Int -> Int
centenas n = ((n `mod` 1000) - (dezenas n + unidades n)) `div` 100

milhar :: Int -> Int
milhar n = ((n `mod` 10000) - (dezenas n + unidades n + centenas n)) `div` 1000


--9 


digito :: Int -> Int -> Int 
digito n x 
 | x == 1 = unidades n
 | x == 2 = dezenas n
 | x == 3 = centenas n 
 | otherwise = 0
 


--10 
substituiAlgarismoUnidades :: Int -> Int -> Int
substituiAlgarismoUnidades a b = (a - (unidades a)) + unidades b 


--11
trocaDezUni :: Int -> Int 
trocaDezUni a =  (unidades a * 10) + (dezenas a) + (centenas a * 100) 

-- 12
multiplo :: Int -> Int -> Int
multiplo a b 
 | a `mod` b == 0 = 0
 | otherwise = a `mod` b

--13
quantia :: Int -> Int ->Int
quantia a b = a*100 + b

--14
euros :: Int -> Int
euros x 
 | x >= 100 = milhar x * 10 + centenas x
 | otherwise = 0

--15
centimos :: Int -> Int 
centimos x = dezenas x * 10 + unidades x
  

--- LISTA 2

--1 
--oDoMeio3 :: Int -> Int -> Int -> Int
--oDoMeio3 a b c
-- | a 


--2 
media :: Float -> Float -> Float -> Float
media a b c = (a+ b + c) /  ( 3)

-- 3
--acimaMedia :: Float -> Float -> Bool
--acimaMedia x < y = True

--quantosAcimaDaMedia :: Float -> Float -> Float -> Float
--quantosAcimaDaMedia a b c
-- | acimaMedia ((media a b c) ()) 

somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (a:b) = 1 + somaLista(b)
