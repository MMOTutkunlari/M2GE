quest pgnpc begin
	state start begin
		when 20001.chat."P Y�z��� Almak �stiyorum " begin
			say_title(mob_name(20001)..":")
			say("50 adet ruh ta�� kar��l���nda yeteneklerini ")
			say("Perfect Master yapabilen bir y�z�k alabilirsin. ")
			say("Bu y�z�k sayesinde t�m yeteneklerin Perfect Master ")
			say("olacak.")
			say("")
			say_reward("50 adet Ruh Ta�� kar��l���nda Perfect Master ")
			say_reward("y�z��� almak istiyor musun?")
			
			local s = select("Evet ", "Hay�r ")
			
			if s == 1 then
				say_title(mob_name(20001)..":")
				if pc.count_item(50513) > 49 then
					say("50 adet Ruh Ta�� kar��l���nda, Perfect Master ")
					say("y�z���n� ald�n�z.")
					pc.remove_item(50513, 50)
					pc.give_item2(40003, 1)
				else
					say("Ne yaz�k ki yeterince Ruh Ta��'n�z yok. ")
				end
			else
				say_title(mob_name(20001)..":")
				say("Daha sonra y�z�k almak i�in yan�ma gelebilirsin. ")
			end
		end
		
		when 20001.chat."G Y�z��� Almak �stiyorum " begin
			say_title(mob_name(20001)..":")
			say("50 adet Cor Draconis (ender) kar��l���nda yeteneklerini ")
			say("Grand Master yapabilen bir y�z�k alabilirsin. ")
			say("Bu y�z�k sayesinde t�m yeteneklerin Grand Master ")
			say("olacak.")
			say("")
			say_reward("50 adet Cor Draconis (ender) kar��l���nda Grand Master ")
			say_reward("y�z��� almak istiyor musun?")
			
			local s = select("Evet ", "Hay�r ")
			
			if s == 1 then
				say_title(mob_name(20001)..":")
				if pc.count_item(51508) > 49 then
					say("50 adet Cor Draconis (ender) kar��l���nda, Grand Master ")
					say("y�z���n� ald�n�z.")
					pc.remove_item(51508, 50)
					pc.give_item2(71148, 1)
				else
					say("Ne yaz�k ki yeterince Cor Draconis (ender)'n�z yok. ")
				end
			else
				say_title(mob_name(20001)..":")
				say("Daha sonra y�z�k almak i�in yan�ma gelebilirsin. ")
			end
		end
	end
end
