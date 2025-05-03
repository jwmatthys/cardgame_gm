// 
function card (_name, _sprite) constructor {
    name = _name;
    sprite = _sprite;
    type = "Card";
    cost = 0;
    treasure = 0;
    victorypoints = 0;
    action = 0;
    buy = 0;
    draw = 0;
    effect = function() {};
    defense = function() {};
}

function victory_card(_name, _sprite, _cost, _victorypoints) : card() constructor {
    name = _name;
    sprite = _sprite;
    type = "Victory";
    cost = _cost;
    victorypoints = _victorypoints;
}

function treasure_card(_name, _sprite, _cost, _treasure) : card() constructor {
    name = _name;
    sprite = _sprite;
    type = "Treasure";
    cost = _cost;
    treasure = _treasure;
}

// @desc Kingdom Card constructor
// @param {String} name
// @param {Sprite} sprite
// @param {Real} cost
// @param {Real} treasure
// @param {Real} victorypoints
// @param {Real} action
// @param {Real} buy
// @param {Real} draw
// @param {Function} effect
// @param {Function} defense

function kingdom_card(_name, _sprite, _cost, _treasure, _vp, _action, _buy, _draw, _effect, _defense) constructor {
    name = _name;
    sprite = _sprite;
    type = "Action";
    cost = _cost;
    treasure = _treasure;
    victorypoints = _vp;
    action = _action;
    buy = _buy;
    draw = _draw;
    effect = _effect;
    _defense = _defense;
}