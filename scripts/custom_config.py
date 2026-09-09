#! /usr/bin/env python3

import configparser
import io
import os
import sys

custom_config = configparser.ConfigParser()
config = configparser.ConfigParser()
# Prevent turning keys to lowercase (should not happen on python 3.14)
custom_config.optionxform = str
config.optionxform = str
# Will work in debian trixie (python 3.13+)
# custom_config = configparser.ConfigParser(allow_unnamed_section=True)
# with open(sys.argv[1]) as app:
#     config.read_file(app)
# Below is the workaround:
with open(sys.argv[1]) as app:
    currently_in_global_config = True
    global_config_lines = []
    specific_config_lines = []
    for line in app.readlines():
        if line.startswith("["):
            currently_in_global_config = False

        if currently_in_global_config:
            global_config_lines.append(line)
        else:
            specific_config_lines.append(line)
    config.read_string("".join(specific_config_lines))

if os.path.isfile(sys.argv[2]):
    with open(sys.argv[2]) as app_custom:
        custom_config.read_file(app_custom)

for section_name in custom_config.sections():
    if not config.has_section(section_name):
        config.add_section(section_name)

    for key, value in custom_config.items(section_name, raw=True):
        config.set(section_name, key, value)

# with open(sys.argv[3], "w") as final:
#     config.write(final)
# Workaround:

# print-based debugging
#print("".join(global_config_lines))
#for section in config.sections():
#    print(f"[{section}]")
#    for key, value in config.items(section, raw=True):
#        print(key + " = " + value)

#newConfigStr = io.StringIO("".join(global_config_lines))
newConfigStr = io.StringIO()
newConfigStr.write("".join(global_config_lines))
config.write(newConfigStr)

with open(sys.argv[3], "w") as final:
    newConfigStr.seek(0)
    final.write(newConfigStr.read())
