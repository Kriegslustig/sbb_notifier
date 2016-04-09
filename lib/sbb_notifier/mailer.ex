defmodule SbbNotifier.Mailer do
  @config domain: Application.get_env(:sbb_notifier, :mailgun_domain),
          key: Application.get_env(:sbb_notifier, :mailgun_key)
  use Mailgun.Client, @config

  def notify(address, s, t) do
    send_email to: address,
               from: "rando@kriegslustig.me",
               subject: "SBB Notifier: " ++ s,
               text: t
  end
end

