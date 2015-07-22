sum' :: [Int] -> Int
sum' lt =
	if null lt
		then 0
	else head lt + ( sum' $ tail lt )

main = do
    putStrLn $ show $ sum' []         -- 顯示 0
    putStrLn $ show $ sum' [1, 2]     -- 顯示 3
    putStrLn $ show $ sum' [3, 4, 5]  -- 顯示 12