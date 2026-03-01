controla_player = function(){
	var _cima, _baixo, _esq, _dire, _atirar, _vel, _velh, _velv;
	
	_vel = 2;
	
	_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
	_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
	_esq = keyboard_check(ord("A")) || keyboard_check(vk_left);
	_dire = keyboard_check(ord("D")) || keyboard_check(vk_right);
	_atirar = keyboard_check(vk_space) || mouse_check_button(mb_left);
	_velh = (_dire - _esq)*_vel;
	_velv = (_baixo - _cima)*_vel;
	x += _velh;
	y += _velv;
	if(_atirar)show_debug_message("POW");
}