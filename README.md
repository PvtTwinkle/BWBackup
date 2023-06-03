# Bitwarden Backup Script

## **Requirements**

[Download and Install BW CLI](https://bitwarden.com/help/cli/#download-and-install)

## **Instructions**
1. Open the script using your editor of choice and change the following variables:
    - $Env:BW_CLIENTID #[Get your personal API key](https://bitwarden.com/help/personal-api-key/)
    - $Env:BW_CLIENTSECRET #See above
    - $Env:BW_PASSWORD #Your BW Vault Password
    - $OUTPUT_FOLDER #Path to where you want to save the file
2. Save and Exit the Script File and run it
    - On Windows, you may need to allow the execution of scripts using `Set-ExecutionPolicy Unrestricted`