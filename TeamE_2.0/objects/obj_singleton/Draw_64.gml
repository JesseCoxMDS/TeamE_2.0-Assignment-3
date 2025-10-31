draw_set_font(fnt_base);

draw_text_ext(10,10,"Day: " + string(day) + 
				"\nScrap: " + string(scrap_carrying) +
				"\nBody Parts: " + string(body_parts_carrying) +
				"\nLimbs: " + string(limbs_carrying)	+
				"\nPower Level: " + string(eidalon_power_level), 20, 1000);