/// @description Play the correct music

if room == rm_rozkoszy_center
|| room == rm_rozkoszy_north_to_center
{
	set_song_ingame( mus_forest );	
}

if room == rm_rozkoszy_dungeon
|| room == rm_rozkoszy_dungeon_corridor
|| room == rm_rozkoszy_dungeon_corridor_loop_demo
{
	set_song_ingame( mus_dungeon );
}

if room == rm_rose_lair
{
	set_song_ingame( mus_rose_lair );
}
if room == rm_menu
{
	set_song_ingame( mus_menu );	
}
if room == rm_waytogo
{
	set_song_ingame( mus_waytogo );	
}