-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 38 when (timer)
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.12.2018 - 14.27
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest egitim_08 begin
	state start begin
		when letter with pc.is_gm() begin
			send_letter("Server Timer ")
		end
		
		when button or info with pc.is_gm() begin
			say_title("Server timer: ")
			say("Timeri a��p kapamak i�in buray� kullanabilirsiniz. ")
		end
		
		function ServerTimer()
			if game.get_event_flag("egitim_stat") == 0 then
				egitim_08.Start()
			else
				egitim_08.Stop()
			end
		end
		
		function Start()
			say_title("Bilgi: ")
			say("E�itim server timeri ba�lat�lmam��. ")
			say_reward("Ba�latmak istiyor musunuz? ")
			
			local OK = select("Ba�lat ", "Kapat ")
			
			if OK == 1 then
			
			else
				return -1
			end
			
			return -1
		end
	end
end