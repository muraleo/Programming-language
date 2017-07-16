rever :: [Int]->[Int]
rever []  = []
rever [x] = [x]
rever (x:xs) = (rever xs)++[x]
