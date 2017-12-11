#!/bin/bash
notify-send $(date +%R_%a.%d.%b.%Y) $(acpi -b | cut -d "," -f 2)











