
get '/bookmarks' do
  @bookmarks = Bookmark.all
  erb :index
end

get '/bookmarks/new' do
  @bookmark = Bookmark.new
  erb :new
end

get '/bookmarks/:genre' do
  @genre = params[:genre]
  @bookmarks = Bookmark.all
  erb :genre
end

post '/bookmarks' do
  @bookmark = Bookmark.new(params[:bookmark])
  @bookmark.save

  redirect to('/bookmarks')
end

get '/bookmarks/:id/edit' do
  @bookmark = Bookmark.find(params[:id])

  erb :edit
end

post '/bookmarks/:id' do
  @bookmark = Bookmark.find(params[:id])
  @bookmark.update_attributes(params[:bookmark])

  redirect to('/bookmarks')
end

post '/bookmarks/:id/delete' do
  bookmark = Bookmark.find(params[:id])
  bookmark.destroy

  redirect to('/bookmarks')
end









