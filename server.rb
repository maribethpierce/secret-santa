require 'sinatra'
#require 'shotgun'
require 'pg'
require 'pry'

def db_connection
  begin
    connection = PG.connect(dbname: "SecretSanta")
    yield connection
  ensure
    connection.close
  end
end

def santa_adder(params)
  unless params["person"].empty? #|| params["phone"].empty?

    db_connection do |conn|
      sql_query = "INSERT INTO users (name, phone) VALUES ($1, $2);"
      data = [params["person"], params["phone"]]
      conn.exec_params(sql_query, data)
    end
  end
end

get "/" do
  redirect "/Secret_Santa"
end

get "/Secret_Santa" do

  erb :index
end

post "/Secret_Santa" do
  santa_adder(params)
  redirect "/Secret_Santa"
end

get "/Secret_Santa/:id" do
  
end
