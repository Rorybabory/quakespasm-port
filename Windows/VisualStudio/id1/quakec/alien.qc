$cd /raid/quake/id1/models/alien
$origin 0 0 0
$base base
$skin skin


//standing
$frame frame1  frame2  frame3  frame4  frame5  frame6  frame7  frame8  frame9  frame10 
$frame frame11 frame12 frame13 frame14 frame15 frame16 frame17 frame18 frame19 frame20 

//running
$frame frame21 frame22 frame23 frame24 frame25 frame26 frame27 frame28 frame29 frame30 frame31

//walking
$frame frame32  frame33  frame34  frame35  frame36  frame37  frame38  frame39  frame40  frame41 
$frame frame42 frame43 frame44 frame45 frame46 frame47 frame48 frame49 frame50 frame51 frame52
$frame frame53 frame54 frame55 frame56 frame57 frame58 frame59 frame60

//melee
$frame frame61 frame62 frame63 frame64 frame65 frame66 frame67 frame68 frame69 frame70
//melee 2
$frame frame71 frame72 frame73 frame74 frame75 frame76 frame77 frame78 frame79 frame80


//hit
$frame frame80 frame81 frame82 frame83 frame84 frame85

//hit 2
$frame frame86 frame87 frame88 frame89 frame90


//die
$frame frame90 frame91 frame92 frame93 frame94


void()	alien_stand1	=[	$frame1,	alien_stand2	] {ai_stand();};
void()	alien_stand2	=[	$frame2,	alien_stand3	] {ai_stand();};
void()	alien_stand3	=[	$frame3,	alien_stand4	] {ai_stand();};
void()	alien_stand4	=[	$frame4,	alien_stand5	] {ai_stand();};
void()	alien_stand5	=[	$frame5,	alien_stand6	] {ai_stand();};
void()	alien_stand6	=[	$frame6,	alien_stand7	] {ai_stand();};
void()	alien_stand7	=[	$frame7,	alien_stand8	] {ai_stand();};
void()	alien_stand8	=[	$frame8,	alien_stand9	] {ai_stand();};
void()	alien_stand9	=[	$frame9,	alien_stand10	] {ai_stand();};
void()	alien_stand10	=[	$frame10,	alien_stand11	] {ai_stand();};
void()	alien_stand11	=[	$frame11,	alien_stand12	] {ai_stand();};
void()	alien_stand12	=[	$frame12,	alien_stand13	] {ai_stand();};
void()	alien_stand13	=[	$frame13,	alien_stand14	] {ai_stand();};
void()	alien_stand14	=[	$frame14,	alien_stand15	] {ai_stand();};
void()	alien_stand15	=[	$frame15,	alien_stand16	] {ai_stand();};
void()	alien_stand16	=[	$frame16,	alien_stand17	] {ai_stand();};
void()	alien_stand17	=[	$frame17,	alien_stand18	] {ai_stand();};
void()	alien_stand18	=[	$frame18,	alien_stand19	] {ai_stand();};
void()	alien_stand19	=[	$frame19,	alien_stand20	] {ai_stand();};
void()	alien_stand20	=[	$frame20,	alien_stand1	] {ai_stand();};
void()	alien_melee1;

void()	alien_damage =
{
	local	float	ldmg;
    local   vector  delta;
	if (self.health <= 0)
		return;
	delta = self.enemy.origin - self.origin;

	if (vlen(delta) > 60)
		return;
	ldmg = 10 + 10*random();
	T_Damage (self.enemy, self, self, ldmg);
};

void() alien_run = {
    ai_run(15);
};
void()	alien_run1	=[	$frame21,		alien_run2	] {alien_run (); };
void()	alien_run2	=[	$frame22,		alien_run3	] {alien_run ();};
void()	alien_run3	=[	$frame23,		alien_run4	] {alien_run ();};
void()	alien_run4	=[	$frame24,		alien_run5	] {alien_run ();};
void()	alien_run5	=[	$frame25,		alien_run6	] {alien_run ();};
void()	alien_run6	=[	$frame26,		alien_run7	] {alien_run ();};
void()	alien_run7	=[	$frame27,		alien_run8	] {alien_run ();};
void()	alien_run8	=[	$frame28,		alien_run9	] {alien_run ();};
void()	alien_run9	=[	$frame29,		alien_run10	] {alien_run ();};
void()	alien_run10	=[	$frame30,	alien_run11	] {alien_run ();};
void()	alien_run11	=[	$frame31,	alien_run1	] {alien_run ();};

