-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 38 when (timer)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_07 begin
	state start begin
		when letter begin
			send_letter("Timer kontrol")
		end
		
		when button or info begin
			say_title("Timer kontrol: ")
			say("Timer baþlatmak veya bitirmek için tuþlara týklayýn. ")
			local s = select("Baþlat ", "Durdur ")
			
			if s == 1 then
				loop_timer("egitim_timer", 1)
			else
				loop_timer("egitim_timer", 0)
			end
			
			send_letter("Timer kontrol")
		end
		
		when egitim_timer.timer begin
			notice_all("Timer çalýþýyor...")
		end
	end
end