set windows-shell := ["pwsh", "-NoProfile", "-Command"]
run:
  bun run build
  Remove-Item -Recurse -Force $Env:UserProfile\.glzr\zebar\neobrutal
  Copy-Item build $Env:UserProfile\.glzr\zebar\neobrutal -Recurse
init:
  bun install
