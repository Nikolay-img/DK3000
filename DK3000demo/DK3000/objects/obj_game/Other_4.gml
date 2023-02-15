//world eklenecek
if (room == room_game)
{
	audio_play_sound(snd_arka_plan,2,true)
	
	repeat (7)
	{
	 var xx = choose(irandom_range(0,room_width*0.3) , irandom_range(room_width*0.7, room_width));
	 var yy = choose(irandom_range(0,room_height*0.3) , irandom_range(room_height*0.7, room_height));
	 instance_create_layer(xx,yy, "Instances" , obj_canavarlar);
	 
	 alarm[0] = 2*room_speed
	}
}