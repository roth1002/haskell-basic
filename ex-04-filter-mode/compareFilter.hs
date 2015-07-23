filter' :: (Int -> Bool) -> [Int] -> [Int]
filter' cond lt =
    if null lt then lt
    else
        if cond $ head lt then head lt : (filter' cond $ tail lt)
        else filter' cond $ tail lt

main = do
    putStrLn $ show $ filter' (>5) [1,3,5,7]        -- 顯示 [7]
    putStrLn $ show $ filter' (<4) [1,3,5,7]     	-- 顯示 [1,3]