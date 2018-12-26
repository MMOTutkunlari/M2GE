-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 39 when (server_timer)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 15.49
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_08 begin
	state start begin
		when letter begin
			send_letter("Eðitim Server Timer ")
		end
		
		when button or info begin
			say_title("Eðitim Server Timer: ")
			say("Eðitim server timerini açýp kapatabilirsiniz.")
			
			local s = select("Baþlat ", "Durdur ")
			
			if s == 1 then
				clear_server_timer("egitim_server_timer")
				server_loop_timer("egitim_server_timer", 1)
			else
				clear_server_timer("egitim_server_timer")
			end
			
			send_letter("Eðitim Server Timer ")
		end
		
		when egitim_server_timer.server_timer begin
			notice_all("Server timer çalýþtý. ")
		end
	end
end