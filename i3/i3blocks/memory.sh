#!/bin/sh
free | grep Mem | awk '{printf $3/$2 * 100.0}; {printf "%"}'
