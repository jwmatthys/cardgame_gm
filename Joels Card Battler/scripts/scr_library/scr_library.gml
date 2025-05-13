library_base = {
    copper : new treasure_card("Copper", "", 0, 1),
    silver : new treasure_card("Silver", "", 3, 2),
    gold : new treasure_card("Gold", "", 6, 3),
    province : new victory_card("Province", "", 8, 6),
    duchy : new victory_card("Duchy", "", 5, 3),
    estate : new victory_card("Estate", "", 2, 1),
    curse : new victory_card("Curse", "", 0, -1),
}

function none() {
    return 0;
}

// rename these for each card
function action_cellar() {
    return 0;
}

function action_merchant() {
    return 0;
}

function action_militia() {
    return 0;
}

function action_mine() {
    return 0;
}

function action_moat() {
    return 0;
}

function action_remodel() {
    return 0;
}

function action_workshop() {
    return 0;
}

// kingdom_card(_name, _sprite, _cost, _treasure, _vp, _action, _buy, _draw, _effect, _defense)
library_kingdom = ds_list_create();

ds_list_add(library_kingdom, new kingdom_card("Cellar", "", 2, 0, 0, 1, 0, 0, action_cellar()));
ds_list_add(library_kingdom, new kingdom_card("Market", "", 5, 1, 0, 1, 1, 1, none()));
ds_list_add(library_kingdom, new kingdom_card("Merchant", "", 3, 0, 0, 1, 0, 1, action_merchant()));
ds_list_add(library_kingdom, new kingdom_card("Militia", "", 4, 2, 0, 0, 0, 0, action_militia()));
ds_list_add(library_kingdom, new kingdom_card("Mine", "", 5, 0, 0, 0, 0, 0, action_mine()));
ds_list_add(library_kingdom, new kingdom_card("Moat", "", 2, 0, 0, 0, 0, 2, 0, action_moat()));    
ds_list_add(library_kingdom, new kingdom_card("Remodel", "", 4, 0, 0, 0, 0, 0, action_remodel()));
ds_list_add(library_kingdom, new kingdom_card("Smithy", "", 4, 0, 0, 0, 0, 3, none()));
ds_list_add(library_kingdom, new kingdom_card("Village", "", 3, 0, 0, 2, 0, 1, none()));
ds_list_add(library_kingdom, new kingdom_card("Workshop", "", 3, 0, 0, 0, 0, 0, action_workshop()));

//ds_list_add(library_kingdom, new kingdom_card("Poacher", "", 4, 0, 0, 1, 0, 1, discard_per_empty_supply(), none()));
//ds_list_add(library_kingdom, new kingdom_card("Harbinger", "", 3, 0, 0, 1, 0, 1, none(), none()));
//ds_list_add(library_kingdom, new kingdom_card("Chapel", "", 2, 0, 0, 0, 0, 0, trash_cards(4), none()));


//randomize();
//ds_list_shuffle(library_kingdom); // shuffle if not using the recommended base