import Data.Char

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

-- 実際にずらす関数
shift :: Int -> Char -> Char 
shift n c 
    | isLower c = int2let ((let2int c + n) `mod` 26
    | otherwise = c

