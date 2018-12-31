-- Metin2 Geli�tiricilik E�itimi | Quest Dersleri | B�l�m 43 ~ 45
-- MMOTutkunlari.com | Whistle | Eray �ks�z
-- 31.12.2018 - 14.55
-- Bu dosyan�n videosunu izlemek istiyorsan�z: 

quest qf_egitim_01 begin
	state start begin
		when letter begin
			send_letter("Quest Fonksiyonu E�itim 1 ")
		end
		
		when button or info begin
			say_title("Quest Fonksiyonu E�itim 1: ")
			say("Karakterinizle ilgili bilgiler almak istiyorsan�z[ENTER]se�enekleri se�in. ")
			
			local s = select("Temel Bilgiler ", "Stat� Bilgileri ", "Harita Bilgileri ", "Yetenek Bilgileri ", "Item Bilgileri", "Quest Bilgileri ", "Kapat ")
			
			if s == 1 then
				say_title("Quest Fonksiyonu E�itim 1: ")
				say_reward("Karakter Bilgileriniz:[ENTER]")
				say(string.format("Karakter Ad�, ID ve VID: adi(%s), id(%s), vid(%s) ", pc.get_name(), pc.get_player_id(), pc.get_vid()))
				say(string.format("Hesap Ad� ve ID: adi(%s), id(%s) ", pc.get_account(), pc.get_account_id()))
				say(string.format("Karakter S�n�f� ve Cinsiyeti: sinif(%s), cinsiyet(%s) ", pc.get_race(), pc.get_job()))
				say(string.format("Hesaptaki Yang :%s ", pc.get_gold()))
				say(string.format("Guild ID: %s", pc.get_guild()))
				say(string.format("GM Level: %s", pc.get_gm_level()))
				say(string.format("S�ralama Puan�: %s", pc.get_alignment()))
				say(string.format("EXP Miktar�: %s", pc.get_exp()))
				say(string.format("Bir Sonraki Level ��in Gerekli EXP: %s", pc.get_next_exp()))
				say(string.format("Toplam Oyun Saati: %s", pc.get_playtime()))
			elseif s == 2 then
				say_title("Quest Fonksiyonu E�itimi 1: ")
				say_reward("Stat� Bilgileriniz:[ENTER] ")
				say(string.format("HP Bilgisi: %s/%s", pc.get_hp(), pc.get_max_hp()))
				say(string.format("SP Bilgisi: %s/%s", pc.get_sp(), pc.get_max_sp()))
				say(string.format("Hasan Puan�: %s", pc.get_st()))
				say(string.format("Savunma Puan�: %s", pc.get_dx()))
			elseif s == 3 then
				say_title("Quest Fonksiyonu E�itimi 1: ")
				say_reward("Harita Bilgileri:[ENTER] ")
				say(string.format("MAP ID: %s", pc.get_map_index()))
				say(string.format("Bulundu�u Konum: x = %s, y = %s", pc.get_local_x(), pc.get_local_y()))
			elseif s == 4 then
				say_title("Quest Fonksiyonu E�itimi 1: ")
				say_reward("Yetenek Bilgileri:[ENTER] ")
				say(string.format("At Leveli: %s", pc.get_horse_level()))
				say(string.format("Yetenek Grubu: %s", pc.get_skill_group()))
				say(string.format("Yetenek Puan�: %s", pc.get_skill_point()))
				say(string.format("Suikast Seviyesi: %s", pc.get_skill_level(31)))
				say(string.format("B��ak �evirme Seviyesi: %s", pc.get_skill_level(32)))
				say(string.format("Zehirli Bulut Seviyesi: %s", pc.get_skill_level(33)))
				say(string.format("H�zl� Sald�r� Seviyesi: %s", pc.get_skill_level(34)))
				say(string.format("Kamuflah Seviyesi: %s", pc.get_skill_level(35)))
			elseif s == 5 then
				say_title("Quest Fonksiyonu E�itimi 1: ")
				say_reward("E�ya Bilgileri:[ENTER] ")
				say(string.format("Silah Vnum: %s", pc.get_weapon()))
				say(string.format("Z�rh Vnum: %s", pc.get_armor()))
			elseif s == 6 then
				say_title("Quest Fonksiyonu E�itimi 1: ")
				say_reward("Quest Bilgileri:[ENTER] ")
				say(string.format("Depoyu �u Kadar A�m��: %s", pc.getf("stash", "open_count")))
			end
		end
	end
end