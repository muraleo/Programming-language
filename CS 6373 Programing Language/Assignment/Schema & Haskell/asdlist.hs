compar ::Int -> [Int] -> [Int]
compar n [] = [n]
compar n (x:xs)
	| n <= x    = n:x:xs
	| otherwise = x:compar n xs 

asdlist :: [Int] -> [Int]
asdlist [] = []
asdlist [x] = [x]
asdlist (x:xs) = compar x (asdlist xs)
