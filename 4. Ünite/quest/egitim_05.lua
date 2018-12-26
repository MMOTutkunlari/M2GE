quest egitim_05 begin
	state start begin
		-- when 70058.use or 76042.use begin
			-- say_title("Iþýnlama Yüzüðü: ")
			-- say("Bu bir ýþýnlama yüzüðüdür. ")
		-- end
		
		when 10031.sig_use begin
			say_title("Iþýnlama Yüzüðü: ")
			say("Bu bir ýþýnlama yüzüðüdür. sig_use ")
		end
	end
end