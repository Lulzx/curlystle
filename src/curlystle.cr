require "tourmaline"

bot = Tourmaline::Bot::Client.new(ENV["API_KEY"])

bot.command("echo") do |message, params|
  text = params.join(" ")
  bot.send_message(message.chat.id, text)
end

bot.poll