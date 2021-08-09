class Test

  def get_copyright
    response = HTTParty.get('https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=' + ENV["NYT_API_KEY"])
    JSON.parse(response.body)["copyright"]
  end
end

#JSON.parse(response.body)["copyright"]  it worked! adding JSON.parse(response.body) ahhh i see now, awesome!