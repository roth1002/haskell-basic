smallerThan4 :: [Int] -> [Int]
smallerThan4 lt =
    if null lt then lt
    else
        if head lt < 4 then head lt : (smallerThan4 $ tail lt)
        else smallerThan4 $ tail lt

main = do
    putStrLn $ show $ smallerThan4 []         	-- 顯示 []
    putStrLn $ show $ smallerThan4 [1, 2]     	-- 顯示 [1,2]
    putStrLn $ show $ smallerThan4 [3, 4, 5, 6] -- 顯示 [3]