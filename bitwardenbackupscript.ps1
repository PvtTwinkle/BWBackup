# Bitwarden Backup Script
## Written by Kevin Starr

#Variables
$Env:BW_CLIENTID = "your_bw_client_id"
$Env:BW_CLIENTSECRET = "your_bw_client_secret"
$Env:BW_PASSWORD = "your_bw_password"
$OUTPUT_FOLDER = "C:\Path\To\Folder"

#StartScript
##Get the current date
$TIME = Get-Date -Format "yyyy-MM-dd-HH-mm"

##Set Output 
$OUTPUT = "$OUTPUT_FOLDER$TIME-BW_Backup.json"

##Login to Bitwarden
bw login --apikey --raw

##Unlock Bitwarden Vault and Save Session Key Environment Variable
$SESSION_KEY = bw unlock --passwordenv BW_PASSWORD --raw
$env:BW_SESSION = $SESSION_KEY

##Export Vault 
bw export --output $OUTPUT --format json --raw

##Lock Vault and then Logout
bw lock --raw
bw logout --raw

#EndScript