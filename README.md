# pythondiscordbots
Run Python-based discord bots in Docker
Image based on the Ubuntu base image

<h2> Docker Image</h2>
<strong>NOTE:</strong> Replace bot.py, pip3 & apt Dependencies with values that suit your needs.

discord.py requests pytz simplejson come preinstalled!


```
docker create \
  --name=PythonBot \
  -e BOTFileName="<!optional>" \ 
  -e Pip_Depenendcies ="<!optional>" \ 
  -e Apt_Dependencies ="<!optional>" \ 
  -e DISCORD_PY_VERSION = "<Defaults to 1.6.0>
  -v /path/to/bot:/mnt/bot \
  --restart unless-stopped \
  tomscatbilly/pythondiscordbots
```

<h2>Loading a specific Discord.py Verison</h2>
By default, it loads version 1.6.0, but can load a specific version if needed by changing the environment variable 'DISCORD_PY_VERSION' to be the version you need. 
E.g. ```-e DISCORD_PY_VERSION ="1.5.1"```

<h2> Adding other  dependencies </h2>
Similar to how to include multiple libraries with one command:
<h3>Desktop CLI: </h3>

```
pip3 install dep1 dep2 dep3 ...
sudo apt install dep1 dep2 dep3
```

<h3>Docker Environment Variable (the -e tag)</h3>

```
-e Pip_Depenendcies ="dep1 dep2 dep3" \ 
-e Apt_Dependencies ="dep1 dep2 dep3" \
```

where `dep1` `dep2` and `dep3` are the library names. Its good to use the Python Package Index (https://pypi.org/) for this.
