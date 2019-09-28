quest dinamik_quest begin
	state start begin
		when letter begin
			send_letter("Dinamik Quest")
		end
		
		when button or info begin
			say_title("Dinamik Quest:")
			say("A�a��da yaz�lacak olanlar dinamik olarak al�nm��t�r.")
			
			local sayData = dinamik_quest.data().say
			local sayDataCount = table.getn(sayData)
			
			for i=1, sayDataCount do
				say(sayData[i])
			end
			
			wait()
			say_title("Dinamik Quest:")
			local itemsData = dinamik_quest.data().items
			
			for i=1, table.getn(itemsData) do
				say_item_vnum(itemsData[i])
			end
			
			wait()
			say_title("Dinamik Quest:")
			table.insert(sayData, "Kapat ")
			local sec = select_table(sayData)
			
			if sec == table.getn(sayData) then return end
			
			say(string.format("Secti�iniz se�enek: %s", sayData[sec]))
		end
		
		function data()
			return {
				["say"] = {"Merhaba", "Casro2", "Whistle", "MMO Tutkunlar� "},
				["items"] = {70069, 70101, 70102}
			}
		end
	end
end
