controla_player = function(){
	var _cima, _baixo, _esq, _dire, _atirar;
	
	_cima = keyboard_check(ord("W"));
	_baixo = keyboard_check(ord("S"));
	_esq = keyboard_check(ord("A"));
	_dire = keyboard_check(ord("D"));
	_atirar = keyboard_check(vk_space);
	
	if(_cima)show_debug_message("CIMA");
	if(_baixo)show_debug_message("BAIXO");
	if(_esq)show_debug_message("ESQ");
	if(_dire)show_debug_message("DIRE");
	if(_atirar)show_debug_message("POW");
}