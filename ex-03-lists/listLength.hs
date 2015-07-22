length' :: [a] -> Int
length' lt =
    if null lt
        then 0
    else 1 + (length' $ tail lt)

main = do
    putStrLn $ show $ length' []         -- 顯示 0
    putStrLn $ show $ length' [1, 2]     -- 顯示 2
    putStrLn $ show $ length' [3, 4, 5]  -- 顯示 3