map5To :: [Int] -> [Int]
map5To lt =
    if null lt then lt
    else head lt + 5 : (map5To $ tail lt)

main = do
    putStrLn $ show $ map5To [1,3,5,7]        -- 顯示 [6,8,10,12]
    putStrLn $ show $ map5To [10,30,50,70]    -- 顯示 [15,35,55,75]