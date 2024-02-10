# Bitwarden Backup Script

#Variables
export BW_CLIENTID="your_bw_client_id"
export BW_CLIENTSECRET="your_bw_client_secret"
export BW_PASSWORD="your_bw_password"
OUTPUT_FOLDER="/path/to/folder"

#StartScript
##Get the current date
TIME=$(date +"%Y-%m-%d-%H-%M")

##Set Output 
OUTPUT="$OUTPUT_FOLDER$TIME-BW_Backup.json"

##Login to Bitwarden
bw login --apikey --raw

##Unlock Bitwarden Vault and Save Session Key Environment Variable
SESSION_KEY=$(bw unlock --passwordenv BW_PASSWORD --raw)
export BW_SESSION=$SESSION_KEY

##Export Vault 
bw export --output $OUTPUT --format json --raw

##Lock Vault and then Logout
bw lock --raw
bw logout --raw

#EndScript
