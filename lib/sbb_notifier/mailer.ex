defmodule SbbNotifier.Mailer do
  @config domain: Application.get_env(:sbb_notifier, :mailgun_domain),
          key: Application.get_env(:sbb_notifier, :mailgun_key)
  use Mailgun.Client, @config

  def notify(address) do
    send_email to: address,
               from: "rando@kriegslustig.me",
               subject: "SBB: ...",
               text: "YOLO!"
  end
end

