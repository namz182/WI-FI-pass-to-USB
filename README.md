# Wi-Fi Password Retrieval Script (.bat)

## Description
This is a simple `.bat` script that retrieves saved Wi-Fi passwords on a Windows machine and stores them in a file on the drive where the script is run. It leverages the `netsh` command to extract the Wi-Fi profiles and their corresponding passwords.

## Features
- Creates a new folder where the Wi-Fi profiles are stored.
- Retrieves all saved Wi-Fi profiles on the system.
- Extracts and displays the password for each Wi-Fi profile (if available).
- Saves the Wi-Fi profiles and their corresponding passwords into a text file.

## Usage
1. Clone or download this script.
2. place in a usb stick
3. run the script
## alternative
1. Open **Command Prompt** as **Administrator**.
2. Navigate to the folder containing the script.
3. Run the script by typing:
   ```bash
   wlan.bat
