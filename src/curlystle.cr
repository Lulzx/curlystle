require "tourmaline"

bot = Tourmaline::Bot::Client.new(ENV["API_KEY"])

bot.on(TGBot::UpdateAction::Text) do |update|
  text = update.message.not_nil!.text.not_nil!
  puts "TEXT: #{text}"
end

bot.poll