--create inpFunc
inpFunc = [a..b] 

--Define applicatorFunc
applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (sum inpFunc)/5  
sgn ::(Ord s, Num s) => s -> Int
sgn x | x < 0 = -1
      | x == 0 = 0
      | x > 0 = 1

main = do
    let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))