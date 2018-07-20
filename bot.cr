require "tourmaline"

alias TGBot = Tourmaline::Bot

bot = TGBot::Client.new(ENV["API_KEY"])

bot.command(["start", "help"]) do |message|
  text = "Echo bot is a sample bot created with the awesome Tourmaline bot framework."
  bot.send_message(message.chat.id, text)
end

bot.command("echo") do |message, params|
  text = params.join(" ")
  bot.send_message(message.chat.id, text)
end

bot.poll
