get '/cats/random' do
  cat_id = Cat.all.sample.id

  if request.xhr?
    @cat = Cat.find(cat_id)
    erb :'cats/show', layout: false
  else
    redirect "cats/#{cat_id}"
  end
end

get '/cats/:id' do
  @cat = Cat.find(params[:id])
  erb :'cats/show'
end
