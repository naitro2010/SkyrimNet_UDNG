import sys 
import yaml
import re

print( """
Function BuildList()
    zadLibs zlibs =Game.GetFormFromFile(0x00F624, "Devious Devices - Integration.esm") as zadlibs
    int list = JArray.object() 
    int obj = 0
""")
with open(sys.argv[1], 'r') as fin:
    for line in fin: 
        m = re.search(r"Armor Property ([^\s]+)",line)
        if m: 
            device = m.groups(1)[0] 
            if "Render" not in device:
                print ( "    obj = JMap.object()") 
                print (f'    JMap.setForm(obj,"form",zlibs.{device})')
                print (f'    JMap.setInt(obj,"formId",zlibs.{device}.GetFormId())')
                print (f'    JMap.setStr(obj,"name",zlibs.{device}.GetName())')
                print (f'    JMap.setStr(obj,"id","{device}")')
                print (f'    JMap.setStr(obj,"description",PO3_SKSEFunctions.GetDescription(zlibs.{device}))')
                print (f'    JArray.addObj(list,obj)')
print ("""
    JValue.writeToFile(list, "Data/devices.json")
EndFunction 
""")
