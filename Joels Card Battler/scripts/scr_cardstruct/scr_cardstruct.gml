function card () constructor {
    name = "";
    sprite = "";
    cost = 0;
    treasure = 0;
    victorypoints = 0;
    action = 0;
    buy = 0;
    draw = 0;
    effect = function() {};
    afterturn_effect = function() {};
}

function victory_card(_name, _cost, _victorypoints) : card() constructor {
    name = _name;
    cost = _cost;
    victorypoints = _victorypoints;
}

function treasure_card(_name, _cost, _treasure) : card() constructor {
    name = _name;
    cost = _cost;
    treasure = _treasure;
}
