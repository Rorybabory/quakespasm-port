#pragma once
#define INV_WIDTH 3
#define INV_HEIGHT 4


struct qinvslot_t {
	char* name;
};

int inventoryOpen;
int inv_highlight_x;
int inv_highlight_y;

int inv_tab_buffer;
float inv_dhighlight_x;
float inv_dhighlight_y;
struct qinvslot_t inv_slots[INV_WIDTH][INV_HEIGHT];

void Inventory_Init(void);
void Inventory_AddItem(char* name);
int Inventory_Full(void);