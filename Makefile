group_devices: 
	python3 python_scripts/build-group-device.py -d data/devices.json -g data/group-devices.yaml -o SkyrimNet_UDNG/group-devices.json

build_list: 
	python3 python_scripts/build-list.py Headers/zadlibs.psc Scripts/Source/skyrimnet_UDNG_BuildList.psc
