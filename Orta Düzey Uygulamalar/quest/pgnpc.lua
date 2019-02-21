quest pgnpc begin
	state start begin
		when 20001.chat."P Yüzüðü Almak Ýstiyorum " begin
			say_title(mob_name(20001)..":")
			say("50 adet ruh taþý karþýlýðýnda yeteneklerini ")
			say("Perfect Master yapabilen bir yüzük alabilirsin. ")
			say("Bu yüzük sayesinde tüm yeteneklerin Perfect Master ")
			say("olacak.")
			say("")
			say_reward("50 adet Ruh Taþý karþýlýðýnda Perfect Master ")
			say_reward("yüzüðü almak istiyor musun?")
			
			local s = select("Evet ", "Hayýr ")
			
			if s == 1 then
				say_title(mob_name(20001)..":")
				if pc.count_item(50513) > 49 then
					say("50 adet Ruh Taþý karþýlýðýnda, Perfect Master ")
					say("yüzüðünü aldýnýz.")
					pc.remove_item(50513, 50)
					pc.give_item2(40003, 1)
				else
					say("Ne yazýk ki yeterince Ruh Taþý'nýz yok. ")
				end
			else
				say_title(mob_name(20001)..":")
				say("Daha sonra yüzük almak için yanýma gelebilirsin. ")
			end
		end
		
		when 20001.chat."G Yüzüðü Almak Ýstiyorum " begin
			say_title(mob_name(20001)..":")
			say("50 adet Cor Draconis (ender) karþýlýðýnda yeteneklerini ")
			say("Grand Master yapabilen bir yüzük alabilirsin. ")
			say("Bu yüzük sayesinde tüm yeteneklerin Grand Master ")
			say("olacak.")
			say("")
			say_reward("50 adet Cor Draconis (ender) karþýlýðýnda Grand Master ")
			say_reward("yüzüðü almak istiyor musun?")
			
			local s = select("Evet ", "Hayýr ")
			
			if s == 1 then
				say_title(mob_name(20001)..":")
				if pc.count_item(51508) > 49 then
					say("50 adet Cor Draconis (ender) karþýlýðýnda, Grand Master ")
					say("yüzüðünü aldýnýz.")
					pc.remove_item(51508, 50)
					pc.give_item2(71148, 1)
				else
					say("Ne yazýk ki yeterince Cor Draconis (ender)'nýz yok. ")
				end
			else
				say_title(mob_name(20001)..":")
				say("Daha sonra yüzük almak için yanýma gelebilirsin. ")
			end
		end
	end
end
