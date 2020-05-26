# pythondiscordbots
Run Python-based discord bots in Docker

<h2> Docker Image</h2>
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

<h2> Adding other pip3 dependencies </h2>
Similar to how to include multiple libraries with one command:
<h3>Desktop CLI: </h3>
```
pip3 install dep1 dep2 dep3 ...
```
<h3>Docker Environment Variable (the -e tag)</h3>
```

-e Dependancies="dep1 dep2 dep3" \
```


where `dep1` `dep2` and `dep3` are the library names. Its good to use the Pytohn Package Index (https://pypi.org/) for this.
