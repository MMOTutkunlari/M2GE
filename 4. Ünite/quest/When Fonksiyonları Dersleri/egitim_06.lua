-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 37 when (take)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 14.27
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_06 begin
	state start begin
		when 20011.chat."E�yan�n �zellikleri " begin
			say_title("Bilge Uriel: ")
			say("Elindeki e�yan�n bilgilerini ��renmek istiyorsan ")
			say("e�yay� benim �zerime s�r�klemen yeterli. ")
		end
		
		
		when 20011.take begin
			say_title("Bilge Uriel: ")
			say("Ar�ivimden edindi�im bilgiye g�re...")
			say("E�ya Kimli�i: "..item.get_vnum())
			say("�tem Ad�: "..item.get_name())
			say("Giyebilmek ��in Gerekli Level: " .. item.get_level_limit())
			say("�tem Geli�tirme Vnumu: "..item.get_refine_vnum())
			say("E�ya Adeti: "..item.get_count())
			say("E�ya Tipi: "..item.get_type())
			say("E�ya �u Kadar Yer Kaplar: "..item.get_size())
		end
	end
end