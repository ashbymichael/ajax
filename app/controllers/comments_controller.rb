post '/dogs/:id/comments' do
  @dog = Dog.find(params[:id])
  @comment = @dog.comments.new(body: params[:body])

  if @comment.save
    if request.xhr?
      erb :'partials/_new_comment', layout: false
    else
      redirect "dogs/#{@dog.id}"
    end
  else
    erb :'dogs/show'
  end
end

post '/cats/:id/comments' do
  @cat = Cat.find(params[:id])
  @comment = @cat.comments.new(body: params[:body])

  if @comment.save
    if request.xhr?
      erb :'partials/_new_comment', layout: false
    else
      redirect "cats/#{@cat.id}"
    end
  else
    erb :'cats/show'
  end
end

post '/racoons/:id/comments' do
  @racoon = Racoon.find(params[:id])
  @comment = @racoon.comments.new(body: params[:body])

  if @comment.save
    if request.xhr?
      erb :'partials/_new_comment', layout: false
    else
      redirect "racoons/#{@racoon.id}"
    end
  else
    erb :'racoons/show'
  end
end
