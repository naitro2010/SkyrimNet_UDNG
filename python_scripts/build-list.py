import sys 
import yaml
import re

with open(sys.argv[1], 'r') as fin:
    devices = [] 
    rendered = set() 
    for line in fin: 
        m = re.search(r"Armor Property ([^\s]+)",line)
        if m: 
            device = m.groups(1)[0] 
            if "Render" in device: 
                rendered.add(device) 
            else:
                devices.append(device) 

with open(sys.argv[2],"w") as fout: 
    print( """Scriptname skyrimnet_UDNG_BuildList
Function BuildDeviceListJson() global
    zadLibs zlibs =Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
    int list = JArray.object() 
    int obj = 0""",file=fout)
    for device in devices: 
        render = device+"Rendered"
        if device+"Rendered" in rendered:
            print ( "    obj = JMap.object()",file=fout) 
            print (f'    JMap.setForm(obj,"formInventory",zlibs.{device})',file=fout)
            print (f'    JMap.setForm(obj,"formRendered",zlibs.{device}Rendered)',file=fout)
            print (f'    JMap.setInt(obj,"formId",zlibs.{device}.GetFormId())',file=fout)
            print (f'    JMap.setStr(obj,"name",zlibs.{device}.GetName())',file=fout)
            print (f'    JMap.setStr(obj,"id","{device}")',file=fout)
            print (f'    JMap.setForm(obj,"keyword",zlibs.GetDeviceKeyword(zlibs.{device}))',file=fout)
            print (f'    JMap.setStr(obj,"description",PO3_SKSEFunctions.GetDescription(zlibs.{device}))',file=fout)
            print (f'    JArray.addObj(list,obj)',file=fout)
    print ( '    JValue.writeToFile(list, "Data/devices.json")', file=fout)
    print ( 'EndFunction', file=fout)