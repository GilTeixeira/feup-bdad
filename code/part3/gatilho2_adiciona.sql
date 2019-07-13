Create Trigger SetHangarToNull
After Delete On Hangar
For Each Row
Begin
Update Aviao
Set HangarID = NULL
Where HangarID = Old.HID;
End; 
