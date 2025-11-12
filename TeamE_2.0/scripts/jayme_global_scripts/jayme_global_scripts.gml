function Random_SFX_2(_sfx1,_sfx2,_pitch_min ,_pitch_max)
{
			var random_pitch = random_range(_pitch_min,_pitch_max)
			var random_sfx = irandom_range(1,2)
			 var random_sound = pointer_null;
			 switch(random_sfx)
			 {
				 case 1:
				 random_sound = _sfx1
				 break;
				 case 2:
				 random_sound = _sfx2
				 break;
			 }
			 audio_play_sound(random_sound,1,false,,,random_pitch)
			
}

function Random_SFX_3(_sfx1,_sfx2,_sfx3,_pitch_min ,_pitch_max)
{
			var random_pitch = random_range(_pitch_min,_pitch_max)
			var random_sfx = irandom_range(1,3)
			 var random_sound = pointer_null;
			 switch(random_sfx)
			 {
				 case 1:
				 random_sound = _sfx1
				 break;
				 case 2:
				 random_sound = _sfx2
				 break;
				  case 3:
				 random_sound = _sfx3
				 break;
			 }
			 audio_play_sound(random_sound,1,false,,,random_pitch)
}

