//world eklenecek



switch (room)
{
	case room_game:
	draw_text(40,40,"SCORE :" + string(score));
    draw_text(40,60,"LIVES :" + string(lives));
	break;
	
	case room_baslangic:
	draw_set_halign(fa_center);
	var rb = c_red;
	draw_text_transformed_color(room_width/2,230, "DK3000 DEMO",3,3,0,rb,rb,rb,rb,1);
	draw_text
	(room_width/2,350, @"Kazanmak ICIN 500 Puan Topla
	UP : Ileri Hareket
	LEFT : Sola Haraket
	RIGHT : Saga Hareket
	SPACE : Ates Etmek"
	);
	draw_text(room_width/2,290,"Oyuna Baslamak Icin Enter'A Basin");
	draw_set_halign(fa_left);
	break;
	
	case room_kazanma:
	draw_set_halign(fa_center);
	var rk = c_yellow;
	draw_text_transformed_color(room_width/2,250, "GAME WİN",3,3,0,rk,rk,rk,rk,1);
	draw_text(room_width/2,300, " SCORE : " + string(score));
	draw_text(room_width/2,400, " TEKRAR BASLAMAK ICIN ENTER'A BASINIZ !");
	draw_set_halign(fa_left);
	break;
	
	case room_kaybetme:
	draw_set_halign(fa_center);
	var rk = c_maroon;
	draw_text_transformed_color(room_width/2,250, "GAME OVER EZIK :D",3,3,0,rk,rk,rk,rk,1);
	draw_text(room_width/2,300, " SCORE : " + string(score));
	draw_text(room_width/2,400, " TEKRAR BASLAMAK ICIN ENTER'A BASINIZ !");
	draw_text(room_width/2,400, " TABII BIDA AGLAMAK ISTIYORSAN BEBEK ");
	draw_set_halign(fa_left);
	break;
}