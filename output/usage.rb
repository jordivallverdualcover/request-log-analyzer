puts "Usage: ruby parsetodb.rb [LOGFILES*] <OPTIONS>"
puts
puts "Options:"
puts "  --fast, -t:                 Only use completed requests"
puts "  --guess-database-time, -g:  Guesses the database duration of requests" 
puts "  --output, -o:               Comma-separated list of reports to show"     
puts "  --amount, -c:               Displays the top <amount> elements in the reports"     
puts "  --colorize, -z:             Colorize bash output"     
puts 
puts "Examples:"
puts "  ./analyze.rb development.log"
puts "  ./analyze.rb mongrel.0.log mongrel.1.log mongrel.2.log -g -f -o mean_time,most_requested,blockers -c 20"
puts