quest grup_uyeleri begin
	state start begin
		when letter begin
			send_letter("Grup Üyeleri")
		end
		
		when button or info begin
			say_title("Grup üyeleri:")
			
			local grupUyeleri = {party.get_member_pids()}
			
			for i, pid in next, grupUyeleri, nil do
				q.begin_other_pc_block(pid)
				say(string.format("Level: %d, Name: %s", pc.get_level(), pc.get_name()))
				if pc.getf("stash", "open_count") > 0 then
					say(string.format("%s daha önce depo açmýþ.", pc.get_name()))
				else
					say(string.format("%s daha deposunu hiç açmamýþ.", pc.get_name()))
				end
				q.end_other_pc_block(pid)
			end
		end
	end
end