require "tourmaline"

class EchoBot < Tourmaline::Client
  @[Command("echo")]
  def echo_command(client, update)
    if message = update.message
      text = update.context["text"].as_s
      message.respond(text)
    end
  end
end

API_KEY = "YOUR_BOT_API_KEY"
bot = EchoBot.new(API_KEY)
bot.poll
