json.set! :user do 
  json.(@user, :email, :username)
  json.posts @user.posts, :name, :description
end