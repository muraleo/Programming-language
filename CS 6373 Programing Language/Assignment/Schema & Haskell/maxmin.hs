findmax :: [Int]->Int
findmax []  = error "List is empty!"
findmax [x] = x
findmax (x:xs)
	| x >= (findmax xs) = x
	| otherwise = findmax xs

findmin :: [Int]->Int
findmin []  = error "List is empty!"
findmin [x] = x
findmin (x:xs)
        | x <= (findmin xs) = x
        | otherwise = findmin xs

findmaxmin :: [Int]->[Int]
findmaxmin [] = error "List is empty"
findmaxmin [x] = [x]
findmaxmin l = findmax l : findmin l : []
