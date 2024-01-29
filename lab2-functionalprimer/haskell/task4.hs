ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask prompt
    else putStrLn ("you said: " ++ reverse line)
    if line == "quit"
      then putStrLn("quiting...")
main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt
  while line == ""
    prompt + "!"