random_music = irandom_range(1,3)
	unsettling_volume = 0;
	ambiant_volume = 0;
	with(obj_singleton){other.ambiant_volume = ambiance_volume / 100}
	with(obj_singleton){other.unsettling_volume = unsettling_volume / 100}
switch(random_music)
{
	case 1:
	audio_play_sound(snd_overworld_ambiance,1,true,ambiant_volume)
	break;
	case 2: 
	audio_play_sound(snd_overworld_ambiance2,1,true,ambiant_volume)
	break;
	case 3: 
	audio_play_sound(snd_overworld_ambiance3,1,true,ambiant_volume)
	break;
}
audio_play_sound(snd_overworld_unsettling,1,true,unsettling_volume)



