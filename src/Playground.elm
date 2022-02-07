module Playground exposing (main)
import Html


escapeEarth myVelocity mySpeed fuelStatus =
    let 
        escapeVelocityInKmPerSec = 11.186
        orbitalSpeedInKmPerSec = 7.67
        whereToLand  =
            if fuelStatus =="low" then 
                "Land on droneship"
                else
                "Land on Launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
     "godspeed"
    else if mySpeed == orbitalSpeedInKmPerSec then
     "in orbit"
    else
    whereToLand

computeSpeed distance time = 
    distance / time


computeTime startTime endTime =
    endTime - startTime

main : Html.Html msg
main = 
    escapeEarth 10 6.7 "high"
        |>Html.text