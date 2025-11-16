draw_set_font(fnt_base);

draw_text_ext(10,10,"Day: " + string(day) + 
				"\nScrap: " + string(scrap_carrying) +
				"\ncybernetic parts: " + string(machine_parts_carrying) + //array_length(body_parts_carrying)) +
				"\nLimbs: " + string(limbs_carrying)	+
				"\nPower Level: " + string(eidalon_power_level), 20, 1000);
				timer()