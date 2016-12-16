get '/dogs/random' do
  dog_id = Dog.all.sample.id
  if request.xhr?
    @dog = Dog.find(dog_id)
    erb :'dogs/show', layout: false
  else
    redirect "dogs/#{dog_id}"
  end
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :'dogs/show'
end
