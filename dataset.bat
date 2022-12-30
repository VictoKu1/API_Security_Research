:: Function definition

function DownloadAndUnzip {
    param(
        [string]$url,
        [string]$outputFile
    )

    :: Download from a URL
    Invoke-WebRequest -Uri $url -OutFile $outputFile -UseBasicParsing -ErrorAction SilentlyContinue

    :: Unzip the file
    Start-Process -FilePath "Expand-Archive" -ArgumentList "$outputFile", ".", "-Force" -NoNewWindow -Wait
}

:: Function call
DownloadAndUnzip -url 'https://arielacil-my.sharepoint.com/personal/rand_ariel_ac_il/_layouts/15/download.aspx?SourceUrl=%2Fpersonal%2Frand%5Fariel%5Fac%5Fil%2FDocuments%2Fdataset%2FAPI%20security%20Cisco%2Fcombined%5Fdatasets%5Ffor%5Fstudents%2Ezip' -outputFile 'dataset.zip'







