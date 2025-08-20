import json 
import sys

with open(sys.argv[1]) as fin:
    data = json.load(fin) 
    for device in data: 
        print (f"  {hex(device['id'])}:")
        print (f"    name: {device['Name']}")
        print (f"    description: {device['description']}")