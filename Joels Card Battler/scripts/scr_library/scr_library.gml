library_base = {
    copper : new treasure_card("Copper", "", 0, 1),
    silver : new treasure_card("Silver", "", 3, 2),
    gold : new treasure_card("Gold", "", 6, 3),
    province : new victory_card("Province", "", 8, 6),
    duchy : new victory_card("Duchy", "", 5, 3),
    estate : new victory_card("Estate", "", 2, 1),
    curse : new victory_card("Curse", "", 0, -1),
}

function none() {}

function discard_per_empty_supply() {
    return 0;
}

function add_treasure_if_silver_present() {
    return  0;
}

function trash_cards(n)
{
    return 0;
}

function discard_and_redraw()
{
    return 0;
}

function gain_card_up_to(n)
{
    return 0;
}

function trash_and_draw(n)
{
    return 0;
}

// kingdom_card(_name, _sprite, _cost, _treasure, _vp, _action, _buy, _draw, _effect, _defense)
library_kingdom = ds_list_create();

ds_list_add(library_kingdom, new kingdom_card("Poacher", "", 4, 0, 0, 1, 0, 1, discard_per_empty_supply(), none()));
ds_list_add(library_kingdom, new kingdom_card("Smithy", "", 4, 0, 0, 0, 0, 3, none(), none()));
ds_list_add(library_kingdom, new kingdom_card("Harbinger", "", 3, 0, 0, 1, 0, 1, none(), none()));
ds_list_add(library_kingdom, new kingdom_card("Merchant", "", 3, 0, 0, 1, 0, 1, add_treasure_if_silver_present(), none()));
ds_list_add(library_kingdom, new kingdom_card("Cellar", "", 2, 0, 0, 1, 0, 0, discard_and_redraw(), none()));
ds_list_add(library_kingdom, new kingdom_card("Chapel", "", 2, 0, 0, 0, 0, 0, trash_cards(4), none()));
ds_list_add(library_kingdom, new kingdom_card("Village", "", 3, 0, 0, 2, 0, 1, none(), none()));
ds_list_add(library_kingdom, new kingdom_card("Workshop", "", 3, 0, 0, 0, 0, 0, gain_card_up_to(4), none()));
ds_list_add(library_kingdom, new kingdom_card("Remodel", "", 4, 0, 0, 0, 0, 0, trash_and_draw(2), none()));

ds_list_shuffle(library_kingdom);

show_debug_message("================" + library_base.copper.name);
show_debug_message(library_kingdom[|0].name);