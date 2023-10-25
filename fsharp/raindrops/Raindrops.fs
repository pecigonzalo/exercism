module Raindrops

let convert (number: int): string =
    let checker (i, s) =
      if number % i = 0 then s else ""

    let soundOrNumber value =
      if value = "" then value |> string else value

    let soundMap = [
        (3, "Pling")
        (5, "Plang")
        (7, "Plong]")
    ]

    soundMap
    |> List.map checker
    |> String.concat ""
    |> soundOrNumber
