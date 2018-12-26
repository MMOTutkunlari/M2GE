-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 37 when (take)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_06 begin
	state start begin
		when 20011.chat."Eþyanýn Özellikleri " begin
			say_title("Bilge Uriel: ")
			say("Elindeki eþyanýn bilgilerini öðrenmek istiyorsan ")
			say("eþyayý benim üzerime sürüklemen yeterli. ")
		end
		
		
		when 20011.take begin
			say_title("Bilge Uriel: ")
			say("Arþivimden edindiðim bilgiye göre...")
			say("Eþya Kimliði: "..item.get_vnum())
			say("Ýtem Adý: "..item.get_name())
			say("Giyebilmek Ýçin Gerekli Level: " .. item.get_level_limit())
			say("Ýtem Geliþtirme Vnumu: "..item.get_refine_vnum())
			say("Eþya Adeti: "..item.get_count())
			say("Eþya Tipi: "..item.get_type())
			say("Eþya Þu Kadar Yer Kaplar: "..item.get_size())
		end
	end
end