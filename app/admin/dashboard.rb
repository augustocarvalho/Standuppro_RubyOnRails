ActiveAdmin.register_page "Dashboard" do
   
  sidebar :help do
    ul do
      li "Cadastro de Chegada das Provas Longas"
      li "Gerencias Atletas"
      li "Gerenciar Eventos"
      li "Gerenciar Inscrições"
    end
  end


menu priority: 1
  content title: proc { I18n.t("active_admin.dashboard") } do
    
    columns do
        column do
                
                panel "Recent Subscriptions" do
                  table_for Subscription.event(3).each do |_subscription|
                    column(:number)    { |subscription| link_to(subscription.number, admin_subscription_path(subscription)) }   
                    column("Athlete") {|subscription| subscription.athlete.name}
                    column("Category") {|subscription| subscription.category.name}
                    column("Event") {|subscription| link_to(subscription.event.title, admin_event_path(subscription.event)) }
                    column(:tempo)  
                  end
                end
              end

        column do
                panel "Athletes" do
                  table_for Athlete.order("name desc").each do |_athlete|
                    column(:name)    { |athlete| link_to(athlete.name, admin_athlete_path(athlete)) }
                  end
                end
              end
    end
  end

end
