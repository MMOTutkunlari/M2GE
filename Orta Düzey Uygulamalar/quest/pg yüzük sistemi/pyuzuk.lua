quest pyuzuk begin
	state start begin
		when 40008.use begin
			if pc.get_skill_group() == 0 then
				say_title("Perfect Master Yüzüðü: ")
				say("Henüz herhangi bir eðitime katýlmadýðýnýz için ")
				say("yeteneklerinizi geliþtiremezsiniz.")
			end
			
			local result = pyuzuk.BuildSkillList(pc.get_job(), pc.get_skill_group())

			local vnum_list = result[1]
			local name_list = result[2]
			
			if table.getn(vnum_list) == 0 then
				say_title("Perfect Master Yüzüðü: ")
				say("Becerilerinizi Perfect Master yapabilmek için")
				say("1 puan vermeniz gerekli.")
				return
			end
			say_title("Perfect Master Yüzüðü: ")
			say("Perfect Master yapmak istediðin beceriyi seç ")
			
			local menu_list = {}
			table.foreach(name_list, function(i, name) table.insert(menu_list, name) end)
			table.insert(menu_list, gameforge.locale.cancel) 

			local s=select_table(menu_list)
			
			if table.getn(menu_list) == s then
				return
			end

			local skill_name=name_list[s]
			local skill_vnum=vnum_list[s]
			local skill_level = pc.get_skill_level(skill_vnum)
			
			local title=string.format("%s perfect master eðitimi ", skill_name)

			say_title("Perfect Master Yüzüðü: ")
			say("Seçtiðiniz yetenek Perfect Master olacak. ")
			say("Ýþlemi onaylýyor musunuz?")
			
			local s= select(gameforge.locale.levelup.prev_quest_go, gameforge.locale.cancel)	
			
			if s==2 then
				return
			end
			
			if pc.count_item(40008) > 0 then
				pc.set_skill_level(skill_vnum, 40)
				say_title(title)
				say_reward("Bu beceri için Perfect Master seviyesine ulaþtýnýz.")
				
				pc.remove_item(40008)
			else
				char_log(0, "HACK 40008", pc.getname())
			end
		end
		
		function BuildSkillList(job, group)
			MIN_SKILL_LEVEL = 1
			PERFECT_MASTER_SKILL_LEVEL = 40

			local skill_list = special.active_skill_list[job+1][group]
			local ret_vnum_list = {}
			local ret_name_list = {}

			table.foreach(skill_list, 
			function(i, skill_vnum) 
			local skill_level = pc.get_skill_level(skill_vnum)

			if skill_level >= MIN_SKILL_LEVEL and skill_level < PERFECT_MASTER_SKILL_LEVEL then
				table.insert(ret_vnum_list, skill_vnum)
				local name=locale.GM_SKILL_NAME_DICT[skill_vnum]
				
				if name == nil then name=skill_vnum end
					table.insert(ret_name_list, name)
				end
			end)
			return {ret_vnum_list, ret_name_list}
		end
	end
end