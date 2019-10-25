quest yaratik_kesme_gorevi begin
	state start begin
		when login or enter or levelup with pc.get_level() >= 10 begin
			set_state(gorevi_baslat)
		end
	end
	
	state gorevi_baslat begin
		when letter begin
			send_letter("Domuzlar Sorun ��kart�yor")
			
			local find_npc_vnum = 0
			if pc.get_empire() == 1 then
				find_npc_vnum = 11000
			elseif pc.get_empire() == 2 then
				find_npc_vnum = 11002
			elseif pc.get_empire() == 3 then
				find_npc_vnum = 11004
			end
			
			local v = find_npc_by_vnum(find_npc_vnum)
			
			if v != 0 then
				target.vid("__TARGET__", v, "K�y Gardiyan'�na git. ")
			end
		end
		
		when button or info begin
			say_title("Domuzlar Sorun ��kart�yor: ")
			say("Domuzlar k�yl�lere sald�rmaya ba�lad�.")
			say("K�y Gardiyan'� bu sorunu ��zmek i�in askerleri")
			say("yan�na �a��rmaya ba�lad�. Hemen gidip K�y Gardiyan'�n� g�r.")
		end
		
		when __TARGET__.target.click or 11000.chat."Domuzlar Sorun ��kart�yor" 
			or 11002.chat."Domuzlar Sorun ��kart�yor"
			or 11004.chat."Domuzlar Sorun ��kart�yor" begin
			
			target.delete("__TARGET__")
			say_title("K�y Gardiyan�: ")
			say("Yaban domuzlar� son zamanlarda �ok sald�rganla�t�.")
			say("Bu durum k�y�m�z�n huzurunu ve ticaretini bozuyor.")
			say("Senden �unu istiyorum. 20 tane yaban domuzu �ld�r.")
			set_state(domuzlar�_oldur)
		end
	end
	
	state domuzlar�_oldur begin
		when letter begin
			send_letter("Yaban Domuzlar�n� �ld�r")
		end
		
		when button or info begin
			say_title("Yaban Domuzlar�n� �ld�r: ")
			say("Yaban domuzlar� k�y�n huzurunu bozuyor.")
			say("onlara ders vermek i�in birka� tanesini �ld�r.")
			say("")
			say_reward(string.format("�u ana kadar %s/%s yaban domuzu �ld�rd�n.", 20, 20-pc.getqf("oldurulen_domuz")))
			q.set_counter("Yaban Domuzu: ", 20-pc.getqf("oldurulen_domuz"))
		end
		
		when 108.kill begin
			if pc.getqf("oldurulen_domuz") <= 20 then
				pc.setqf("oldurulen_domuz", pc.getqf("oldurulen_domuz")+1)
				q.set_counter("Yaban Domuzu: ", 20-pc.getqf("oldurulen_domuz"))
				
				if pc.getqf("oldurulen_domuz") == 20 then
					set_state(gardiyana_don)
				end
			end
		end
	end
	
	state gardiyana_don begin
		when letter begin
			send_letter("K�y Gardiyan�na D�n")
			
			local find_npc_vnum = 0
			if pc.get_empire() == 1 then
				find_npc_vnum = 11000
			elseif pc.get_empire() == 2 then
				find_npc_vnum = 11002
			elseif pc.get_empire() == 3 then
				find_npc_vnum = 11004
			end
			
			local v = find_npc_by_vnum(find_npc_vnum)
			
			if v != 0 then
				target.vid("__TARGET__", v, "K�y Gardiyan'�na git. ")
			end
		end
		
		when button or info begin
			say_title("K�y Gardiyan�na D�n: ")
			say("Yeteri kadar yaban domuzu �ld�rd�n geri d�n.")
		end
		
		
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title("K�y Gardiyan�: ")
			say("Harika! Art�k yaban domuzlar� geri �ekildi.")
			say("�aban�n �d�l� olarak sana �unlar� veriyorum.")
			say()
			say_reward("20.000 Yang[ENTER]Ay �z�t� (K) ")
			pc.change_gold(20000)
			pc.give_item2(76004)
			set_state(__COMPLATE__)
			clear_letter()
		end
	end
	
	state __COMPLATE__ begin
	end
end