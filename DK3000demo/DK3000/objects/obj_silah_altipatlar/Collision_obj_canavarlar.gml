// world eklenecek
lives -= 1;

with(obj_game)
{
	alarm[1] = room_speed;
}

audio_play_sound(snd_olum_ses,1,false);


instance_destroy();

// world eklenecek
repeat (10)
	{
	  instance_create_layer(x,y, "Instances" , obj_silah_patlama);
	}