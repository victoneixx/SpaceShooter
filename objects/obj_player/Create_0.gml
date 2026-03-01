espera_tiro = 8;
timer_tiro = 0;

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
	_velv = (_baixo - _cima)*_vel;
	y += _velv;
	
	timer_tiro--;
	if(_atirar && timer_tiro <= 0){
		var _tiro = instance_create_layer(x, y, "tiro", obj_tiro);
		_tiro.vspeed = -10;
		timer_tiro = espera_tiro;
	}
}