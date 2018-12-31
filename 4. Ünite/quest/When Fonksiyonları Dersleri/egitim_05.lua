-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 36 when (use, sig_use)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_05 begin
	state start begin
		-- when 70058.use or 76042.use begin
			-- say_title("Iþýnlama Yüzüðü: ")
			-- say("Bu bir ýþýnlama yüzüðüdür. ")
		-- end
		
		when 10031.sig_use begin
			say_title("Iþýnlama Yüzüðü: ")
			say("Bu bir ýþýnlama yüzüðüdür. sig_use ")
		end
	end
end