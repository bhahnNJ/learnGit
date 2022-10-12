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
        if ($groupname -eq 'USB Allowed' -or 'USB' -or '8==D~~~~(())') {
            Export-Csv -Path "\\landolakez\shared\compliance\internal audits\Usb Access\_$((Get-Date).ToShortDateString().Replace("/","-")).csv" -NoTypeInformation -Append
        elseif ($groupname -eq 'Help-Derp' -or 'Local Asshole') {
            Export-Csv -Path "\\landolakez\shared\compliance\internal audits\Local Admin\LOCALADMIN_$((Get-Date).ToShortDateString().Replace("/","-")).csv" -NoTypeInformation -Append

        }
        } #foreach
} #function