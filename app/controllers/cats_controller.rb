get '/cats/random' do
  cat_id = Cat.all.sample.id
  redirect "cats/#{cat_id}"
end

get '/cats/:id' do
  @cat = Cat.find(params[:id])
  erb :'cats/show'
end
