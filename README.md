# Discord Onebox Wrapper

Wraps a [Discord][1] server widget URL in the appropriate iframe using Onebox, so you can embed it in a forum thread without having to allow everyone to use iframes willy-nilly. No settings, no support, no problem.

## Usage
Plug-and-play. Use the Discord server options to get the widget embed code, then copy and paste just the URL rather than the whole mess into a post. You're done!

## Installation
* Add this repo to your app.yml, as usual.
```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/botoggle/discord-onebox.git
```
* Rebuild the container.
```bash
cd /var/discourse
./launcher rebuild app
```
* Wow, you did it!

## License
Good ol' GNU GPL 2.

[1]: http://discordapp.com/