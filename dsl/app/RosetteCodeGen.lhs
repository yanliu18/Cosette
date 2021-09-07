 Coq Code generation

 It is the entrance of the program, so it is not a module.

> import CosetteParser
> import ToRosette
> import Text.Parsec (parse,ParseError)
> import Text.Parsec.String.Combinator
> import System.IO

> import Data.Char

> getResult :: String -> String
> getResult p =
>   case cs of
>     Right cs' ->
>       case genRos cs' of
>         Right ans -> ans
>         Left err -> "ERROR: " ++ (show err) ++ "\n" ++ (show cs)
>     Left err -> "ERROR: " ++ (show err)
>   where
>     cs = parseCosette p

> main = do
>   hSetEncoding stdout utf8
>   cont <- getContents
>   (putStr $ getResult cont)
