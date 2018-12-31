-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 33 when (login, logout, levelup)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 


quest egitim_02 begin
	state start begin
		when login begin
			notice("Casro2'ye hoþ geldiniz. ")
			--notice_all(karakterAdi.. " Casro2'ye giriþ yaptý. ")
			notice_all(string.format("%s Casro2'ye giriþ yaptý.", pc.get_name()))
		end
		
		when logout begin
			notice_all(pc.get_name().. " Casro2'den çýktý. ")
		end
		
		when levelup begin
			notice("Tebrikler yeni level aldýnýz.")
			notice_all(string.format("%s %s leveline ulaþtý.", pc.get_name(), pc.get_level()))
		end
	end
end