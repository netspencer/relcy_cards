require "relcy"

RelcyCards::App.controllers :card do

  get :index, :with => :id do
    @card = get_card(params[:id])
    render "card/show", :layout => "default"
  end

end
