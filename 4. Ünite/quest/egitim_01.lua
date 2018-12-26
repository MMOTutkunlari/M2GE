-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 32 when (letter, button, info)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: https://youtu.be/lZortPX54ew

quest egitim_01 begin
	state start begin
		when letter begin
			send_letter("Ýlk Questim ")
		end
		
		when button or info begin
			say_title("Ýlk Questim ")
			say("Bu benim Metin2 Geliþtiricilik Eðitimini izleyerek[ENTER]yaptýðým ilk questim.[ENTER]")
			say_reward("Afferin pek iyi aldýn... ")
			local OK = select("Tamam ")
			send_letter("Ýlk Questim ")
		end
	end
end