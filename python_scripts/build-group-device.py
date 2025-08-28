import argparse 
import json
import yaml 
import sys

parser = argparse.ArgumentParser(description="Build device tree")
parser.add_argument('-d', '--device_file', help='Path to devices file', required=False)
parser.add_argument('-g', '--group_file', help='Path to output group file', required=False)
parser.add_argument('-o', '--output_file', help='Path to output file', required=False)
args = parser.parse_args() 

def main(): 
    device_info = device_parse(args.device_file)
    groups = group_parse(args.group_file, device_info)
    output_print(args.output_file,groups) 

def device_parse(fname): 
    print ('loading', fname) 
    device_info = {} 
    with open(fname) as fin: 
        devices = json.load(fin) 
        for device in devices: 
            device_info[device['id'].lower()] = device
    return device_info

def group_parse(fname, device_info): 
    print ('loading', fname) 
    groups = []
    with open(fname) as fin: 
        groups = yaml.safe_load(fin)
        for group in groups: 
            for i,name in enumerate(group['devices']): 
                name = name.lower() 
                if name in device_info:
                    group['devices'][i] = device_info[name]
                else: 
                    print ("failed to find name")

    return groups
        
def output_print(fname,groups):
    print ('writing', fname) 
    with open(fname,"w") as fout:
        json.dump(groups,indent=4, fp=fout) 

main() 