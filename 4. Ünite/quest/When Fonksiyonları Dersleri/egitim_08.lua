-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 39 when (server_timer)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 15.49
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_08 begin
	state start begin
		when letter begin
			send_letter("E�itim Server Timer ")
		end
		
		when button or info begin
			say_title("E�itim Server Timer: ")
			say("E�itim server timerini a��p kapatabilirsiniz.")
			
			local s = select("Ba�lat ", "Durdur ")
			
			if s == 1 then
				clear_server_timer("egitim_server_timer")
				server_loop_timer("egitim_server_timer", 1)
			else
				clear_server_timer("egitim_server_timer")
			end
			
			send_letter("E�itim Server Timer ")
		end
		
		when egitim_server_timer.server_timer begin
			notice_all("Server timer �al��t�. ")
		end
	end
end