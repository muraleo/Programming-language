member ::Int->[Int]->Bool
member n     [] = False
member n (x:xs) = if n == x
		     then True
		     else member n xs

unionnn ::[Int]->[Int]->[Int]
unionnn [] xs = xs
unionnn xs [] = xs
unionnn xs  (y:ys) = if member y xs
			then unionnn xs ys
			else (unionnn xs ys)++[y]
