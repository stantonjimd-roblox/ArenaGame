# CreateStructure.ps1
# Creates all folders and placeholder files for the Arena game

$base = "src"

# Create Ability and Augment folders
$folders = @(
    "$base\shared\Abilities",
    "$base\shared\Augments",
    "$base\shared\Augments\Melee",
    "$base\shared\Augments\Ranged",
    "$base\shared\Augments\Mage",
    "$base\shared\Augments\Universal"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
    Write-Host "Created folder: $folder"
}

# Create Ability files for each class
$classes = @(
    "Warrior",
    "Berserker",
    "Ranger",
    "Paladin",
    "Mage",
    "Shadow",
    "Pyromancer",
    "FrostLich",
    "ThunderGod",
    "VoidWalker",
    "DragonKnight",
    "DeathBringer"
)

foreach ($class in $classes) {
    $path = "$base\shared\Abilities\$class`Abilities.luau"
    New-Item -ItemType File -Path $path -Force | Out-Null
    Write-Host "Created ability file: $path"
}

# Create Augment pool files
$augmentFiles = @(
    "$base\shared\Augments\Universal\UniversalAugments.luau",
    "$base\shared\Augments\Melee\MeleeAugments.luau",
    "$base\shared\Augments\Ranged\RangedAugments.luau",
    "$base\shared\Augments\Mage\MageAugments.luau"
)

foreach ($file in $augmentFiles) {
    New-Item -ItemType File -Path $file -Force | Out-Null
    Write-Host "Created augment file: $file"
}

Write-Host ""
Write-Host "All folders and files created successfully!"