void()	alien_walk1	=[	$frame32,	alien_walk2	] {ai_walk(2);};
void()	alien_walk2	=[	$frame33,	alien_walk3	] {ai_walk(2);};
void()	alien_walk3	=[	$frame34,	alien_walk4	] {ai_walk(2);};
void()	alien_walk4	=[	$frame35,	alien_walk5	] {ai_walk(2);};
void()	alien_walk5	=[	$frame36,	alien_walk6	] {ai_walk(2);};
void()	alien_walk6	=[	$frame37,	alien_walk7	] {ai_walk(2);};
void()	alien_walk7	=[	$frame38,	alien_walk8	] {ai_walk(2);};
void()	alien_walk8	=[	$frame39,	alien_walk9	] {ai_walk(2);};
void()	alien_walk9	=[	$frame40,	alien_walk10	] {ai_walk(2);};
void()	alien_walk10	=[	$frame41,	alien_walk11	] {ai_walk(2);};
void()	alien_walk11	=[	$frame42,	alien_walk12	] {ai_walk(2);};
void()	alien_walk12	=[	$frame43,	alien_walk13	] {ai_walk(2);};
void()	alien_walk13	=[	$frame44,	alien_walk14	] {ai_walk(2);};
void()	alien_walk14	=[	$frame45,	alien_walk15	] {ai_walk(2);};
void()	alien_walk15	=[	$frame46,	alien_walk16	] {ai_walk(2);};
void()	alien_walk16	=[	$frame47,	alien_walk17	] {ai_walk(2);};
void()	alien_walk17	=[	$frame48,	alien_walk18	] {ai_walk(2);};
void()	alien_walk18	=[	$frame49,	alien_walk19	] {ai_walk(2);};
void()	alien_walk19	=[	$frame50,	alien_walk20	] {ai_walk(2);};
void()	alien_walk20	=[	$frame51,	alien_walk21	] {ai_walk(2);};
void()	alien_walk21	=[	$frame52,	alien_walk22	] {ai_walk(2);};
void()	alien_walk22	=[	$frame53,	alien_walk23	] {ai_walk(2);};
void()	alien_walk23	=[	$frame54,	alien_walk24	] {ai_walk(2);};
void()	alien_walk24	=[	$frame55,	alien_walk25	] {ai_walk(2);};
void()	alien_walk25	=[	$frame56,	alien_walk26	] {ai_walk(2);};
void()	alien_walk26	=[	$frame57,	alien_walk27	] {ai_walk(2);};
void()	alien_walk27	=[	$frame58,	alien_walk28	] {ai_walk(2);};
void()	alien_walk28	=[	$frame59,	alien_walk29	] {ai_walk(2);};
void()	alien_walk29	=[	$frame60,	alien_walk1	] {ai_walk(2); };


void()	alien_melee1	=[	$frame61,		alien_melee2	] {};
void()	alien_melee2	=[	$frame62,		alien_melee3	] {};
void()	alien_melee3	=[	$frame63,		alien_melee4	] {};
void()	alien_melee4	=[	$frame64,		alien_melee5	] {};
void()	alien_melee5	=[	$frame65,		alien_melee6	] {};
void()	alien_melee6	=[	$frame66,		alien_melee7	] {};
void()	alien_melee7	=[	$frame67,		alien_melee8	] {};
void()	alien_melee8	=[	$frame68,		alien_melee9	] {alien_damage();};
void()	alien_melee9	=[	$frame69,		alien_melee10	] {};
void()	alien_melee10	=[	$frame70,	alien_run1	] {};

void() alien_melee = {
    alien_melee1();
};


void()	alien_2melee1	=[	$frame71,		alien_2melee2	] {};
void()	alien_2melee2	=[	$frame72,		alien_2melee3	] {};
void()	alien_2melee3	=[	$frame73,		alien_2melee4	] {};
void()	alien_2melee4	=[	$frame74,		alien_2melee5	] {};
void()	alien_2melee5	=[	$frame75,		alien_2melee6	] {};
void()	alien_2melee6	=[	$frame76,		alien_2melee7	] {};
void()	alien_2melee7	=[	$frame77,		alien_2melee8	] {};
void()	alien_2melee8	=[	$frame78,		alien_2melee9	] {};
void()	alien_2melee9	=[	$frame79,		alien_2melee10	] {};
void()	alien_2melee10	=[	$frame80,	alien_run1	] {};

void()	alien_pain1	=[	$frame80,		alien_pain2	] {};
void()	alien_pain2	=[	$frame81,		alien_pain3	] {};
void()	alien_pain3	=[	$frame82,		alien_pain4	] {};
void()	alien_pain4	=[	$frame83,		alien_pain5	] {};
void()	alien_pain5	=[	$frame84,		alien_pain6	] {};
void()	alien_pain6	=[	$frame85,		alien_run1	] {};

void()	alien_die1	=[	$frame90,		alien_die2	] {};
void()	alien_die2	=[	$frame91,		alien_die3	] {};
void()	alien_die3	=[	$frame92,		alien_die4	] {};
void()	alien_die4	=[	$frame93,		alien_die5	] {};
void()	alien_die5	=[	$frame94,		alien_die5	] {self.solid = SOLID_NOT;};

void() alien_pain = {
    local float r = random();
    if (r > 0.5) {
        alien_pain1();
    }
    
};
void() monster_alien = {
    precache_model ("progs/alien.mdl");
    self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;
    setmodel (self, "progs/alien.mdl");
    setsize (self, '-12 -12 -24', '12 12 60');

    self.health = 150;
    
    self.th_stand = alien_stand1;
    self.th_run = alien_run1;
    self.th_walk = alien_run1;
	self.th_melee = alien_melee;
	self.th_pain = alien_pain;
	self.th_die = alien_die1;

    walkmonster_start ();
};