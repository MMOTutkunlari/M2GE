-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 36 when (use, sig_use)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 14.27
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_05 begin
	state start begin
		-- when 70058.use or 76042.use begin
			-- say_title("I��nlama Y�z���: ")
			-- say("Bu bir ���nlama y�z���d�r. ")
		-- end
		
		when 10031.sig_use begin
			say_title("I��nlama Y�z���: ")
			say("Bu bir ���nlama y�z���d�r. sig_use ")
		end
	end
end