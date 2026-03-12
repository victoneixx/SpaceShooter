espera_tiro = 8;
timer_tiro = 0;
level_tiro = 1;

controla_player = function(){
	var _cima, _baixo, _esq, _dire, _atirar, _vel, _velh, _velv;
	
	_vel = 2;
	_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
	_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
	_esq = keyboard_check(ord("A")) || keyboard_check(vk_left);
	_dire = keyboard_check(ord("D")) || keyboard_check(vk_right);
	_atirar = keyboard_check(vk_space) || mouse_check_button(mb_left);
	
	_velh = (_dire - _esq)*_vel;
	x += _velh;
	
	//Sistemapara antigo fazer o player não sair de room
	//if(x <= sprite_width/2) x = sprite_width/2;
	//if(x >= room_width - sprite_width/2) x = room_width - sprite_width/2;

	x = clamp(x, sprite_width/2, room_width - sprite_width/2);
	
	_velv = (_baixo - _cima)*_vel;
	y += _velv;
	
	//Outro sistema para fazer o player não sair da room
	y = clamp(y, sprite_width/2, room_height - sprite_height/2);
	
	timer_tiro--;
	if(_atirar && timer_tiro <= 0){
		if(level_tiro == 1) tiro_1();
		else if(level_tiro == 2) tiro_2();
		else if(level_tiro == 3) tiro_3();
		timer_tiro = espera_tiro;
	}
}

tiro_1 = function(){
	var _tiro = instance_create_layer(x, y, "tiro", obj_tiro);
	_tiro.vspeed = -10;
}

tiro_2 = function(){
	var _margen = 8;
	var _tiro = instance_create_layer(x - _margen, y, "tiro", obj_tiro);
	_tiro.vspeed = -10;
	
	_tiro = instance_create_layer(x + _margen, y, "tiro", obj_tiro);
	_tiro.vspeed = -10;
}

tiro_3 = function(){
	tiro_1();
	tiro_2();
}

ganha_level_tiro = function(){
	level_tiro = clamp(level_tiro, 1, 3);
	level_tiro += 1;
}