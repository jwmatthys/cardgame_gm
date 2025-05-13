supply = [];
var i = 0
//for (i = 0; i < 17; i++) supply[i] = [];

function create_supply_base(num_players) {
    if (num_players == 2) {
        for (i = 0; i < 8; i++) { 
            supply[0][i] = global.library_base.province;   
            supply[1][i] = global.library_base.duchy;   
            supply[2][i] = global.library_base.estate;   
        }
        for (i = 0; i < 10; i++) { 
            supply[3][i] = global.library_base.curse;   
        }
    }
    else if (num_players == 3) {
        for (i = 0; i < 12; i++) { 
            supply[0][i] = global.library_base.province;   
            supply[1][i] = global.library_base.duchy;   
            supply[2][i] = global.library_base.estate;   
        }
        for (i = 0; i < 20; i++) { 
            supply[3][i] = global.library_base.curse;   
        }
    }
    else if (num_players == 4) {
        for (i = 0; i < 12; i++) { 
            supply[0][i] = global.library_base.province;   
            supply[1][i] = global.library_base.duchy;   
            supply[2][i] = global.library_base.estate;   
        }
        for (i = 0; i < 30; i++) { 
            supply[3][i] = global.library_base.curse;   
        }
    }
    for (i = 0; i < 30; i++) supply[4] = global.library_base.gold;
    for (i = 0; i < 40; i++) supply[5] = global.library_base.silver;
    for (i = 0; i < 60; i++) supply[6] = global.library_base.copper; 
}

function create_supply_kingdom()
{
    for (i = 7; i < 17; i++) {
        for (j = 0; j < 10; j++) {
            supply[i][j] = global.library_kingdom[|j];
        }
    }
}