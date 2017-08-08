require 'socket'                # Get sockets from stdlib

def colorize(text, color = :default, bg_color = :default)
    colors = {
      :default => "38",
      :black => "30",
      :red => "31",
      :green => "32",
      :brown => "33",
      :blue => "34",
      :purple => "35",
      :cyan => "36",
      :gray => "37",
      :dark_gray => "1;30",
      :light_red => "1;31",
      :light_green => "1;32",
      :yellow => "1;33",
      :light_blue => "1;34",
      :light_purple => "1;35",
      :light_cyan => "1;36",
      :white => "1;37"
    }

    bg_colors = {
      :default => "0",
      :black => "40",
      :red => "41",
      :green => "42",
      :brown => "43",
      :blue => "44",
      :purple => "45",
      :cyan => "46",
      :gray => "47",
      :dark_gray => "100",
      :light_red => "101",
      :light_green => "102",
      :yellow => "103",
      :light_blue => "104",
      :light_purple => "105",
      :light_cyan => "106",
      :white => "107"
    }

    color_code = colors[color]
    bg_color_code = bg_colors[bg_color]
    return "\033[#{bg_color_code};#{color_code}m#{text}\033[0m"
end

def ask(obj, question)
  obj.print colorize("#{question}:", :cyan) + " "
  obj.gets.chomp
end

server = TCPServer.open(2000)   # Socket to listen on port 2000
loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    client.puts "Hey there"
    client.puts(Time.now.ctime) # Send the time to the client
    ask client, "Hello"
    client.puts "Closing the connection. Bye!"
    client.close                # Disconnect from the client
  end
}
