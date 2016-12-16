get '/racoons/random' do
  p '^v' * 25
  p 'correct route hit'
  p '^v' * 25
  # racoon_id = Racoon.all.sample.id
  # redirect "racoons/#{racoon_id}"
end

get '/racoons/:id' do
  @racoon = Racoon.find(params[:id])
  erb :'racoons/show'
end
