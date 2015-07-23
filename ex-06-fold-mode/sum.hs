sum' :: [Int] -> Int
sum' lt =
    if null $ tail lt
        then head lt
        else head lt + (sum' $ tail lt)
main = do
    putStrLn $ show $ sum' [1,3,5,7]        -- 顯示 16
    putStrLn $ show $ sum' [10,30,50,70]    -- 顯示 160