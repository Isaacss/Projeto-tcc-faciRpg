unit ChangePropertiesPluginU;










































begin
   HostApplication.MainForm.Caption := InputBox('Change Form Caption','New Caption:', HostApplication.MainForm.Caption);
end;

procedure TuilPlugin1.uilPlugin1Commands1Execute(Sender: TObject);
var
   Comp : TComponent;
begin
   Comp := HostApplication.MainForm.FindComponent('Button1');
   if assigned(Comp) then
      TButton(Comp).Enabled := not TButton(Comp).Enabled;
end;

procedure TuilPlugin1.uilPlugin1Commands2Execute(Sender: TObject);
var
   Comp : TComponent;
begin
   Comp := HostApplication.MainForm.FindComponent('Listbox1');
   if assigned(Comp) then
      TListBox(Comp).Items.Add(InputBox('Add to listbox','Item:','Enter item here'));
end;

end.