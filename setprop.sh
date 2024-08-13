#!/bin/bash

svccfg -s svc:/system/name-service/switch setprop config/default = astring: files
svccfg -s svc:/system/name-service/switch setprop config/password = astring: "files winbind [ TRYAGAIN = 3 ]"
svccfg -s svc:/system/name-service/switch setprop config/group = astring: "files winbind [ TRYAGAIN = 3 ]"
svccfg -s svc:/system/name-service/switch setprop config/host = astring: "files dns mdns winbind"
svccfg -s svc:/system/name-service/switch setprop config/printer = astring: "user files"
