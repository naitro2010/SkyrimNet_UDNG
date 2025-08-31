import json 
import sys

render_id = {} 
devices = [] 
with open(sys.argv[1]) as fin:
    data = json.load(fin) 
    for device in data: 
        d = {} 
        for key, value in device.items():
            key = key.lower() 
            d[key] = value 
        device = d
        i = device['id'].lower() 
        if "rendered" in i: 
            render_id[i] = hex(device['formid'])
        else:
            devices.append(device)

for device in devices: 
    rendered = device['id'].lower()+"rendered"
    if rendered in render_id:
        print (f"  {render_id[rendered]}:")
        print (f"    name: {device['name']}")
        print (f"    description: {device['description']}")