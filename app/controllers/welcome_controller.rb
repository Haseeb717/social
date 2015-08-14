class WelcomeController < ApplicationController

  	def index
	  	# get twitter data
	  	client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "kjL1HI1cwY4JvGQoeh9vIINt7"
		  config.consumer_secret     = "r4mkHEukmQPDPjOxF9QNvwUtPKOWyV41C1wRfG3J6Rok5xVnmZ"
		  config.access_token        = "1537114273-J88krJePjzmTPzVPRrHvJMqpSSvMxdnfXqpRl58"
		  config.access_token_secret = "YNHxdXPpFwYO2XO4bOVNGoxKmQZ4dZzu6cC6COhYGvHwl"
		end
		write = nil
		filename = Time.now.to_date.to_s+"_data.txt"
		afile = File.open(filename, "w+")
		t_data = ['$DDD','$MMM','$WBAI','$WUBA','$AHC','$AHC','$ATEN','$ABB','$ABT','$ABBV','$ANF','$GCH']
		t_data.each do |d|
			begin
				@tweet_ids = client.search(d, result_type: "recent").take(500)
				@tweet_ids.each do |tweet| 
					date = tweet.created_at.to_date
					u_name = tweet.user.name
					t = tweet.text[0..100]
					url = 'https://twitter.com'+tweet.uri.path;
					write = date.to_s+' | '+ d + ' | '+ u_name +' | '+ t +' | '+ url
					afile.syswrite(write)
					afile.syswrite("\n")
				end
			rescue Exception => e
			rescue Twitter::Error::TooManyRequests => error
				sleep error.rate_limit.reset_in
			end
			
			
		end
	
  end
end
