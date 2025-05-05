deck = ds_list_create();
discard_pile = ds_list_create();
draw_pile = ds_list_create();
hand = ds_list_create();

function starting_deck()
{
    for (i=0; i<7; i++) ds_list_add(deck, global.supply[6]); //copper
    for (i=0; i<3; i++) ds_list_add(deck, global.supply[2]); //estate
}

function update_victory_points()
{
    var vp = 0;
    for (i=0; i<ds_list_size(deck); i++) {
        vp += deck[|i].victorypoints;
    }
    victory_points = vp;
}

function update_treasure() {
    var hand_treasure = 0;
    for (i=0; i<ds_list_size(hand); i++) {
        hand_treasure += hand[|i].treasure;
    }
    treasure += hand_treasure;
}

function shuffle_deck()
{
    ds_list_destroy(discard_pile);
    discard_pile = ds_list_create();
    ds_list_shuffle(deck);
    ds_list_copy(deck, draw_pile);
    treasure = 0;
}

function draw_card()
{
    if (ds_list_size(draw_pile) > 0) shuffle_deck(); 
    ds_list_add(hand, draw_pile[|0]);
    ds_list_delete(draw_pile, 0);
}

function draw_hand()
{
    for (i=0; i < 5; i++) draw_card();
}

function treasure_in_hand() {
    
}