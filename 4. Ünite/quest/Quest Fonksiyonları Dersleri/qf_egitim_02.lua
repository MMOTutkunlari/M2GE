-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 46 ~ 
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 26.05.2019 - 11.10
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest qf_egitim_02 begin
	state start begin
		when 9006.take begin
			say_title("Quest Fonksiyonu Eðitim 2: ")
			say("Bana sürüklediðin eþyanýn özelliklerini merak ediyorsan[ENTER]bir tanesini seç. ")
			
			local s = select("Eþya'nýn Temel Bilgileri ", "Refine Bilgileri ", "Eþyayý Sil ", "Wear ve Anti Flag Deðeri ", "Kapat ")
			
			if s == 1 then
				say_title("Quest Fonksiyonu Eðitim 2: ")
				say("Sürüklediðiniz eþyanýn özelliði þunlardýr; ")
				say(string.format("Eþyanýn ID'si: %d ", item.get_id()))
				say(string.format("Eþyanýn VNUM deðeri: %d ", item.get_vnum()))
				say(string.format("Eþyanýn ADI: %s ", item.get_name()))
				say(string.format("Eþyanýn Refine Deðeri: %d ", item.get_level()))
				say(string.format("Eþyayý Giymek Ýçin Gerekli Olan Seviye: %d ", item.get_level_limit()))
				say(string.format("Eþyanýn Type deðeri: type(%d) ve subtype(%d) ", item.get_type(), item.get_sub_type()))
			elseif s == 2 then
				say_title("Quest Fonksiyonu Eðitim 2: ")
				say("Sürüklediðiniz eþyanýn refine bilgileri þunlardýr; ")
				
				if item.get_refine_vnum() > 0 then
					say(string.format("Refine Vnum Deðeri: %d ", item.get_refine_vnum()))
				else
					say("Bu eþya daha fazla geliþtirilemez! ")
				end
				
				if item.get_level() == 9 and item.get_refine_vnum() > 0 then
					say(string.format("Bu eþyanýn dönüþümü var. Dönüþecek vnumu: %d ", item.get_refine_vnum()))
				else
					say("Bu eþyanýn dönüþümü yok.")
				end
			elseif s == 3 then
				say_title("Quest Fonksiyonu Eðitim 2: ")
				say("Eþyayý gerçekten silmek istiyor musunuz? ")
				local ss = select("Evet ", "Hayýr ")
				
				if ss == 1 then
					item.remove()
				end
			elseif s == 4 then
				say_title("Quest Fonksiyonu Eðitim 2: ")
				say("Bu eþyanýn wear flag bilgileri þunlardýr; ")
				say(string.format("Bu eþyanýn wear flag deðeri: %d ", item.get_wearflag0()))
				
				if item.has_wearflag0(16) then
					say("Bu bir silahtýr. ")
				elseif item.has_wearflag0(1) then
					say("Bu bir zýrhtýr. ")
				elseif item.has_wearflag0(4) then
					say("Bu bir ayakkabýdýr. ")
				elseif item.has_wearflag0(512) then
					say("Bu bir oktur. ")
				elseif item.has_wearflag0(32) then
					say("Bu bir kolyedir. ")
				elseif item.has_wearflag0(64) then
					say("Bu bir küpedir. ")
				elseif item.has_wearflag0(256) then
					say("Bu bir kalkandýr. ")
				elseif item.has_wearflag0(2) then
					say("Bu bir kasktýr. ")
				elseif item.has_wearflag0(8) then
					say("Bu bir bileziktir. ")
				else
					say("Bu eþyanýn wear flag deðeri yok! ")
				end
				
				say("")
				say(string.format("Bu eþyanýn anti flag deðeri: %d ", item.get_antiflag0()))
			end
		end
	end
end