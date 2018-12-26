quest egitim_03 begin
	state start begin
		when letter begin
			local v=find_npc_by_vnum(20011)
			if 0==v then
			else
				target.vid("__TARGET__", v, "Uriel'e git. ")
			end
		end
	
		when __TARGET__.target.click or 20011.chat."Üçüncü Quest " begin
			target.delete("__TARGET__")
			say_title(string.format("Bilge %s: ", mob_name(20011)))
			say("Merhaba,[ENTER]Demek quest yazmayý Öðreniyorsun oyle mi?[ENTER]Buna gerçekten sevindim. Eðer kendini[ENTER]daha da geliþtirmek istiyosan.. ")
			say("MMO Tutkunlarý'nýnn Metin2 Geliþtiricilik Eðitimi[ENTER]videolarýna devam etmeni ve videoda anlatýlanlarý[ENTER]yapmaný tavvsiye ederim.[ENTER]")
			say_reward("Unutma herþey öðnene kadar zordur.")
		end
		
		-- when 20011.click begin
			-- say_title(gameforge.main_quest_lv1._60_sayTitle)
            -- say(gameforge.npc_talk._10_say)
        -- end
	end
end