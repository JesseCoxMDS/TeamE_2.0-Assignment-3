appear_date = 20;
object_set_visible(self,true)



Day = 0;
with (obj_singleton)
{
	other.Day = day;
}

if (Day < appear_date)
{
	instance_destroy();
}