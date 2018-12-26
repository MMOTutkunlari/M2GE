-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 38 when (timer)
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.12.2018 - 14.27
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest egitim_08 begin
	state start begin
		when letter with pc.is_gm() begin
			send_letter("Server Timer ")
		end
		
		when button or info with pc.is_gm() begin
			say_title("Server timer: ")
			say("Timeri açýp kapamak için burayý kullanabilirsiniz. ")
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
			say("Eðitim server timeri baþlatýlmamýþ. ")
			say_reward("Baþlatmak istiyor musunuz? ")
			
			local OK = select("Baþlat ", "Kapat ")
			
			if OK == 1 then
			
			else
				return -1
			end
			
			return -1
		end
	end
end