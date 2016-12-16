get '/dogs/random' do
  dog_id = Dog.all.sample.id
  redirect "dogs/#{dog_id}"
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :'dogs/show'
end
