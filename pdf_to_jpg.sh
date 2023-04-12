#!/bin/bash

# Nautilus script to convert a PDF file to JPEG format using pdftoppm

# get the input file path from Nautilus
input_file="$1"

# check if the input file is a PDF
if [[ ! "$input_file" =~ \.pdf$ ]]; then
    zenity --error --text="Selected file is not a PDF file."
    exit 1
fi

# ask the user how many pages they want to convert
num_pages=$(zenity --entry --title="Convert PDF to JPEG" --text="Enter the number of pages to convert (or leave blank to convert all pages):")
if [ -z "$num_pages" ]; then
    page_range=""
else
    page_range="1-$num_pages"
fi

# get the output directory path from Nautilus
output_dir=$(zenity --file-selection --directory --title="Select output directory")
if [ -z "$output_dir" ]; then
    exit 1
fi

# check if the output directory exists, if not, create it
if [ ! -d "$output_dir" ]; then
    mkdir -p "$output_dir"
fi

# convert PDF to JPEG using pdftoppm
pdftoppm -jpeg -f 1 -l "$num_pages" "$input_file" "$output_dir/output"

# show a success message
zenity --info --text="Conversion successful. JPEG files are saved in $output_dir directory."
