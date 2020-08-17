#!/bin/bash
rsync -avrP --no-perms --no-owner --no-group ./Documents/DOCUMENTOS/ root@192.168.0.254:/mnt/soho_storage/samba/shares/NAS128/DOCUMENTOS
