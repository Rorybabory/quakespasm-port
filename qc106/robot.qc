$cd id1/models/robot
$origin 0 0 0
$base base		
$skin skin

$frame frame1 frame2 frame3 frame4 frame5 frame6 frame7 frame8 frame9 frame10
$frame frame11 frame12 frame13 frame14 frame15 frame16 frame17 frame18 frame19 frame20
$frame frame21 frame22 frame23 frame24 frame25 frame26 frame27 frame28 frame29 frame30
$frame frame31 frame32 frame33 frame34 frame35 frame36 frame37 frame38 frame39 frame40 frame41
//$frame frame41 frame42 frame43 frame44 frame45 frame46 frame47 frame48 frame49 frame50

void() robot_start;
void() robot_fire;
void() T_MissileTouch;

void() r_stand1  =[      $frame1, r_stand2 ] {ai_stand();};
void() r_stand2  =[      $frame2, r_stand3 ] {ai_stand();};
void() r_stand3  =[      $frame3, r_stand4 ] {ai_stand();};
void() r_stand4  =[      $frame4, r_stand5 ] {ai_stand();};
void() r_stand5  =[      $frame5, r_stand6 ] {ai_stand();};
void() r_stand6  =[      $frame6, r_stand7 ] {ai_stand();};
void() r_stand7  =[      $frame7, r_stand8 ] {ai_stand();};
void() r_stand8  =[      $frame8, r_stand9 ] {ai_stand();};
void() r_stand9  =[      $frame9, r_stand10] {ai_stand();};
void() r_stand10 =[      $frame10, r_run1  ] {ai_stand();};

void() r_run1  =[      $frame11, r_run2 ] {ai_run(10);};
void() r_run2  =[      $frame12, r_run3 ] {ai_run(10);};
void() r_run3  =[      $frame13, r_run4 ] {ai_run(10);};
void() r_run4  =[      $frame14, r_run5 ] {ai_run(10);};
void() r_run5  =[      $frame15, r_run6 ] {ai_run(10);};
void() r_run6  =[      $frame16, r_run7 ] {ai_run(10);};
void() r_run7  =[      $frame17, r_run8 ] {ai_run(10);};
void() r_run8  =[      $frame18, r_run9 ] {ai_run(10);};
void() r_run9  =[      $frame19, r_run10] {ai_run(10);};
void() r_run10 =[      $frame20, r_run1 ] {ai_run(10);};

void() r_pain1 =[      $frame23, r_pain2 ] {};
void() r_pain2 =[      $frame24, r_pain3 ] {};
void() r_pain3 =[      $frame25, r_pain4 ] {};
void() r_pain4 =[      $frame26, r_run1 ] {};

void() r_death1 =[      $frame26, r_death2 ] {};
void() r_death2 =[      $frame27, r_death3 ] {};
void() r_death3 =[      $frame28, r_death4 ] {self.solid = SOLID_NOT;};
void() r_death4 =[      $frame29, r_death5 ] {DropBackpack();};
void() r_death5 =[      $frame30, r_death5 ] {};

void() r_shoot1 =[      $frame32, r_shoot2 ] {ai_face();};
void() r_shoot2 =[      $frame33, r_shoot3 ] {ai_face();};
void() r_shoot3 =[      $frame34, r_shoot4 ] {ai_face();};
void() r_shoot4 =[      $frame35, r_shoot5 ] {ai_face();};
void() r_shoot5 =[      $frame36, r_shoot6 ] {ai_face();robot_fire();};
void() r_shoot6 =[      $frame37, r_shoot7 ] {ai_face();};
void() r_shoot7 =[      $frame38, r_shoot8 ] {ai_face();};
void() r_shoot8 =[      $frame39, r_shoot9 ] {ai_face();};
void() r_shoot9 =[      $frame40, r_shoot10 ] {ai_face();};
void() r_shoot10=[      $frame41, r_run1 ] {ai_face();};

void() robot_fire = {
    local	entity missile, mpuff;
	
	self.effects = self.effects | EF_MUZZLEFLASH;

	sound (self, CHAN_WEAPON, "weapons/grenade.wav", 1, ATTN_NORM);

	missile = spawn ();
	missile.owner = self;
	missile.movetype = MOVETYPE_FLYMISSILE;
	missile.solid = SOLID_BBOX;
		
	makevectors (self.angles);

	missile.velocity = normalize(self.enemy.origin - self.origin);
	missile.velocity = missile.velocity * 600;

	//missile.avelocity = '300 300 300';

	missile.angles = vectoangles(missile.velocity);
	
	missile.touch = T_MissileTouch;
	
	setmodel (missile, "progs/missile.mdl");
	setsize (missile, '0 0 0', '0 0 0');		
	setorigin (missile, self.origin + v_forward*8 + '0 0 24');
};
void() monster_robot = {
    if(deathmatch) {
		remove(self);
		return;
	}
	precache_model2 ("progs/robot.mdl");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;
 
	setmodel (self, "progs/robot.mdl");

	setsize (self, '-16 -16 0', '16 16 64');
	self.health = 300;
	
	self.th_stand = r_stand1;
	self.th_walk = r_run1;
	self.th_run = r_run1;
	self.th_pain = r_pain1;
    self.th_die = r_death1;
    self.th_missile = r_shoot1;

	robot_start ();
};