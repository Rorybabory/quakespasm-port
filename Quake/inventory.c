#pragma once
#include "inventory.h"
void Inventory_AddItem(char* name) {
    struct qinvslot_t item;
    item.name = name;
    for (int y = 0; y < INV_HEIGHT; y++) {
        for (int x = 0; x < INV_WIDTH; x++) {
            if (inv_slots[x][y].name == "") {
                inv_slots[x][y] = item;
                printf("item: %s was added at %d %d\n", item.name, x, y);
                inv_highlight_x = x;
                inv_highlight_y = y;
                return;
            }
        }
    }
    
}
int Inventory_Full(void) {
    for (int y = 0; y < INV_HEIGHT; y++) {
        for (int x = 0; x < INV_WIDTH; x++) {
            if (inv_slots[x][y].name == "") {
                
                return 0;
            }
        }
    }
    return 1;
}
void Inventory_Init(void) {
    
    for (int i = 0; i < INV_WIDTH; i++)
    {
        for (int j = 0; j < INV_HEIGHT; j++)
        {
            struct qinvslot_t slot;
            slot.name = "";
            inv_slots[i][j] = slot;
        }
    }
    inv_tab_buffer = 0;
    //struct qinvslot_t testItem;
    //testItem.name = "test";
    //inv_slots[0][0] = testItem;
    struct qinvslot_t axe;
    axe.name = "axe";
    inv_slots[0][0] = axe;

    struct qinvslot_t shotgun;
    shotgun.name = "shotgun";
    inv_slots[1][0] = shotgun;

    
}