Program PUZIRKI;
var
  a:array[1..100] of integer;
  i,j,k,p,n,left,right,center:integer;
begin
  Randomize;
  for i:=1 to 100 do a[i]:=Random(100);
  //схйэтюмрдэложфрё
  for i := 1 to 100-1 do
    for j := 1 to 100-i do
      if a[j] > a[j+1] then
      begin k := a[j]; a[j] := a[j+1]; a[j+1] := k end;
  //фэубщпэлсркум
  k:=0;
  for j:=1 to 1000 do
  begin
    p:=Random(101);
    //ёдркщпэлсркум
    left:=1; right:=n;
    while left<right do
    begin
      Inc(k);
      if (a[left]=p) or (a[right]=p) then left:=right
      else begin
        center:=(left+right) div 2;
        if a[center]=p then left:=right
        else
          if a[center]<p then left:=center+1
          else right:=center
      end
    end
  end;
  Writeln('Среднее число шагов: ',k/1000:4:2)
end.