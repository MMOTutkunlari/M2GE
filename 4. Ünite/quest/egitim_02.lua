quest egitim_02 begin
	state start begin
		when login begin
			notice("Casro2'ye ho� geldiniz. ")
			--notice_all(karakterAdi.. " Casro2'ye giri� yapt�. ")
			notice_all(string.format("%s Casro2'ye giri� yapt�.", pc.get_name()))
		end
		
		when logout begin
			notice_all(pc.get_name().. " Casro2'den ��kt�. ")
		end
		
		when levelup begin
			notice("Tebrikler yeni level ald�n�z.")
			notice_all(string.format("%s %s leveline ula�t�.", pc.get_name(), pc.get_level()))
		end
	end
end