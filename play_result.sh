# Command to be executed in the new terminal window
audio_command="mpg123 music.mp3"

# Function to open a new terminal and execute the audio command
open_new_konsole() {
    konsole -e "$SHELL" -c "$audio_command; $SHELL"
}

mpg123 "rickroll.mp3"&

# Directory containing the processed video frames
directory="processed_video"

# Get the list of text files in the directory
file_list=$(ls -v "$directory"/*.txt)

# Iterate over each text file and print its contents
for file in $file_list; do
    # Clear the terminal before printing a new frame
    clear

    #echo "Processing: $file"
    #echo "-------------------------------------------"
    cat "$file"
    
    # Sleep for a short duration between frames (adjust as needed)
    sleep 0.0372
done
