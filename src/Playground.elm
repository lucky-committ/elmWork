module Playground exposing (main)
import Html


escapeEarth myVelocity mySpeed =
    let 
        escapeVelocityInKmPerSec = 11.186
        orbitalSpeedInKmPerSec = 7.67
    in
    if myVelocity > escapeVelocityInKmPerSec then
     "godspeed"
    else if mySpeed == orbitalSpeedInKmPerSec then
     "in orbit"
    else
    "come back"

computeSpeed distance time = 
    distance / time


computeTime startTime endTime =
    endTime - startTime

main : Html.Html msg
main = 
    computeTime 2 3
        |> computeSpeed 7.76
        |> escapeEarth 11
        |> Html.text
