class Index<SitePrism::Page
    set_url ''
    #set_url ''
    element :papel, '.data.w35'
    element :cotacao, :xpath, '/html/body/div[1]/div[2]/table[1]/tbody/tr[1]/td[4]/span'
    element :pl, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[2]/td[4]/span' 
    element :pvp, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[3]/td[4]/span'
    element :vpa, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[3]/td[6]/span'
    element :divYield, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[9]/td[4]/span'
    element :divPatri, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[11]/td[6]/span'
    element :receita12Meses, :xpath, '/html/body/div[1]/div[2]/table[5]/tbody/tr[3]/td[2]/span'
    element :lucro12Meses, :xpath, '/html/body/div[1]/div[2]/table[5]/tbody/tr[5]/td[2]/span'
    element :receita3Meses, :xpath, '/html/body/div[1]/div[2]/table[5]/tbody/tr[3]/td[4]/span'
    element :lucro3Meses, :xpath, '/html/body/div[1]/div[2]/table[5]/tbody/tr[5]/td[4]/span'
    element :roe, :xpath, '/html/body/div[1]/div[2]/table[3]/tbody/tr[9]/td[6]/span'
    element :setor, :xpath, '/html/body/div[1]/div[2]/table[1]/tbody/tr[4]/td[2]/span/a'
    element :dataCotacao, :xpath, '/html/body/div[1]/div[2]/table[1]/tbody/tr[2]/td[4]/span'
    element :dividaLiquida, :xpath, '/html/body/div[1]/div[2]/table[4]/tbody/tr[3]/td[4]/span'

 
    def ValorPapel(txt)
       return "#{cotacao.text} | #{vpa.text} | #{pvp.text}| #{pl.text}| #{divYield.text}| #{roe.text}| #{divPatri.text}|#{lucro12Meses.text}| #{lucro3Meses.text}| #{setor.text} |#{receita12Meses.text}| #{receita3Meses.text}| #{dividaLiquida.text}|#{dataCotacao.text}"
    end

end