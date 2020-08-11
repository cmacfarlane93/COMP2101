#Script by Craig MacFarlane 200199297
echo "Creating detailed system information report..." #output for user
echo "`n#### Section 1 - System Description #####" #Title for section
Get-CimInstance -ClassName win32_computersystem #retrieving computersystem collection

echo "`n#### Section 2 - Operating System #####" #Title for section
Get-CimInstance -ClassName win32_operatingsystem | Select Name, Version #retrieving operatingsystem collection 
                                                                        #Select used for Name, Version Properties

echo "`n#### Section 3 - Processor Information #####" #Title for section
Get-CimInstance -ClassName win32_processor #retrieving computersystem collection

echo "`n#### Section 4 - RAM Information #####" #Title for section
Get-CimInstance -ClassName win32_physicalmemory #retrieving physicalmemory collection

echo "`n#### Section 5 - Disk Information ####" #Title for section
$disks = get-wmiobject -class win32_logicaldisk | where-object FreeSpace -gt 0
#foreach object in collection of $disks
foreach ($disk in $disks) {
#Creating custom object of these properties from $disk
$diskReport = new-object psobject -Property @{
    Letter = $disk.DeviceID
    Size = [math]::Round($disk.Size / 1GB,2) #converting disk sizes to GB format, rounded to 2 places
    FreeSpace = [math]::Round($disk.FreeSpace / 1.GB,2) #converting disk space to GB format rounded, to 2 places
}
#displaying contents of the report in a table
$diskReport | Format-Table -Property Letter, Size
}

echo "#### - Section 6 Video Card Information ####" #Title for section
#retrieving videocontroller collection
Get-CimInstance -ClassName win32_videocontroller | Select Vendor,Description,CurrentHorizontalResolution,CurrentVerticalResolution
#Select used for Vendor, Description, Horizontal and vertical resolutions#retrieving computersystem collection