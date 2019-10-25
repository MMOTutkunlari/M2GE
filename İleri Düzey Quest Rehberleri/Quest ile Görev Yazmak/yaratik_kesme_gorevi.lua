quest yaratik_kesme_gorevi begin
	state start begin
		when login or enter or levelup with pc.get_level() >= 10 begin
			set_state(gorevi_baslat)
		end
	end
	
	state gorevi_baslat begin
		when letter begin
			send_letter("Domuzlar Sorun Çýkartýyor")
			
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
				target.vid("__TARGET__", v, "Köy Gardiyan'ýna git. ")
			end
		end
		
		when button or info begin
			say_title("Domuzlar Sorun Çýkartýyor: ")
			say("Domuzlar köylülere saldýrmaya baþladý.")
			say("Köy Gardiyan'ý bu sorunu çözmek için askerleri")
			say("yanýna çaðýrmaya baþladý. Hemen gidip Köy Gardiyan'ýný gör.")
		end
		
		when __TARGET__.target.click or 11000.chat."Domuzlar Sorun Çýkartýyor" 
			or 11002.chat."Domuzlar Sorun Çýkartýyor"
			or 11004.chat."Domuzlar Sorun Çýkartýyor" begin
			
			target.delete("__TARGET__")
			say_title("Köy Gardiyaný: ")
			say("Yaban domuzlarý son zamanlarda çok saldýrganlaþtý.")
			say("Bu durum köyümüzün huzurunu ve ticaretini bozuyor.")
			say("Senden þunu istiyorum. 20 tane yaban domuzu öldür.")
			set_state(domuzlarý_oldur)
		end
	end
	
	state domuzlarý_oldur begin
		when letter begin
			send_letter("Yaban Domuzlarýný Öldür")
		end
		
		when button or info begin
			say_title("Yaban Domuzlarýný Öldür: ")
			say("Yaban domuzlarý köyün huzurunu bozuyor.")
			say("onlara ders vermek için birkaç tanesini öldür.")
			say("")
			say_reward(string.format("Þu ana kadar %s/%s yaban domuzu öldürdün.", 20, 20-pc.getqf("oldurulen_domuz")))
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
			send_letter("Köy Gardiyanýna Dön")
			
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
				target.vid("__TARGET__", v, "Köy Gardiyan'ýna git. ")
			end
		end
		
		when button or info begin
			say_title("Köy Gardiyanýna Dön: ")
			say("Yeteri kadar yaban domuzu öldürdün geri dön.")
		end
		
		
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title("Köy Gardiyaný: ")
			say("Harika! Artýk yaban domuzlarý geri çekildi.")
			say("Çabanýn ödülü olarak sana þunlarý veriyorum.")
			say()
			say_reward("20.000 Yang[ENTER]Ay Özütü (K) ")
			pc.change_gold(20000)
			pc.give_item2(76004)
			set_state(__COMPLATE__)
			clear_letter()
		end
	end
	
	state __COMPLATE__ begin
	end
end