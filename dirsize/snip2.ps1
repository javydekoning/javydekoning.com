Measure-Command {
    (1..10).foreach{(gci $home -Recurse -force -ea 0 | Measure-Object length -Sum).sum /1MB -as [int]}
} | Select TotalMilliseconds 

Measure-Command {
    (1..10).foreach{((cmd /c dir $home /-C /S /A:-D-L)[-2] -split '\s+')[3] /1MB -as [int]}
} | Select TotalMilliseconds 

Measure-Command {
    (1..10).foreach{((robocopy.exe $home c:\fakepathduh /L /XJ /R:0 /W:1 /NP /E /BYTES /nfl /ndl /njh /MT:64)[-4] -replace '\D+(\d+).*','$1') /1MB -as [int]}
} | Select TotalMilliseconds

TotalMilliseconds
-----------------
       55468.3775
       14617.8298
        2941.6903