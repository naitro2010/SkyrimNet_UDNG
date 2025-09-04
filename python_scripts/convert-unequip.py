import sys
import re 

def main(): 
    name_keywords = [] 
    with open(sys.argv[1]) as fin: 
        for line in fin: 
            #print (line.rstrip())
            m = re.search(r"n ExtCmdUnequip([^\(^_]+)\(",line) 
            if m: 
                name = m.groups(1)[0]
            m = re.search(r"akTarget\,libs_local\.([a-zA-Z_]+)",line) 
            if m: 
                keyword = m.group(1)
                name_keywords.append([name,keyword])
    for name,keyword in name_keywords: 
        elseif(name,keyword)
        
    for name,keyword in name_keywords: 
        functions(name)
def elseif(name,keyword):
    print (f"""    elseif name == "{name}"
        return libs_local.{keyword}""")

def functions(name): 
    print ( "; -----")
    print (f"; {name}")
    print (f"""; ----- 
bool Function ExtCmdUnequip{name}_IsEligible(Actor akActor, string contextJson, string paramsJson) global
    return ExtCmdUnequip_IsEligible(akActor, "{name}") 
EndFunction

Function ExtCmdUnequip{name}(Actor akOriginator, string contextJson, string paramsJson) global
    ExtCmdUnequip(akOriginator, paramsJson, "{name}")
EndFunction 
""")

main() 