-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 35 when (die, kill, party_kill)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 14.27
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_04 begin
	state start begin
		when die begin
			notice("Ne yaz�k ki �ld�n�z. ")
			notice_all(pc.get_name().. " �ld�. ")
		end
		
		when 101.kill begin
			syschat("Mob oldurdun. Tebrikler. ")
		end
		
		when 171.party_kill begin
			syschat("Mob �ld�rd�n. Tebrikler party..")
		end
	end
end