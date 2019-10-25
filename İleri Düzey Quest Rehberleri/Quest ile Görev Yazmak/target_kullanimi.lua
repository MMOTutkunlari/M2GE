quest target_kullanimi begin
	state start begin
		when letter begin
			send_letter("Sat�c�'ya Git")
			
			local v = find_npc_by_vnum(9003)
			
			if v != 0 then
				target.vid("__TARGET__", v, "Sat�c�'ya Git")
			end
		end
		
		when button or info begin
			say_title("Sat�c�'ya Git: ")
			say("Sat�c�n�n sana ihtiyac� var. Hemen yan�na git.")
		end
		
		when __TARGET__.target.click or 9003.chat."Sat�c�'ya Git " begin
			target.delete("__TARGET__")
			say_title(string.format("%s:", mob_name(9003)))
			say("Merhaba, ho� geldin.")
		end
	end
end