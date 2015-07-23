map' :: (Int -> Int) -> [Int] -> [Int]
map' mapper lt =
    if null lt then lt
    else (mapper $ head lt) : (map' mapper $ tail lt)

main = do
    putStrLn $ show $ map' (+ 5) [1,3,5,7]        -- 顯示 [6,8,10,12]
    putStrLn $ show $ map' (* 10) [10,30,50,70]    -- 顯示 [100,300,500,700]