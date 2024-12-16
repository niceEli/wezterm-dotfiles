local wezterm = require 'wezterm'
local launch_menu = {}

table.insert(launch_menu, {
  label = 'nushell',
  args = { 'nu' },
})
table.insert(launch_menu, {
  label = 'nushell (superuser)',
  args = { 'sudo', 'nu' },
})

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  table.insert(launch_menu, {
    label = 'PowerShell 7',
    args = { 'pwsh', '-NoLogo' },
  })
  table.insert(launch_menu, {
    label = 'PowerShell 7 (superuser)',
    args = { 'sudo', 'pwsh', '-NoLogo' },
  })
  table.insert(launch_menu, {
    label = 'PowerShell',
    args = { 'PowerShell', '-NoLogo' },
  })
  table.insert(launch_menu, {
    label = 'cmd',
    args = { 'cmd', '/k' },
  })

  -- top
  table.insert(launch_menu, {
    label = 'top',
    args = { 'ntop' }
  })
  table.insert(launch_menu, {
    label = 'btop',
    args = { 'btop' }
  })

  -- VS22
  table.insert(launch_menu, {
    label = 'Developer PowerShell for VS 2022',
    args = { 'pwsh', '-NoExit', '-Command', '&{Import-Module "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\Tools\\Microsoft.VisualStudio.DevShell.dll"; Enter-VsDevShell 87b72232 -SkipAutomaticLocation -DevCmdArguments "-arch=x64 -host_arch=x64"}' },
  })
  table.insert(launch_menu, {
    label = 'Developer Command Prompt for VS 2022',
    args = { 'cmd', '/k', 'C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\Tools\\VsDevCmd.bat', '-startdir=none', '-arch=x64', '-host_arch=x64' },
  })

  -- SSH (for PI)
  table.insert(launch_menu, {
    label = 'neTech Raspberry Pi',
    args = { 'ssh', 'niceeli@100.82.40.144' }
  })

  -- UNIX Dev Stuff
  table.insert(launch_menu, {
    label = 'Git Bash',
    args = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-i', '-l' },
  })
  table.insert(launch_menu, {
    label = 'WSL',
    args = { 'wsl' },
  })

  -- Python
  table.insert(launch_menu, {
    label = 'Anaconda PowerShell Prompt (24.9.2-0)',
    args = { 'powershell.exe', '-ExecutionPolicy', 'ByPass', '-NoExit', '-Command', "& 'C:\\Users\\niceEli\\scoop\\apps\\miniconda3\\24.9.2-0\\shell\\condabin\\conda-hook.ps1' ; conda activate 'C:\\Users\\niceEli\\scoop\\apps\\miniconda3\\24.9.2-0'" },
  })
  table.insert(launch_menu, {
    label = 'Anaconda Prompt (24.9.2-0)',
    args = { 'cmd.exe', '/K', 'C:\\Users\\niceEli\\scoop\\apps\\miniconda3\\24.9.2-0\\Scripts\\activate.bat', 'C:\\Users\\niceEli\\scoop\\apps\\miniconda3\\24.9.2-0' },
  })
end

if wezterm.target_triple ~= "x86_64-pc-windows-msvc" then
  table.insert(launch_menu, {
    label = 'zsh',
    args = { 'zsh' },
  })
  table.insert(launch_menu, {
    label = 'zsh (superuser)',
    args = { 'sudo', 'zsh' },
  })
  table.insert(launch_menu, {
    label = 'bash',
    args = { 'bash' },
  })

  -- top
  table.insert(launch_menu, {
    label = 'top',
    args = { 'htop' }
  })
  table.insert(launch_menu, {
    label = 'btop',
    args = { 'btop' }
  })
end

return launch_menu
