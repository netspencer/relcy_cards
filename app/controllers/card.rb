require "relcy"

RelcyCards::App.controllers :card do

  get :index, :with => :id do
    relcy = Relcy::Client.new("5E23B46EE823001F9AE0DF0665B56B617122FCC3")
    card = relcy.detail(params[:id])
    params[:id]+" : "+card.body
  end

end
