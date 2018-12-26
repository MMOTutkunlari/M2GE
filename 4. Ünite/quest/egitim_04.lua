quest egitim_04 begin
	state start begin
		when die begin
			notice("Ne yazýk ki öldünüz. ")
			notice_all(pc.get_name().. " öldü. ")
		end
		
		when 101.kill begin
			syschat("Mob oldurdun. Tebrikler. ")
		end
		
		when 171.party_kill begin
			syschat("Mob öldürdün. Tebrikler party..")
		end
	end
end