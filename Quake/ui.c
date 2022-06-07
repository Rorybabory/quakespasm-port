#include "ui.h"
void UI_Draw(void) {
	extern vrect_t scr_vrect;
	GL_SetCanvas(CANVAS_UI);
	if (ui_reticle_size > ui_reticle_min && key_dest == key_game && ui_movechanged == 0) {
		ui_reticle_size -= ui_deltatime * 0.2;
	}
	float width = scr_vrect.width * ui_reticle_size;
	float height = scr_vrect.width * ui_reticle_size;
	Draw_Pic_Scale(scr_vrect.width / 2.0-(width/2.) + 4.0, scr_vrect.height / 2.0 - (height / 2.) + 4.0, width, height, ui_reticle);
	if (inventoryOpen == 1) {
		for (int x = 0; x < INV_WIDTH; x++) {
			for (int y = 0; y < INV_HEIGHT; y++) {
				Draw_Pic(200 + (x * 64), 200 + (y * 64), inv_tile);
				if (x == inv_highlight_x && y == inv_highlight_y) {
					Draw_Pic(200 + (x * 64), 200 + (y * 64), inv_tileHighlight);
				}
				qpic_t* drawnTile;
					 if (strcmp(inv_slots[x][y].name, "") == 0) { drawnTile = inv_x; }
				else if (strcmp(inv_slots[x][y].name, "axe") == 0) { drawnTile = inv_axe;}
				else if (strcmp(inv_slots[x][y].name, "shotgun") == 0) { drawnTile = inv_shotgun; }
				else if (strcmp(inv_slots[x][y].name, "super shotgun") == 0) { drawnTile = inv_supershotgun; }
				else if (strcmp(inv_slots[x][y].name, "nailgun") == 0) { drawnTile = inv_nailgun; }
				else if (strcmp(inv_slots[x][y].name, "super nailgun") == 0) { drawnTile = inv_supernailgun; }
				else if (strcmp(inv_slots[x][y].name, "granade launcher") == 0) { drawnTile = inv_granade; }
				else if (strcmp(inv_slots[x][y].name, "rocket launcher") == 0) { drawnTile = inv_rocket; }
				else if (strcmp(inv_slots[x][y].name, "lightning rod") == 0) { drawnTile = inv_lightning; }
				else if (strcmp(inv_slots[x][y].name, "cool cube") == 0) { drawnTile = inv_coolcube ; }
				else if (strcmp(inv_slots[x][y].name, "pistol") == 0) { drawnTile = inv_pistol; }
				Draw_Pic(200 + (x * 64), 200 + (y * 64), drawnTile);
			}
		}
	}

}

void UI_Init(void) {
	Inventory_Init();
	UI_LoadPics();
	inv_highlight_x = 0;
	inv_highlight_y = 0;

	inv_dhighlight_x = 0.0f;
	inv_dhighlight_y = 0.0f;
	inventoryOpen = 0;

	ui_reticle_base = 0.00;
	ui_reticle_min = 0.02;
	ui_reticle_size = ui_reticle_base;
	ui_deltatime = 0.0;
	ui_movechanged = 0;
}
void UI_LoadPics(void) {
	inv_tile = Draw_PicFromWad("tile");
	inv_tileHighlight = Draw_PicFromWad("tile_highlight");
	inv_header = Draw_PicFromWad("inv_header");
	inv_x = Draw_PicFromWad("inv_x");
	inv_testItem = Draw_PicFromWad("inv_testicon");
	inv_axe = Draw_PicFromWad("inv_iaxe");
	inv_shotgun = Draw_PicFromWad("inv_ishotgun");
	inv_supershotgun = Draw_PicFromWad("inv_ishotgun2");
	inv_nailgun = Draw_PicFromWad("inv_inailgun");
	inv_supernailgun = Draw_PicFromWad("inv_inailgun2");
	inv_granade = Draw_PicFromWad("inv_igranade");
	inv_rocket = Draw_PicFromWad("inv_irocket");
	inv_lightning = Draw_PicFromWad("inv_ilightning");
	inv_coolcube = Draw_PicFromWad("inv_icoolcube");
	inv_pistol = Draw_PicFromWad("inv_ipistol");
	ui_reticle = Draw_PicFromWad("reticle");

	printf("\n");
}
void UI_Keydown(int key) {
	/*if (key == K_TAB) {
		inventoryOpen = 1 - inventoryOpen;
	}*/
	
	//printf("key %d\n", key);
}