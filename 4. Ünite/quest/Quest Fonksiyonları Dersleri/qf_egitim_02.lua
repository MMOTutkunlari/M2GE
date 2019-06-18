-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 46 ~ 
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 26.05.2019 - 11.10
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest qf_egitim_02 begin
	state start begin
		when 9006.take begin
			say_title("Quest Fonksiyonu E�itim 2: ")
			say("Bana s�r�kledi�in e�yan�n �zelliklerini merak ediyorsan[ENTER]bir tanesini se�. ")
			
			local s = select("E�ya'n�n Temel Bilgileri ", "Refine Bilgileri ", "E�yay� Sil ", "Wear ve Anti Flag De�eri ", "Kapat ")
			
			if s == 1 then
				say_title("Quest Fonksiyonu E�itim 2: ")
				say("S�r�kledi�iniz e�yan�n �zelli�i �unlard�r; ")
				say(string.format("E�yan�n ID'si: %d ", item.get_id()))
				say(string.format("E�yan�n VNUM de�eri: %d ", item.get_vnum()))
				say(string.format("E�yan�n ADI: %s ", item.get_name()))
				say(string.format("E�yan�n Refine De�eri: %d ", item.get_level()))
				say(string.format("E�yay� Giymek ��in Gerekli Olan Seviye: %d ", item.get_level_limit()))
				say(string.format("E�yan�n Type de�eri: type(%d) ve subtype(%d) ", item.get_type(), item.get_sub_type()))
			elseif s == 2 then
				say_title("Quest Fonksiyonu E�itim 2: ")
				say("S�r�kledi�iniz e�yan�n refine bilgileri �unlard�r; ")
				
				if item.get_refine_vnum() > 0 then
					say(string.format("Refine Vnum De�eri: %d ", item.get_refine_vnum()))
				else
					say("Bu e�ya daha fazla geli�tirilemez! ")
				end
				
				if item.get_level() == 9 and item.get_refine_vnum() > 0 then
					say(string.format("Bu e�yan�n d�n���m� var. D�n��ecek vnumu: %d ", item.get_refine_vnum()))
				else
					say("Bu e�yan�n d�n���m� yok.")
				end
			elseif s == 3 then
				say_title("Quest Fonksiyonu E�itim 2: ")
				say("E�yay� ger�ekten silmek istiyor musunuz? ")
				local ss = select("Evet ", "Hay�r ")
				
				if ss == 1 then
					item.remove()
				end
			elseif s == 4 then
				say_title("Quest Fonksiyonu E�itim 2: ")
				say("Bu e�yan�n wear flag bilgileri �unlard�r; ")
				say(string.format("Bu e�yan�n wear flag de�eri: %d ", item.get_wearflag0()))
				
				if item.has_wearflag0(16) then
					say("Bu bir silaht�r. ")
				elseif item.has_wearflag0(1) then
					say("Bu bir z�rht�r. ")
				elseif item.has_wearflag0(4) then
					say("Bu bir ayakkab�d�r. ")
				elseif item.has_wearflag0(512) then
					say("Bu bir oktur. ")
				elseif item.has_wearflag0(32) then
					say("Bu bir kolyedir. ")
				elseif item.has_wearflag0(64) then
					say("Bu bir k�pedir. ")
				elseif item.has_wearflag0(256) then
					say("Bu bir kalkand�r. ")
				elseif item.has_wearflag0(2) then
					say("Bu bir kaskt�r. ")
				elseif item.has_wearflag0(8) then
					say("Bu bir bileziktir. ")
				else
					say("Bu e�yan�n wear flag de�eri yok! ")
				end
				
				say("")
				say(string.format("Bu e�yan�n anti flag de�eri: %d ", item.get_antiflag0()))
			end
		end
	end
end