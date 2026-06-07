# auto-sync.ps1
# Watches this repo for changes and automatically commits + pushes them to
# the shared branch, so the host can pull/merge them into their project
# (Rojo then syncs the result into Studio on their end).
#
# Run with:  powershell -ExecutionPolicy Bypass -File auto-sync.ps1
# Stop with: Ctrl+C

$branch = "ranger-class-wip"
$pollSeconds = 15

Write-Host "Watching for changes every $pollSeconds seconds. Pushing to '$branch'. Press Ctrl+C to stop."

while ($true) {
    $status = git status --porcelain

    if ($status) {
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

        git add -A
        git commit -m "Auto-sync: $timestamp" | Out-Null
        try { git push origin "HEAD:refs/heads/$branch" -q 2>$null } catch {}

        Write-Host "[$timestamp] Pushed changes to $branch"
    }

    Start-Sleep -Seconds $pollSeconds
}
