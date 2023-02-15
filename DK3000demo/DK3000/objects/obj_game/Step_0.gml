//world eklenecek
if (keyboard_check_pressed(vk_enter))
{
	switch (room)
	{
		case room_baslangic:
		room_goto(room_game);
		break;
		
		case room_kazanma:
		case room_kaybetme:
		game_restart();
		break;
	}
}

if (room == room_game)
{
	if(score == 500)
	{
		room_goto(room_kazanma);
		audio_play_sound(snd_win_1,1,false);
	}
	
	if(lives <= 0)
	{
		room_goto(room_kaybetme);
		audio_play_sound(snd_lose_1,1,false);
	}
}