# Nautilus script to convert a PDF file to JPEG format using pdftoppm
To install this script as a Nautilus script, do the following:

Copy the above code and paste it into a new file using a text editor.
Save the file with a .sh extension (e.g., pdf-to-jpg-nautilus.sh) in the directory ~/.local/share/nautilus/scripts/ (create the directory if it doesn't exist).
Make the script executable by running chmod +x ~/.local/share/nautilus/scripts/pdf-to-jpg-nautilus.sh.
Restart Nautilus by running nautilus -q in the terminal.
Now, when you right-click on a PDF file in Nautilus, you should see a "Scripts" option in the context menu. Hover over it, and you should see the "pdf-to-jpg-nautilus.sh" script. Click on it, and the script will run, prompting you to select an output directory and showing a success message when it's done.
