post '/dogs/:id/comments' do
  p '^v' * 25
  p 'CORRECT ROUTE!!!!!!!'
  p params
  p '^v' * 25
  @dog = Dog.find(params[:id])
  @comment = @dog.comments.new(body: params[:body])

  if @comment.save
    redirect "dogs/#{@dog.id}"
  else
    erb :'dogs/show'
  end
end

post '/cats/:id/comments' do
  p '^v' * 25
  p 'CORRECT ROUTE!!!!!!!'
  p params
  p '^v' * 25
  @cat = Cat.find(params[:id])
  @comment = @cat.comments.new(body: params[:body])

  if @comment.save
    redirect "cats/#{@cat.id}"
  else
    erb :'cats/show'
  end
end

post '/racoons/:id/comments' do
  p '^v' * 25
  p 'CORRECT ROUTE!!!!!!!'
  p params
  p '^v' * 25
  @racoon = Racoon.find(params[:id])
  @comment = @racoon.comments.new(body: params[:body])

  if @comment.save
    redirect "racoons/#{@racoon.id}"
  else
    erb :'racoons/show'
  end
end
