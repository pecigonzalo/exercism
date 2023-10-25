module QueenAttack

let create (position: int * int) =
    let (row, column) = position

    if  0 > row || row > 8 then false
    elif 0 > column || column > 8 then false
    else true

let canAttack (queen1: int * int) (queen2: int * int) =
    if queen1 = queen2 then false
    else
        let (q1x, q1y) =  queen1
        let (q2x, q2y)= queen2

        q1x = q2x
        || q1y = q2y
        || (q1x - q2x |> abs) = (q1y - q2y |> abs)
