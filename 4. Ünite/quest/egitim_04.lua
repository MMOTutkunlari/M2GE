quest egitim_04 begin
	state start begin
		when die begin
			notice("Ne yaz�k ki �ld�n�z. ")
			notice_all(pc.get_name().. " �ld�. ")
		end
		
		when 101.kill begin
			syschat("Mob oldurdun. Tebrikler. ")
		end
		
		when 171.party_kill begin
			syschat("Mob �ld�rd�n. Tebrikler party..")
		end
	end
end