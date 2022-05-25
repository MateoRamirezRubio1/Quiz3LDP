import Data.Char

cuanto :: [Int] -> Int -> [Int]
cuanto [] n = []
cuanto (x:xs) n = if x == n then [1] ++ cuanto xs n else [0] ++ cuanto xs n 

repite :: Int -> Int -> Int
repite x y = sum(cuanto(map digitToInt(show(x))) y)

main = do
  putStrLn "Ingrese una lista de numeros de corrido sin espacios: "
  lista <- getLine
  putStrLn "Número de un dígito el cual desea saber cuanto se repite?:"
  numero <- getLine
  
  let list = read lista :: Int
  let num = read numero :: Int

  putStrLn ("El número " ++ numero ++ " se repite:")
  print(repite list num)
