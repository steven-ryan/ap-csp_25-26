Challenge 1:

PROCEDURE buildHouse(width, height)
    positionX = 0
    positionY = 0

    repeat until positionX == width AND positionY == height
        draw from positionY to height
        positionY = height

        if positionX < width
            draw from positionX to positionX + 1
            draw from positionY to 0
            positionX = positionX + 1
            positionY = 0




PROCEDURE houseCost (floors, material)
    var materialsCost
    var totalCost

    if material == "metal"
        cost = 10

    if material == "stone"
        cost = 7.5

    if material == "wood"
        cost = 5

    totalCost = materialsCost^floors
    return totalCost