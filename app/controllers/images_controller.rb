get '/images/random' do
  @image  = Image.random

  erb "<img src=\"<%= @image %>\">", layout: false
end
