echo "Creating detailed system information report..."
echo "`n#### Section 1 - System Description #####"
Get-CimInstance -ClassName win32_computersystem
echo "`n#### Section 2 - Operating System #####"
Get-CimInstance -ClassName win32_operatingsystem | Select Name, Version
echo "`n#### Section 3 - Processor Information #####"
Get-CimInstance -ClassName win32_processor 
echo "`n#### Section 4 - RAM Information #####"
Get-CimInstance -ClassName win32_physicalmemory