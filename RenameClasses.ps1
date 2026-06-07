# RenameClasses.ps1
# Renames all old class files to Data format

$classesPath = "src\shared\Classes"

$renames = @{
    "Warrior.luau"     = "WarriorData.luau"
    "Berserker.luau"   = "BerserkerData.luau"
    "Ranger.luau"      = "RangerData.luau"
    "Paladin.luau"     = "PaladinData.luau"
    "Mage.luau"        = "MageData.luau"
    "Shadow.luau"      = "ShadowData.luau"
    "Pyromancer.luau"  = "PyromancerData.luau"
    "FrostLich.luau"   = "FrostLichData.luau"
    "ThunderGod.luau"  = "ThunderGodData.luau"
    "VoidWalker.luau"  = "VoidWalkerData.luau"
    "DragonKnight.luau" = "DragonKnightData.luau"
    "DeathBringer.luau" = "DeathBringerData.luau"
}

foreach ($old in $renames.Keys) {
    $oldPath = "$classesPath\$old"
    $newPath = "$classesPath\$($renames[$old])"
    
    if (Test-Path $oldPath) {
        Rename-Item -Path $oldPath -NewName $renames[$old]
        Write-Host "Renamed: $old -> $($renames[$old])"
    } else {
        Write-Host "Not found, skipping: $old"
    }
}

Write-Host ""
Write-Host "All class files renamed successfully!"