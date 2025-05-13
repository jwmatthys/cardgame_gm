victory_points = 0;
treasure = 0;
deck = ds_list_create();
discard_pile = ds_list_create();
draw_pile = ds_list_create();
hand = ds_list_create();
starting_deck(deck);
randomize();
shuffle_deck(deck, discard_pile, draw_pile);
draw_hand(hand, deck, discard_pile, draw_pile);
show_debug_message("Treasure in hand: {0}", treasure_in_hand(hand));
update_victory_points(deck);

///////////////////////////////////////////////////////////

function starting_deck(_deck) {
    for (i=0; i<7; i++) ds_list_add(_deck, global.library_base.copper); //copper
    for (i=0; i<3; i++) ds_list_add(_deck, global.library_base.estate); //estate
}

function update_victory_points(_deck)
{
    var vp = 0;
    for (i=0; i<ds_list_size(_deck); i++) {
        _card = _deck[|i];
        show_debug_message(_card);
        vp += _card.victorypoints;
    }
    victory_points = vp;
}

function shuffle_deck(_deck, _discard, _draw)
{
    ds_list_shuffle(_deck);
    ds_list_clear(_discard);
    ds_list_clear(_draw);
    ds_list_copy(_draw, _deck);
}

function draw_card(_hand, _deck, _discard, _draw)
{
    if (ds_list_size(_draw) <= 0) shuffle_deck(_deck, _discard, _draw);
    ds_list_add(_hand, _draw[|0]);
    ds_list_delete(_draw, 0);
    
}

function draw_hand(_hand, _deck, _discard, _draw)
{
    for (i=0; i < 5; i++) draw_card(_hand, _deck, _discard, _draw);
}

function treasure_in_hand(_hand) {
    var t = 0;
    for (i=0; i < ds_list_size(_hand); i++) t += _hand[|i].treasure;
    return t;
}