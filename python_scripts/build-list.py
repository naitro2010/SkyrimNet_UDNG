import sys 
import yaml

print (sys.argv)
with open(sys.argv[1], 'r') as fin:
    data = yaml.safe_load(fin) 
    print (data)
    for group in data: 
        for device in group['devices']: 
            print ( "   obj = JMap.object()") 
            print (f'   JMap.setForm(obj,"form",zlibs.{device})')
            print (f'   JMap.setInt(obj,"id",zlibs.{device}.GetFormId())')
            print (f'   JMap.setStr(obj,"name",zlibs.{device}.GetName())')
            print (f'   JMap.setStr(obj,"description",zlibs.{device}.GetDescription())')
            print (f'   JArray.addObj(obj)')

"""
Function BuildList()
   int list = JArray.object() 
   int obj = 0
   JValue.print("Data/SkyrimNet_SexLab/data/devices.json", list) 
EndFunction 
"""