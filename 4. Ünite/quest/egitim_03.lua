quest egitim_03 begin
	state start begin
		when letter begin
			local v=find_npc_by_vnum(20011)
			if 0==v then
			else
				target.vid("__TARGET__", v, "Uriel'e git. ")
			end
		end
	
		when __TARGET__.target.click or 20011.chat."���nc� Quest " begin
			target.delete("__TARGET__")
			say_title(string.format("Bilge %s: ", mob_name(20011)))
			say("Merhaba,[ENTER]Demek quest yazmay� ��reniyorsun oyle mi?[ENTER]Buna ger�ekten sevindim. E�er kendini[ENTER]daha da geli�tirmek istiyosan.. ")
			say("MMO Tutkunlar�'n�nn Metin2 Geli�tiricilik E�itimi[ENTER]videolar�na devam etmeni ve videoda anlat�lanlar�[ENTER]yapman� tavvsiye ederim.[ENTER]")
			say_reward("Unutma her�ey ��nene kadar zordur.")
		end
		
		-- when 20011.click begin
			-- say_title(gameforge.main_quest_lv1._60_sayTitle)
            -- say(gameforge.npc_talk._10_say)
        -- end
	end
end