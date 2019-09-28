quest yerel_fonksiyon begin
	state start begin
		when letter begin
			send_letter("Quest Ýçi Fonksiyon")
		end
		
		when button or info begin
			say_title("Quest içi fonksiyon: ")
			yerel_fonksiyon.merhaba("Casro2", 39026)
			wait()
			say_title("Quest içi fonksiyon: ")
			yerel_fonksiyon.merhaba("Eray", 39028)
		end
		
		function merhaba(text, vnum)
			say("Merhaba, "..text)
			say("Þu eþya dikkanizi çekebilir.")
			say_item_vnum(vnum)
		end
	end
end