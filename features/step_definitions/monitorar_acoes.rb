Quando("que acesse a url fundamentus") do
    $page = Index.new
    #$page.load
end
  
Entao("devo exibir os dados da ação {string}") do |string|
  visit "detalhes.php?papel=#{string}"
   puts $page.ValorPapel('teste')
  #visit "detalhes.php?papel=#{string}"
  #elemento =  page.all(:css , 'label.w2')
  #puts elemento.text
end