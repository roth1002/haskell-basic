import System.IO

prompt text = do
    putStr text
    hFlush stdout

descOddEven number =
    if number `mod` 2 == 0 then "偶數" else "奇數"

main = do
    prompt "請輸入整數："
    input <- getLine
    let desc = descOddEven (read input::Int)
    putStrLn (input ++ "是" ++ desc ++ "！")