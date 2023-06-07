$mydir = ''
[int]$idx = 1
get-childitem $mydir|sort-object {$_.Name} |foreach-object{
    if ($idx % 3 -ne 1){ #get the modulus
        $_ |remove-item
    }
    $idx++
}