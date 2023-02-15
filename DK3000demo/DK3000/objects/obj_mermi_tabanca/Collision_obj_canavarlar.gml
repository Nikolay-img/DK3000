//world eklenecek
score += 10;
//world eklenecek

audio_play_sound(snd_olum_ses,1,false);

with (other)
{
	instance_destroy();
	
	if (sprite_index == spr_buyuk_vampir)
	{
		repeat (2)
		{
			var yeni_canavar = instance_create_layer(x,y, "Instances" , obj_canavarlar);
		    yeni_canavar.sprite_index = spr_orta_zombi;
		}
		
	}
	
	else if (sprite_index == spr_orta_zombi)
	{
		repeat (4)
		{
			var yeni_canavar = instance_create_layer(x,y, "Instances" , obj_canavarlar)
		    yeni_canavar.sprite_index = spr_kucuk_canavar;
		}
	}
	
	repeat (10)
	{
	  instance_create_layer(x,y, "Instances" , obj_canavar_patlama);
	}
	
}
