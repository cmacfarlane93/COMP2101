#Script for creating a report of non-microsoft software on the machine.
echo "Preparing Report for non-Microsoft software installed this system..."

gwmi -class win32_product -filter "vendor!='Microsoft Corporation'" | #piping results of non-microsoft software
    Sort InstallDate | #sorting results by InstallDate
    Select Name, Vendor, Version, InstallDate | #filtering results to only be of Name, Vendor, Version, and InstallDate
    Format-Table -AutoSize #formating output to be in a table