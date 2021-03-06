#!/bin/bash
# 
# There are mulitple ways of downloading files with python
# 
# In shell scripts
wget -c --read-timeout=5 --tries=4 "https://www.kaggle.com/lava18/google-play-store-apps/downloads/googleplaystore.csv/6"
# 
# -c - Continue from where you left off if the download is interrupted.
# 
# --read-timeout=5 - If there is no new data coming in for over 5 seconds, give up and try again. Given -c this mean it will try again from where it left off.
# 
# --tries=0 - Retry forever.
# 
# In python, you can also do it with the urllib library
# 
# import urllib2
# 
# attempts = 0
# 
# while attempts < 3:
#     try:
#         response = urllib2.urlopen("http://example.com", timeout = 5)
#         content = response.read()
#         f = open( "local/index.html", 'w' )
#         f.write( content )
#         f.close()
#         break
#     except urllib2.URLError as e:
#         attempts += 1
#         print type(e)
# 
# ########################################################
# There is also a wget module in python as well
# 
# >>> import wget
# >>> url = 'http://www.futurecrew.com/skaven/song_files/mp3/razorback.mp3'
# >>> output_directory = <directory_name>
# >>> filename = wget.download(url, out=output_directory)
# >>> filename
# 'razorback.mp3'
# 
# ########## and there is also the request library ###########
# 
# import requests
# fname = 'guppy-0.1.10.tar.gz'
# url = 'https://pypi.python.org/packages/source/g/guppy/' + fname
# r = requests.get(url)
# open(fname , 'wb').write(r.content)
