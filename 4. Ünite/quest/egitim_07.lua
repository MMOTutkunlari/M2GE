-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 38 when (timer)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 14.27
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_07 begin
	state start begin
		when letter begin
			send_letter("Timer kontrol")
		end
		
		when button or info begin
			say_title("Timer kontrol: ")
			say("Timer ba�latmak veya bitirmek i�in tu�lara t�klay�n. ")
			local s = select("Ba�lat ", "Durdur ")
			
			if s == 1 then
				loop_timer("egitim_timer", 1)
			else
				loop_timer("egitim_timer", 0)
			end
			
			send_letter("Timer kontrol")
		end
		
		when egitim_timer.timer begin
			notice_all("Timer �al���yor...")
		end
	end
end