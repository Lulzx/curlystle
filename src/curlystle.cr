require "ngrok"
require "tourmaline"

alias TGBot = Tourmaline::Bot

Ngrok.start({addr: "127.0.0.1:3400"}) do |ngrok|
bot = TGBot::Client.new(ENV["API_KEY"])

bot.command(["start", "help"]) do |message|
  text = "Echo bot is a sample bot created with the awesome Tourmaline bot framework."
  bot.send_message(message.chat.id, text)
end

bot.command("echo") do |message, params|
  text = params.join(" ")
  bot.send_message(message.chat.id, text)
end

bot.set_webhook(ngrok.ngrok_url_https)
  bot.serve("127.0.0.1", 3400)
end
