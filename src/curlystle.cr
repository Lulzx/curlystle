require "tourmaline"

bot = Tourmaline::Bot::Client.new(ENV["API_KEY"])
bot.on(Tourmaline::Bot::UpdateAction::Text) do |update|
  bot.send_message(message.chat.id, update.text)
end
bot.poll