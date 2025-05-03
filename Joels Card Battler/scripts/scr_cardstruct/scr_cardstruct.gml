// 
function card (_name, _sprite) constructor {
    name = _name;
    sprite = _sprite;
    cost = 0;
    treasure = 0;
    victorypoints = 0;
    action = 0;
    buy = 0;
    draw = 0;
    effect = function() {};
    afterturn_effect = function() {};
}

function victory_card(_name, _sprite, _cost, _victorypoints) : card() constructor {
    cost = _cost;
    victorypoints = _victorypoints;
}

function treasure_card(_name, _sprite, _cost, _treasure) : card() constructor {
    cost = _cost;
    treasure = _treasure;
}

function kingdom_card(_name, _sprite, _cost, _treasure, _vp, _action, _buy, _draw, _effect, _afterturn_effect)
{
    cost = _cost;
    treasure = _treasure;
    victorypoints = _vp;
    action = _action;
    buy = _buy;
    draw = _draw;
    effect = _effect;
    afterturn_effect = _afterturn_effect;
}