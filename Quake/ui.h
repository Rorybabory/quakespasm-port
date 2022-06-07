#ifndef _QUAKE_UI_H
#define _QUAKE_UI_H
#include "quakedef.h"
#include "inventory.h"
#include <stdlib.h>


qpic_t* inv_tile;
qpic_t* inv_tileHighlight;
qpic_t* inv_header;
qpic_t* inv_x;
qpic_t* inv_testItem;

qpic_t* inv_axe;
qpic_t* inv_shotgun;
qpic_t* inv_supershotgun;
qpic_t* inv_nailgun;
qpic_t* inv_supernailgun;
qpic_t* inv_granade;
qpic_t* inv_rocket;
qpic_t* inv_lightning;
qpic_t* inv_coolcube;
qpic_t* inv_pistol;
qpic_t* ui_reticle;
float ui_deltatime;
float ui_reticle_size;
float ui_reticle_base;
float ui_reticle_min;
int ui_movechanged;
void UI_Keydown(int key);
void UI_Draw(void);
void UI_Init(void);
void UI_LoadPics(void);

#endif 