quest egitim_01 begin
	state start begin
		when letter begin
			send_letter("�lk Questim ")
		end
		
		when button or info begin
			say_title("�lk Questim ")
			say("Bu benim Metin2 Geli�tiricilik E�itimini izleyerek[ENTER]yapt���m ilk questim.[ENTER]")
			say_reward("Afferin pek iyi ald�n... ")
			local OK = select("Tamam ")
			send_letter("�lk Questim ")
		end
	end
end