import base64 ,urllib2
import os 
import sys

def crack(code):
    zeros = ''
    ones = ''
    for n,letter in enumerate(code):
        if n%2 == 0:
            zeros += code[n]
        else:
            ones =code[n] + ones
    key = zeros + ones
    key = base64.b64decode(key.encode("utf-8"))
    return key[2:]
    
os.system('clear')
url = raw_input("\nadfly@decrypt ~$ ")
if "http" not in url:
    url = "http://"+url
adfly_data = urllib2.urlopen(url).read()
ysmm = adfly_data.split("ysmm = \'")[1].split("\';")[0]
print "\n URL : "+crack(ysmm)
