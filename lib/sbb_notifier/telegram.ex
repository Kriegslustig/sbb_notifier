defmodule SbbNotifier.Telegram do
  def send(uid, s, t) do
    Telebot.Api.send_message uid,
                             s <> ": " <> t
  end
end

