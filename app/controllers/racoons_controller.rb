get '/racoons/random' do
  racoon_id = Racoon.all.sample.id
  redirect "racoons/#{racoon_id}"
end

get '/racoons/:id' do
  @racoon = Racoon.find(params[:id])
  erb :'racoons/show'
end
