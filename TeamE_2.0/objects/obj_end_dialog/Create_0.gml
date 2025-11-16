if (obj_singleton.eidalon_power_level < 100)
{
	sprite = spr_ending_bad;
}
else if (obj_singleton.eidalon_power_level < 200)
{
	sprite = spr_ending_average;
}
else
{
	sprite = spr_ending_good;
}

