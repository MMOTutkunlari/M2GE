quest target_kullanimi begin
	state start begin
		when letter begin
			send_letter("Satýcý'ya Git")
			
			local v = find_npc_by_vnum(9003)
			
			if v != 0 then
				target.vid("__TARGET__", v, "Satýcý'ya Git")
			end
		end
		
		when button or info begin
			say_title("Satýcý'ya Git: ")
			say("Satýcýnýn sana ihtiyacý var. Hemen yanýna git.")
		end
		
		when __TARGET__.target.click or 9003.chat."Satýcý'ya Git " begin
			target.delete("__TARGET__")
			say_title(string.format("%s:", mob_name(9003)))
			say("Merhaba, hoþ geldin.")
		end
	end
end