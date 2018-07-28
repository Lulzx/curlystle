require "tourmaline"

bot = Tourmaline::Bot::Client.new(ENV["API_KEY"])
bot.on(Tourmaline::Bot::UpdateAction::Text) do |update|
  text = update.message.not_nil!.text.not_nil!
  bot.send_message(text.chat.id, #{text})
end
bot.poll