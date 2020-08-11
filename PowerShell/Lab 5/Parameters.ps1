#Function for checking and displaying object Name and FullName
function Type-Check([PSObject]$objectToCheck) { #function accepts object as input
    echo $objectToCheck.Name #displaying Name of object
    echo $objectToCheck.FullName #displaying FullName of object
}

#Creating a custom object for demonstration purposes
$demoObject = new-object psobject -Property @{
    Name = "Craig" #assigning Name
    FullName = "Craig MacFarlane" #assigning FullName
}

$demoObject | Type-Check($demoObject) #passing $demoObject into function Type-Check through pipe
