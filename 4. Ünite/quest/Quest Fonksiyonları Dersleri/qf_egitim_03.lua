-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 51 ~ 
-- MMOTutkunlari.com | Whistle
-- 12.09.2019 
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest qf_egitim_03 begin
	state start begin
		when 9003.chat."NPC Fonksiyonlari" begin
			say_title("NPC Fonksiyonlari: ")
			say_reward("Ne yapmak istiyorsunuz? ")
			local s = select("Kendini Tanýt ", "Marketi Aç ", "Kendini Yok Et ")
			
			if s == 1 then
				say_title("NPC Fonksiyonu Kendini Tanit: ")
				say(string.format("Adým: %s", mob_name(9003)))
				say(string.format("Proto Id: %d", npc.get_race()))
				say(string.format("Vid: %d", npc.get_vid()))
				say(string.format("NPC Level: %d", npc.get_level0()))
				
				if npc.is_pc() then
					say("Ben bir oyuncuyum.")
				end
				
				if npc.is_quest() then
					say("Ben quest npcsiyim.")
				end
			elseif s == 2 then
				npc.open_shop()
			elseif s == 3 then
				npc.purge()
			end
		end
	end
end