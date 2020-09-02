<#
.Synopsis
   Calculate basic math problems based off user input
.DESCRIPTION
   Iron Scripter August "Back to school challenge" https://ironscripter.us/powershell-back-to-school-scripting-challenge/

The Challenges
You need to create simple PowerShell functions to meet the following goals. Each task should result in a separate function.

Given 2 lengths of a triangle, calculate the missing length. You will need to let the user specify which sides (traditionally A,B and C) of the triangle they are specifying.
Calculate the area of a circle with a given diameter.
Calculate the volume of a sphere with a given diameter.
Calculate the volume of a cylinder from a given diameter and height.
Calculate the factorial of an integer.

.EXAMPLE
   Calculate-Triangle -length1 10 -length2 15
.AURTHOR
   Dean Wood
#>

function Calculate-Triangle ([int]$Length1, [int]$Length2){
    
    if ($Length1 -lt 1){ $Length1 = 1 } 
    if ($Length2 -lt 1){ $Length2 = 1 }
    
    $length3 = ([math]::Sqrt(([math]::Pow($Length1,2)) + (([math]::Pow($Length2,2)))))
    write-host "The missing length of the triangle, based off the two known lengths $length1 and $length2 is $length3" -ForegroundColor Green
}

function Calculate-CircleDiameter ([int]$Diameter){

   if ($Diameter -lt 1){ $Diameter = 1 } 
   
   $CircleArea = (([math]::PI*([math]::Pow($Diameter,2)))/4)
   Write-Host "The area of the circle, based off the diameter $diameter is $circleArea" -ForegroundColor Green
}

function Calculate-VolumnOfSphere ([int]$Diameter){

    if ($Diameter -lt 1){ $Diameter = 1 } 

    $Volume = (([math]::Pow(5,3)) * ([math]::PI*1.1))
    Write-host "The volumne of the spare based off the diameter of $diameter is $Volume" -ForegroundColor Green
}

function Calculate-VolumnOfCylinder ([int]$Diameter, [int]$Height){

    if ($Diameter -lt 1){ $Diameter = 1 } 
    if ($Height -lt 1){ $Height = 1 } 

    $volumne = (([math]::PI*([math]::Pow($Diameter,2))) * $Height)
    Write-host "The volumne of the cylinder based off the diameter of $diameter and height of $Height is $Volume" -ForegroundColor Green
}

function Calculate-Factorial([int]$Integer)
{
    if($Integer -lt 0){$result = 0}

    elseif($Integer -le 1){$result = 1}

    else{
        $result = $Integer * (Calculate-Factorial($Integer - 1))
    }

    return $result
}

Calculate-Triangle -Length1 12 -Length2 15
Calculate-CircleDiameter -Diameter 15
Calculate-VolumnOfSphere -Diameter 25
Calculate-VolumnOfCylinder -Diameter 5 -Height 10
Calculate-Factorial -Integer 10