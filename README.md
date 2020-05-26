# pythondiscordbots
Run Python-based discord bots in Docker

<h2> Docker Image
<strong>NOTE:</strong> Replace bot.py and the pip3 Dependencies with values that suit your needs.
Discord.py is preinstalled!

```
docker create \
  --name=PythonBot \
  -e BOTFileName=bot.py \
  -e Dependancies="pytz simplejson requests pythonping iperf3" \
  -v /path/to/bot:/mnt/bot \
  --restart unless-stopped \
  tomscatbilly/pythondiscordbots
```

