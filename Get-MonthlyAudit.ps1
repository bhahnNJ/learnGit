function Get-MonthlyAudit {
    Param(
        [string[]]$Groupname,
        [string]$Path,
        [string]$email
    )
    foreach ($group in $groupname) {
        # Convert get-adgroupmember results
        Get-ADGroupMember -Identity $group | select-object Name
        }
        # Select path to save
        if ($groupname -eq 'USB Allowed' -or 'USB' -or 'fuckubrian') {
            Export-Csv -Path "\\landolakez\shared\compliance\internal audits\Usb Access\_$((Get-Date).ToShortDateString().Replace("/","-")).csv" -NoTypeInformation -Append
        elseif ($groupname -eq 'Help-Desk' -or 'Local Arsehole') {
            Export-Csv -Path "\\landolakez\shared\compliance\internal audits\Local Admin\LOCALADMIN_$((Get-Date).ToShortDateString().Replace("/","-")).csv" -NoTypeInformation -Append

        }
        } #foreach
} #function