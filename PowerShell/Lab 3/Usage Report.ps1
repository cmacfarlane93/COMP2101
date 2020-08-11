#Usage Report Script by Craig MacFarlane 200199297
#Begin Script with information
echo "Creating a report of disk information. All numbers are in GB format, rounded to two decimal places."

#searching for all disks that have space on them
$disks = get-wmiobject -class win32_logicaldisk | where-object FreeSpace -gt 0

#foreach object in collection of $disks
foreach ($disk in $disks) {
#Creating custom object of these properties from $disk
$diskReport = new-object psobject -Property @{
    Letter = $disk.DeviceID
    Size = [math]::Round($disk.Size / 1GB,2) #converting disk sizes to GB format, rounded to 2 places
    FreeSpace = [math]::Round($disk.FreeSpace / 1.GB,2) #converting disk space to GB format rounded, to 2 places
    ProviderName = $disk.ProviderName
}
#displaying contents of the report in a table
$diskReport | Format-Table -Property Letter, Size, FreeSpace, ProviderName
}


