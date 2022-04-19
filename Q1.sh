#!/bin/bash

sed -i '/^[[:space:]]*$/d' quotes.txt| sort quotes.txt | uniq>>quotes2.txt