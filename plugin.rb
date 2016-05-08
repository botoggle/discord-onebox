# name: Discord Onebox Wrapper
# about: Wrap Discord widget for insertion in Onebox
# version: 1.0.0
# authors: @botoggle

class Onebox::Engine::DiscordOnebox
  include Onebox::Engine

  REGEX = /^https:\/\/(discordapp.com)\/widget\?id=(\d+)/
  matches_regexp REGEX

  def id
    @url.match(REGEX)[2]
  end

  # This uses an image URL pulled from the loaded widget, it may not be a stable permalink.
  # TODO: find out if there IS a stable permalink to their logo I can "borrow"
  def placeholder_html
    "<div placeholder style='background-color: #738bd7; padding: 20px;'><div style='background: url(\"https://discordapp.com/assets/35d75407bd75d70e84e945c9f879bab8.svg\") 50% no-repeat; width: 124px; height: 34px; background-size: 124px 34px;' /></div>"
  end

  def to_html
    "<iframe src=\"//discordapp.com/widget?id=#{id}&theme=dark\" width=\"350\" height=\"500\" allowtransparency=\"true\" frameborder=\"0\"></iframe>"
  end
end