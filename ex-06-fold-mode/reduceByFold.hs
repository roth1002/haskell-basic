fold :: (Int -> Int -> Int) -> [Int] -> Int
fold fn lt =
    if null $ tail lt
        then head lt
        else fn (head lt) (fold fn $ tail lt)

main = do
    putStrLn $ show $ fold (*) [1,3,5,7]        -- 顯示 105
    putStrLn $ show $ fold (+) [10,30,50,70]    -- 顯示 160