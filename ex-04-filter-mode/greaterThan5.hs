greaterThan5 :: [Int] -> [Int]
greaterThan5 lt =
    if null lt then lt
    else
        if head lt > 5 then head lt : (greaterThan5 $ tail lt)
        else greaterThan5 $ tail lt

main = do
    putStrLn $ show $ greaterThan5 []         	-- 顯示 []
    putStrLn $ show $ greaterThan5 [1, 2]     	-- 顯示 []
    putStrLn $ show $ greaterThan5 [3, 4, 5, 6] -- 顯示 [6]