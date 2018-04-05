ActiveAdmin.register_page "Dashboard" do
   
  sidebar :help do
    ul do
      li "Cadastro de Chegada das Provas Longas"
      li "Gerencias Atletas"
      li "Gerenciar Eventos"
      li "Gerenciar Inscrições"
    end
  end

  content do
    para "Aloha!"
    para "Aqui podemos gerenciar todos os Atletas, Eventos, Inscrições e categorias"
    para "Podemos também cadastrar os tempos dos atletas em cada etapa"
  end

  action_item do
    link_to "View Site", "/"
  end


end
