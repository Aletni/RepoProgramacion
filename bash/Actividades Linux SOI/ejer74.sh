#!/bin/bash

([ -f "$1" ] && [ -r "$1" ] && echo "tiene permiso de lectura") || ([ -f "$1" ] && [ ! -r "$1" ] && echo "no tiene permiso de lectura") || ([ ! -f "$1" ] && echo "no existe")
