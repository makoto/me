require 'sinatra'

get "*", :host_name => /^www\./ do
  redirect request.url.gsub(/www\./,''), 301
end

get "/" do
  File.read(File.join('public', 'index.html'))
end