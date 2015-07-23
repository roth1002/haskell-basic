multiplyTogether :: [Int] -> Int
multiplyTogether lt =
    if null $ tail lt
        then head lt
        else head lt * (multiplyTogether $ tail lt)

main = do
    putStrLn $ show $ multiplyTogether [1,3,5,7]        -- 顯示 105
    putStrLn $ show $ multiplyTogether [10,30,50,70]    -- 顯示 1050000