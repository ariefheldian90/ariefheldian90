$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'winamp583660'
$packageName = 'winamp583660'
#$url64      = '' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $packageName
  #unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  #url           = $url
  #url64bit      = $url64
  file         = $fileLocation

  softwareName  = 'winamp583660*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
 
  validExitCodes= @(0) #please insert other valid exit codes here
}

Install-ChocolateyinstallPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage
