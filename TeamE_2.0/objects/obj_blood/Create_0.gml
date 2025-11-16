appear_power = 200;



eidalon_power = 0;
with (obj_singleton)
{
	other.eidalon_power = eidalon_power_level;
}

if (eidalon_power < appear_power)
{
	visible = false
}