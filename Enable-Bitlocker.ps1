
$BitlockerStatus = Get-BitLockerVolume $env:SystemDrive
if ($BitlockerStatus.KeyProtector.Count -eq 0)
{  
     Add-BitLockerKeyProtector -MountPoint $env:SystemDrive -RecoveryPasswordProtector  
     Enable-Bitlocker -MountPoint $env:SystemDrive -EncryptionMethod XtsAes128 -TpmProtector
}