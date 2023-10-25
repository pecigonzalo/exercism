module Accumulate

let accumulate (func: 'a -> 'b) (input: 'a list): 'b list =
    let rec innerLoop acc =
        function
        | [] -> acc
        | head :: tail -> innerLoop (func head :: acc) tail

    innerLoop [] input |> List.rev
