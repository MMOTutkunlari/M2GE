-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 35 when (die, kill, party_kill)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_04 begin
	state start begin
		when die begin
			notice("Ne yazýk ki öldünüz. ")
			notice_all(pc.get_name().. " öldü. ")
		end
		
		when 101.kill begin
			syschat("Mob oldurdun. Tebrikler. ")
		end
		
		when 171.party_kill begin
			syschat("Mob öldürdün. Tebrikler party..")
		end
	end
end