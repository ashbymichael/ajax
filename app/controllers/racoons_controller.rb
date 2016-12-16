get '/racoons/random' do
  racoon_id = Racoon.all.sample.id

  if request.xhr?
    @racoon = Racoon.find(racoon_id)
    erb :'racoons/show', layout: false
  else
    redirect "racoons/#{racoon_id}"
  end
end

get '/racoons/:id' do
  @racoon = Racoon.find(params[:id])
  erb :'racoons/show'
end
