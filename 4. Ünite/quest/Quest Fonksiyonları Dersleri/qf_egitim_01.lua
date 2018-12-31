-- Metin2 Geliþtiricilik Eðitimi | Quest Dersleri | Bölüm 43 ~ 45
-- MMOTutkunlari.com | Whistle | Eray Öksüz
-- 31.12.2018 - 14.55
-- Bu dosyanýn videosunu izlemek istiyorsanýz: 

quest qf_egitim_01 begin
	state start begin
		when letter begin
			send_letter("Quest Fonksiyonu Eðitim 1 ")
		end
		
		when button or info begin
			say_title("Quest Fonksiyonu Eðitim 1: ")
			say("Karakterinizle ilgili bilgiler almak istiyorsanýz[ENTER]seçenekleri seçin. ")
			
			local s = select("Temel Bilgiler ", "Statü Bilgileri ", "Harita Bilgileri ", "Yetenek Bilgileri ", "Item Bilgileri", "Quest Bilgileri ", "Kapat ")
			
			if s == 1 then
				say_title("Quest Fonksiyonu Eðitim 1: ")
				say_reward("Karakter Bilgileriniz:[ENTER]")
				say(string.format("Karakter Adý, ID ve VID: adi(%s), id(%s), vid(%s) ", pc.get_name(), pc.get_player_id(), pc.get_vid()))
				say(string.format("Hesap Adý ve ID: adi(%s), id(%s) ", pc.get_account(), pc.get_account_id()))
				say(string.format("Karakter Sýnýfý ve Cinsiyeti: sinif(%s), cinsiyet(%s) ", pc.get_race(), pc.get_job()))
				say(string.format("Hesaptaki Yang :%s ", pc.get_gold()))
				say(string.format("Guild ID: %s", pc.get_guild()))
				say(string.format("GM Level: %s", pc.get_gm_level()))
				say(string.format("Sýralama Puaný: %s", pc.get_alignment()))
				say(string.format("EXP Miktarý: %s", pc.get_exp()))
				say(string.format("Bir Sonraki Level Ýçin Gerekli EXP: %s", pc.get_next_exp()))
				say(string.format("Toplam Oyun Saati: %s", pc.get_playtime()))
			elseif s == 2 then
				say_title("Quest Fonksiyonu Eðitimi 1: ")
				say_reward("Statü Bilgileriniz:[ENTER] ")
				say(string.format("HP Bilgisi: %s/%s", pc.get_hp(), pc.get_max_hp()))
				say(string.format("SP Bilgisi: %s/%s", pc.get_sp(), pc.get_max_sp()))
				say(string.format("Hasan Puaný: %s", pc.get_st()))
				say(string.format("Savunma Puaný: %s", pc.get_dx()))
			elseif s == 3 then
				say_title("Quest Fonksiyonu Eðitimi 1: ")
				say_reward("Harita Bilgileri:[ENTER] ")
				say(string.format("MAP ID: %s", pc.get_map_index()))
				say(string.format("Bulunduðu Konum: x = %s, y = %s", pc.get_local_x(), pc.get_local_y()))
			elseif s == 4 then
				say_title("Quest Fonksiyonu Eðitimi 1: ")
				say_reward("Yetenek Bilgileri:[ENTER] ")
				say(string.format("At Leveli: %s", pc.get_horse_level()))
				say(string.format("Yetenek Grubu: %s", pc.get_skill_group()))
				say(string.format("Yetenek Puaný: %s", pc.get_skill_point()))
				say(string.format("Suikast Seviyesi: %s", pc.get_skill_level(31)))
				say(string.format("Býçak Çevirme Seviyesi: %s", pc.get_skill_level(32)))
				say(string.format("Zehirli Bulut Seviyesi: %s", pc.get_skill_level(33)))
				say(string.format("Hýzlý Saldýrý Seviyesi: %s", pc.get_skill_level(34)))
				say(string.format("Kamuflah Seviyesi: %s", pc.get_skill_level(35)))
			elseif s == 5 then
				say_title("Quest Fonksiyonu Eðitimi 1: ")
				say_reward("Eþya Bilgileri:[ENTER] ")
				say(string.format("Silah Vnum: %s", pc.get_weapon()))
				say(string.format("Zýrh Vnum: %s", pc.get_armor()))
			elseif s == 6 then
				say_title("Quest Fonksiyonu Eðitimi 1: ")
				say_reward("Quest Bilgileri:[ENTER] ")
				say(string.format("Depoyu Þu Kadar Açmýþ: %s", pc.getf("stash", "open_count")))
			end
		end
	end
end