#Use erroraction silentlycontinue to ignore access denied errors 
(Get-ChildItem $home -Recurse -force -erroraction SilentlyContinue | Measure-Object length -Sum).sum 

#Good old Dir, recursively
((cmd /c dir $home /-C /S /A:-D-L)[-2] -split '\s+')[3]

#RoboCopy in list only mode: 
(robocopy.exe $home c:\fakepathduh /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1'

17996994274
17996994274
17995815085