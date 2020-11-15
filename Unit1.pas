unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.ComCtrls, Math;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    GroupBox2: TGroupBox;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    StaticText6: TStaticText;
    ListBox7: TListBox;
    StaticText7: TStaticText;
    Button2: TButton;
    ListBox8: TListBox;
    GroupBox3: TGroupBox;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    Button3: TButton;
    GroupBox4: TGroupBox;
    Edit19: TEdit;
    Edit20: TEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    Chart2: TChart;
    Series31: TLineSeries;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    Button8: TButton;
    SaveDialog2: TSaveDialog;
    OpenDialog2: TOpenDialog;
    GroupBox5: TGroupBox;
    Chart1: TChart;
    Series1: TPointSeries;
    Series2: TPointSeries;
    Series3: TPointSeries;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series6: TPointSeries;
    Series7: TPointSeries;
    Series8: TPointSeries;
    Series9: TPointSeries;
    Series10: TPointSeries;
    Series11: TPointSeries;
    Series12: TPointSeries;
    Series13: TPointSeries;
    Series14: TPointSeries;
    Series15: TPointSeries;
    Series16: TPointSeries;
    Series17: TPointSeries;
    Series18: TPointSeries;
    Series19: TPointSeries;
    Series20: TPointSeries;
    Series21: TPointSeries;
    Series22: TPointSeries;
    Series23: TPointSeries;
    Series24: TPointSeries;
    Series25: TPointSeries;
    Series26: TPointSeries;
    Series27: TPointSeries;
    Series28: TPointSeries;
    Series29: TPointSeries;
    Series30: TPointSeries;
    ListBox9: TListBox;
    ListBox10: TListBox;
    StaticText16: TStaticText;
    Button9: TButton;
    Button5: TButton;
    TabSheet3: TTabSheet;
    ListBox12: TListBox;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    ListBox16: TListBox;
    ListBox17: TListBox;
    ListBox18: TListBox;
    ListBox19: TListBox;
    Button6: TButton;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    ListBox20: TListBox;
    Button7: TButton;
    Button10: TButton;
    StaticText17: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    Edit21: TEdit;
    Edit22: TEdit;
    StaticText15: TStaticText;
    StaticText18: TStaticText;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    StaticText19: TStaticText;
    procedure Input;
    procedure SaveInput;
    procedure OpenInput;
    procedure inputygdisimpan;
    procedure LayerWeightThreshold;
    procedure Learning;
    procedure SaveResult;
    procedure OpenResult;
    procedure LearnOptimum;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    //procedure AbsoluteError;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //Button1 //InputDanPlot
  x,y: array [1..30] of extended;
  mx1,sdx1,my1,sdy1,mx2,sdx2,my2,sdy2,mx3,sdx3,my3,sdy3: extended;
  //Button2 //LayerWeightThreshold
  layer1,layer2,layer3: integer;
  wi1,w12,w23,w3o: array [1..30,1..30] of extended;
  t1,t2,t3,t4: array [1..30] of extended;
  //Button3 //Learning
  xx,yy: array [1..30] of extended;
  Miu,Alpha,Epsilon,hasil,e2,mse: Extended;
  l1,l2,l3,lo: array [1..30] of extended;
  v1,yo1,g1,v2,yo2,g2,v3,yo3,g3,v4,yo4,g4: array [1..30] of extended;
  et: array [1..30] of extended;
  error: array [1..3] of extended;
  deltao,delta3,delta2,delta1: array [1..10] of extended;
  deltax,deltay: array [1..30] of extended;
  d: array [1..3,1..3] of extended;
  iterasi,ii: integer;
  //Button5 //SaveNilaiOptimum
  filewth,openwth: textfile;
  sw3o,sw23,sw12,swi1,st4,st3,st2,st1: string;
  //Button7 //Learning Kembali
  owi1,ow12,ow23,ow3o: array [1..30,1..30] of extended;
  ot1,ot2,ot3,ot4: array [1..30] of extended;
  //Button8 //SaveInput
  fileinput: textfile;
  //Button9 //OpenInput
  openin: textfile;
  xa,xb,xc,ya,yb,yc: string;
  ox,oy: array [1..30] of extended;
  //Abs error
  inputx1,inputx2: extended;
  o11,o12,o13,o21,o22,o23,o31,o32,o33,e11,e12,e13,e21,e22,e23,e31,e32,e33: extended;
  abse1,abse2,abse3,absnya: extended;
  //simpan
  simpan: array [0..1000000] of extended;

implementation

{$R *.dfm}

//entry input
procedure TForm1.Input;
var i: integer;
begin

  mx1:= strtofloat(edit1.Text); sdx1:= strtofloat(edit2.Text);
  my1:= strtofloat(edit3.Text); sdy1:= strtofloat(edit4.Text);
  mx2:= strtofloat(edit5.Text); sdx2:= strtofloat(edit6.Text);
  my2:= strtofloat(edit7.Text); sdy2:= strtofloat(edit8.Text);
  mx3:= strtofloat(edit9.Text); sdx3:= strtofloat(edit10.Text);
  my3:= strtofloat(edit11.Text); sdy3:= strtofloat(edit12.Text);

  for i := 1 to 10 do
  begin
    x[i]:=randg(mx1,sdx1); y[i]:=randg(my1,sdy1);
  end;

  for i := 11 to 20 do
  begin
    x[i]:=randg(mx2,sdx2); y[i]:=randg(my2,sdy2);
  end;

  for i := 21 to 30 do
  begin
    x[i]:=randg(mx3,sdx3); y[i]:=randg(my3,sdy3);
  end;

end;

//save input
procedure TForm1.Button8Click(Sender: TObject);
begin
 SaveInput;
end;

procedure TForm1.SaveInput;
var i: integer;
begin
  mx1:= strtofloat(edit1.Text); sdx1:= strtofloat(edit2.Text);
  my1:= strtofloat(edit3.Text); sdy1:= strtofloat(edit4.Text);
  mx2:= strtofloat(edit5.Text); sdx2:= strtofloat(edit6.Text);
  my2:= strtofloat(edit7.Text); sdy2:= strtofloat(edit8.Text);
  mx3:= strtofloat(edit9.Text); sdx3:= strtofloat(edit10.Text);
  my3:= strtofloat(edit11.Text); sdy3:= strtofloat(edit12.Text);

  if savedialog2.Execute then
  begin
    assignfile(fileinput,savedialog2.filename);
    rewrite(fileinput);

    for i := 1 to 10 do
      begin
        x[i]:=randg(mx1,sdx1); y[i]:=randg(my1,sdy1);
        writeln(fileinput,floattostr(x[i]));
        writeln(fileinput,floattostr(y[i]));
      end;

    for i := 11 to 20 do
      begin
        x[i]:=randg(mx2,sdx2); y[i]:=randg(my2,sdy2);
        writeln(fileinput,floattostr(x[i]));
        writeln(fileinput,floattostr(y[i]));
      end;

    for i := 21 to 30 do
      begin
        x[i]:=randg(mx3,sdx3); y[i]:=randg(my3,sdy3);
        writeln(fileinput,floattostr(x[i]));
        writeln(fileinput,floattostr(y[i]));
      end;

    closefile(fileinput);
  end;
end;

//openinput
procedure TForm1.Button9Click(Sender: TObject);
begin
 OpenInput;
end;

procedure TForm1.OpenInput;
var i: integer;
begin
  series1.Clear; series2.Clear; series3.Clear; series4.Clear; series5.Clear;
  series6.Clear; series7.Clear; series8.Clear; series9.Clear; series10.Clear;
  series11.Clear; series12.Clear; series13.Clear; series14.Clear; series15.Clear;
  series16.Clear; series17.Clear; series18.Clear; series19.Clear; series20.Clear;
  series21.Clear; series22.Clear; series23.Clear; series24.Clear; series25.Clear;
  series26.Clear; series27.Clear; series28.Clear; series29.Clear; series30.Clear;

  if opendialog2.Execute then
  begin
    assignfile(openin,opendialog2.filename);
    reset(openin);

    for i := 1 to 10 do
    begin
      readln(openin,xa);
      ox[i]:=strtofloat(xa);
      listbox9.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      //listbox11.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      readln(openin,ya);
      oy[i]:=strtofloat(ya);
      listbox10.Items.Add('x2['+inttostr(i)+']='+floattostr(oy[i]));
      //listbox23.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      series1.AddXY(ox[1],oy[1]); series2.AddXY(ox[2],oy[2]);
      series3.AddXY(ox[3],oy[3]); series4.AddXY(ox[4],oy[4]);
      series5.AddXY(ox[5],oy[5]); series6.AddXY(ox[6],oy[6]);
      series7.AddXY(ox[7],oy[7]); series8.AddXY(ox[8],oy[8]);
      series9.AddXY(ox[9],oy[9]); series10.AddXY(ox[10],oy[10]);
    end;

    for i := 11 to 20 do
    begin
      readln(openin,xb);
      ox[i]:=strtofloat(xb);
      listbox9.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      //listbox11.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      readln(openin,yb);
      oy[i]:=strtofloat(yb);
      listbox10.Items.Add('x2['+inttostr(i)+']='+floattostr(oy[i]));
      //listbox23.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));

      series11.AddXY(ox[11],oy[11]); series12.AddXY(ox[12],oy[12]);
      series13.AddXY(ox[13],oy[13]); series14.AddXY(ox[14],oy[14]);
      series15.AddXY(ox[15],oy[15]); series16.AddXY(ox[16],oy[16]);
      series17.AddXY(ox[17],oy[17]); series18.AddXY(ox[18],oy[18]);
      series19.AddXY(ox[19],oy[19]); series20.AddXY(ox[20],oy[20]);
    end;

    for i := 21 to 30 do
    begin
      readln(openin,xc);
      ox[i]:=strtofloat(xc);
      listbox9.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      //listbox11.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      readln(openin,yc);
      oy[i]:=strtofloat(yc);
      listbox10.Items.Add('x2['+inttostr(i)+']='+floattostr(oy[i]));
      //listbox23.Items.Add('x1['+inttostr(i)+']='+floattostr(ox[i]));
      series21.AddXY(ox[21],oy[21]); series22.AddXY(ox[22],oy[22]);
      series23.AddXY(ox[23],oy[23]); series24.AddXY(ox[24],oy[24]);
      series25.AddXY(ox[25],oy[25]); series26.AddXY(ox[26],oy[26]);
      series27.AddXY(ox[27],oy[27]); series28.AddXY(ox[28],oy[28]);
      series29.AddXY(ox[29],oy[29]); series30.AddXY(ox[30],oy[30]);
    end;
    closefile(openin);
  end;

  inputygdisimpan;
end;

procedure Tform1.inputygdisimpan;
var
  i: Integer;
begin
  for i := 1 to 30 do
    begin
      xx[i]:=ox[i];
      yy[i]:=oy[i];
    end;
end;

//Input Weight dan thrshold
procedure TForm1.Button2Click(Sender: TObject);     //weight dan threshold
begin
  Listbox1.Clear; Listbox2.Clear; Listbox3.Clear; Listbox4.Clear;
  Listbox5.Clear; Listbox6.Clear; Listbox7.Clear; Listbox8.Clear;
  LayerWeightThreshold;
end;

procedure TForm1.LayerWeightThreshold;
var i,j: integer;
begin
  layer1:= strtoint(edit13.Text);
  layer2:= strtoint(edit14.Text);
  layer3:= strtoint(edit15.Text);

  //weight
  for i := 1 to 2 do
  begin
    for j := 1 to layer1 do
      begin
        wi1[i,j]:=randg(0,0.5);
        listbox1.Items.Add('[' + inttostr(i) + ',' + inttostr(j) + '] = ' + floattostr(wi1[i,j]));
      end;
  end;

  for i := 1 to layer1 do
  begin
    for j := 1 to layer2 do
      begin
        w12[i,j]:=randg(0,0.5);
        listbox2.Items.Add('[' + inttostr(i) + ',' + inttostr(j) + '] = ' + floattostr(w12[i,j]));
      end;
      t1[i]:=randg(0,0.5);
      listbox5.Items.Add('[' + inttostr(i) + '] = ' + floattostr(t1[i]));
  end;

  for i := 1 to layer2 do
  begin
    for j := 1 to layer3 do
      begin
        w23[i,j]:=randg(0,0.5);
        listbox3.Items.Add('[' + inttostr(i) + ',' + inttostr(j) + '] = ' + floattostr(w23[i,j]));
      end;
      t2[i]:=randg(0,0.5);
      listbox6.Items.Add('[' + inttostr(i) + '] = ' + floattostr(t2[i]) + '=');
  end;

  for i := 1 to layer3 do
  begin
    for j := 1 to 3 do
      begin
        w3o[i,j]:=randg(0,0.5);
        listbox4.Items.Add('[' + inttostr(i) + ',' + inttostr(j) + '] = ' + floattostr(w3o[i,j]));
      end;
      t3[i]:=randg(0,0.5);
      listbox7.Items.Add('[' + inttostr(i) + '] = ' + floattostr(t3[i]) + '=');
  end;

  for i := 1 to 3 do
    begin
      t4[i]:=randg(0,0.5);
      listbox8.Items.Add('[' + inttostr(i) + '] = ' + floattostr(t4[i]) + '=');
    end;

end;

//desired output
procedure TForm1.FormCreate(Sender: TObject);
begin
 d[1,1]:=1;  d[2,1]:=0;  d[3,1]:=0;
 d[1,2]:=0;  d[2,2]:=1;  d[3,2]:=0;
 d[1,3]:=0;  d[2,3]:=0;  d[3,3]:=1;
end;

//Learning
procedure TForm1.Button3Click(Sender: TObject);   //learning
begin
  series31.Clear;
  inputygdisimpan;
  LayerWeightThreshold;

  Miu:=strtofloat(edit16.Text);
  Alpha:=strtofloat(edit17.Text);
  Epsilon:=strtofloat(edit18.Text);

  timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  iterasi:=iterasi+1;
  edit19.Text:=inttostr(iterasi);
    Learning;
  //Series31.AddXY(ii,et[jd]);
end;

procedure TForm1.Learning;
var jd,i,j,iterasi: Integer;
begin
  ii:=strtoint(edit19.text);
  for jd := 1 to 30 do
  begin
    //feedforward
    //input ke layer 1
    for i := 1 to layer1 do
      begin
        hasil:=(xx[jd]*wi1[1,i])+(yy[jd]*wi1[2,i]);
        v1[i]:=hasil+t1[i];
        yo1[i]:= 1/(1+exp(-alpha*v1[i]));
		    g1[i]:= alpha*yo1[i]*(1-yo1[i]);
      end;

    //layer 1 ke layer 2
    for i := 1 to layer2 do
      begin
      hasil:=0;
        for j := 1 to layer1 do
          begin
            hasil:=hasil+(yo1[j]*w12[j,i]);
          end;
        v2[i]:=hasil+t2[i];
        yo2[i]:= 1/(1+exp(-alpha*v2[i]));
		    g2[i]:= alpha*yo2[i]*(1-yo2[i])
      end;

    //layer 2 ke layer 3
    for i := 1 to layer3 do
      begin
      hasil:=0;
        for j := 1 to layer2 do
          begin
            hasil:=hasil+(yo2[j]*w23[j,i]);
          end;
        v3[i]:=hasil+t3[i];
        yo3[i]:= 1/(1+exp(-alpha*v3[i]));
		    g3[i]:= alpha*yo3[i]*(1-yo3[i])
      end;

    //layer 3 ke output
    for i := 1 to 3 do
      begin
      hasil:=0;
        for j := 1 to layer3 do
          begin
            hasil:=hasil+(yo3[j]*w3o[j,i]);
          end;
        v4[i]:=hasil+t4[i];
        yo4[i]:= 1/(1+exp(-alpha*v4[i]));
		    g4[i]:= alpha*yo4[i]*(1-yo4[i])
      end;

    //error
    e2:=0;
    for i := 1 to 3 do
      begin
        if (0<=jd) and (jd<=10) then
          begin
            error[i]:=d[1,i]-yo4[i];
            e2:=e2+sqr(error[i]);
          end;
        if (11<=jd) and (jd<=20) then
          begin
            error[i]:=d[2,i]-yo4[i];
            e2:=e2+sqr(error[i]);
          end;
        if (21<=jd) and (jd<=30) then
          begin
            error[i]:=d[3,i]-yo4[i];
            e2:=e2+sqr(error[i]);
          end;
      end;
    et[jd]:=0.5*e2;

    //simpanplot;
    Series31.AddXY(ii,et[jd]);

    //Backward Delta Error

    //layer output tok
    for i:=1 to 3 do
    begin
      if (0<=jd) and (jd<=10) then
          begin
            deltao[i]:= (d[1,i]-yo4[i])*g4[i];
          end;
      if (11<=jd) and (jd<=20) then
          begin
            deltao[i]:= (d[2,i]-yo4[i])*g4[i];
          end;
      if (21<=jd) and (jd<=30) then
          begin
            deltao[i]:= (d[3,i]-yo4[i])*g4[i];
          end;
    end;

    //layer 3
    for i:=1 to 3 do
    begin
      hasil:=0;
      for j:=1 to layer3 do
      begin
        hasil:=hasil+(deltao[i]*w3o[j,i]);
      end;
      delta3[i]:= hasil*g3[i];
    end;

    //layer 2
    for i:=1 to layer3 do
    begin
      hasil:=0;
      for j:=1 to layer2 do
      begin
        hasil:=hasil+(delta3[i]*w23[j,i]);
      end;
      delta2[i]:= hasil*g2[i];
    end;

    //layer 1
    for i:=1 to layer2 do
    begin
      hasil:=0;
      for j:=1 to layer1 do
      begin
        hasil:=hasil+(delta2[i]*w12[j,i]);
      end;
      delta1[i]:= hasil*g1[i];
    end;

    //Update W dan T

    //layer output ke layer 3
    for i := 1 to 3 do
    begin
      t4[i]:=t4[i]+(miu*deltao[i]);
    end;

    for i := 1 to layer3 do
    begin
      for j := 1 to 3 do
        begin
          w3o[i,j]:=w3o[i,j]+(miu*deltao[j]*yo3[i]);
        end;
        t3[i]:=t3[i]+(miu*delta3[i]);
    end;

    //layer 3 ke layer 2
    for i := 1 to layer2 do
    begin
      for j := 1 to layer3 do
        begin
          w23[i,j]:=w23[i,j]+(miu*delta3[j]*yo2[i]);
        end;
        t2[i]:=t2[i]+(miu*delta2[i]);
    end;

    //layer 2 ke layer 1
    for i := 1 to layer1 do
    begin
      for j := 1 to layer2 do
        begin
          w12[i,j]:=w12[i,j]+(miu*delta2[j]*yo1[i]);
        end;
        t1[i]:=t1[i]+(miu*delta1[i]);
    end;

    //layer 1 ke layer input
    for i := 1 to 2 do
    begin
      for j := 1 to layer1 do
        begin
          wi1[1,j]:=wi1[1,j]+(miu*delta1[j]*x[jd]);
          wi1[2,j]:=wi1[2,j]+(miu*delta1[j]*y[jd]);
        end;
    end;
  end;

  //MSE dan KONVERGENSI
  mse:=0;
  for jd:=1 to 30 do
  begin
    mse:=mse+et[jd];
  end;
  //series32.AddXY(ii,mse);
  edit20.Text:=floattostr(mse);

  if mse<=epsilon then
  begin
    timer1.Enabled:=false;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var ii,jd: integer;
begin
  ii:=strtoint(edit19.Text);
  for ii := 0 to ii do
    begin
      for jd := 1 to 30 do
        begin
          series31.AddXY(ii,et[jd]);
        end;
    end;
end;

//Clear untuk Ganti Parameter Miu, alpha, epsilon
procedure TForm1.Button4Click(Sender: TObject);
var
  i,j: Integer;
begin
  timer1.Enabled:=False;
  series31.Clear; edit19.Clear; edit20.Clear;
  iterasi:=0;

  e2:=0;
  hasil:=0;
  mse:=0;
  for i := 1 to 10 do
    begin
      t1[i]:=0; t2[i]:=0; t3[i]:=0; t4[i]:=0;
      v1[i]:=0; v2[i]:=0; v3[i]:=0; v4[i]:=0;
      g1[i]:=0; g2[i]:=0; g3[i]:=0; g4[i]:=0;
      yo1[i]:=0; yo2[i]:=0; yo3[i]:=0; yo4[i]:=0;
      error[i]:=0; et[i]:=0;
      delta1[i]:=0; delta2[i]:=0; delta3[i]:=0;
    end;

    //layer output ke layer 3
    for i := 1 to 3 do
    begin
      t4[i]:=0;
    end;

    for i := 1 to layer3 do
    begin
      for j := 1 to 3 do
        begin
          w3o[i,j]:=0;
        end;
        t3[i]:=0;
    end;

    //layer 3 ke layer 2
    for i := 1 to layer2 do
    begin
      for j := 1 to layer3 do
        begin
          w23[i,j]:=0;
        end;
        t2[i]:=0;
    end;

    //layer 2 ke layer 1
    for i := 1 to layer1 do
    begin
      for j := 1 to layer2 do
        begin
          w12[i,j]:=0;
        end;
        t1[i]:=0;
    end;

    //layer 1 ke layer input
    for i := 1 to 2 do
    begin
      for j := 1 to layer1 do
        begin
          wi1[1,j]:=0;
          wi1[2,j]:=0;
        end;
    end;
end;

//Save Nilai Optimum
procedure TForm1.Button5Click(Sender: TObject);
begin
  SaveResult;
end;

procedure TForm1.SaveResult;
var i,j: integer;
begin
  if savedialog1.Execute then
  begin
    assignfile(filewth,savedialog1.filename);
    rewrite(filewth);

    //wth 4
    for i := 1 to 3 do
    begin
      writeln(filewth,floattostr(t4[i]));
    end;

    for i := 1 to layer3 do
    begin
      for j := 1 to 3 do
        begin
          writeln(filewth,floattostr(w3o[i,j]));
        end;
        writeln(filewth,floattostr(t3[i]));
    end;

    //wth3
    for i := 1 to layer2 do
    begin
      for j := 1 to layer3 do
        begin
          writeln(filewth,floattostr(w23[i,j]));
        end;
        writeln(filewth,floattostr(t2[i]));
    end;

    //wth2
    for i := 1 to layer1 do
    begin
      for j := 1 to layer2 do
        begin
          writeln(filewth,floattostr(w12[i,j]));
        end;
        writeln(filewth,floattostr(t1[i]));
    end;

    //wth1
    for i := 1 to 2 do
    begin
      for j := 1 to layer1 do
        begin
          writeln(filewth,floattostr(wi1[i,j]));
        end;
    end;
    closefile(filewth);
  end;
end;

//Open Nilai Optimum
procedure TForm1.Button6Click(Sender: TObject);
begin
  OpenResult;
end;

procedure TForm1.OpenResult;
var i,j: integer;
begin
  layer1:= strtoint(edit13.Text);
  layer2:= strtoint(edit14.Text);
  layer3:= strtoint(edit15.Text);
if opendialog1.Execute then
  begin
    assignfile(openwth,opendialog1.filename);
    reset(openwth);

    //wth 4
    for i := 1 to 3 do
    begin
      readln(openwth,st4);
      ot4[i]:=strtofloat(st4);
      listbox19.Items.Add('t['+inttostr(i)+']='+floattostr(ot4[i]));
    end;

    for i := 1 to layer3 do
    begin
      for j := 1 to 3 do
        begin
          readln(openwth,sw3o);
          ow3o[i,j]:= strtofloat(sw3o);
          listbox15.Items.Add('w['+inttostr(i)+','+inttostr(j)+']='+floattostr(ow3o[i,j]));
        end;
        readln(openwth,st3);
        ot3[i]:=strtofloat(st3);
        listbox18.Items.Add('t['+inttostr(i)+']='+floattostr(ot3[i]));
    end;

    //wth3
    for i := 1 to layer2 do
    begin
      for j := 1 to layer3 do
        begin
          readln(openwth,sw23);
          ow23[i,j]:= strtofloat(sw23);
          listbox14.Items.Add('w['+inttostr(i)+','+inttostr(j)+']='+floattostr(ow23[i,j]));
        end;
        readln(openwth,st2);
        ot2[i]:=strtofloat(st2);
        listbox17.Items.Add('t['+inttostr(i)+']='+floattostr(ot2[i]));
    end;

    //wth2
    for i := 1 to layer1 do
    begin
      for j := 1 to layer2 do
        begin
          readln(openwth,sw12);
          ow12[i,j]:= strtofloat(sw12);
          listbox13.Items.Add('w['+inttostr(i)+','+inttostr(j)+']='+floattostr(ow12[i,j]));
        end;
        readln(openwth,st1);
        ot1[i]:=strtofloat(st1);
        listbox16.Items.Add('t['+inttostr(i)+']='+floattostr(ot1[i]));
    end;

    //wth1
    for i := 1 to 2 do
    begin
      for j := 1 to layer1 do
        begin
          readln(openwth,swi1);
          owi1[i,j]:= strtofloat(swi1);
          listbox12.Items.Add('w['+inttostr(i)+','+inttostr(j)+']='+floattostr(owi1[i,j]));
        end;
    end;

    closefile(openwth);
    end;

end;

//Learning Dengan Nilai Optimum
procedure TForm1.Button10Click(Sender: TObject);
begin
  LearnOptimum;
end;

procedure TForm1.LearnOptimum;
var i,j,jd: integer;
begin
  //inputygdisimpan;
  inputx1:=strtofloat(edit21.Text);
  inputx2:=strtofloat(edit22.Text);
  Alpha:=strtofloat(edit17.Text);

  {for jd := 1 to 10 do
  begin}
  //i1
    for i := 1 to layer1 do
      begin
        hasil:=(inputx1*owi1[1,i])+(inputx2*owi1[2,i]);
        v1[i]:=hasil+ot1[i];
        yo1[i]:= 1/(1+exp(-alpha*v1[i]));
      end;

  //12
    for i := 1 to layer2 do
      begin
      hasil:=0;
        for j := 1 to layer1 do
          begin
            hasil:=hasil+(yo1[j]*ow12[j,i]);
          end;
        v2[i]:=hasil+ot2[i];
        yo2[i]:= 1/(1+exp(-alpha*v2[i]));
      end;

  //23
    for i := 1 to layer3 do
      begin
      hasil:=0;
        for j := 1 to layer2 do
          begin
            hasil:=hasil+(yo2[j]*ow23[j,i]);
          end;
        v3[i]:=hasil+ot3[i];
        yo3[i]:= 1/(1+exp(-alpha*v3[i]));
      end;

  //34
    for i := 1 to 3 do
      begin
      hasil:=0;
        for j := 1 to layer3 do
          begin
            hasil:=hasil+(yo3[j]*ow3o[j,i]);
          end;
        v4[i]:=hasil+ot4[i];
        yo4[i]:= 1/(1+exp(-alpha*v4[i]));
      end;

    listbox20.Clear;
    for i := 1 to 3 do
    begin
      listbox20.Items.Add('y[' + inttostr(i) + ']= ' + floattostr(yo4[i]));
    end;

    o11:=yo4[1];
    o12:=yo4[2];
    o13:=yo4[3];

  if o11>=0.9 then
    begin
      statictext18.Caption:=floattostr(1);
      e11:=1-o11;
      edit23.Text:=floattostr(e11);
      e12:=0-o12;
      edit24.Text:=floattostr(e12);
      e13:=0-o13;
      edit25.Text:=floattostr(e13);
    end;

  if o12>=0.9 then
    begin
      statictext18.Caption:=floattostr(2);
      e11:=0-o11;
      edit23.Text:=floattostr(e11);
      e12:=1-o12;
      edit24.Text:=floattostr(e12);
      e13:=0-o13;
      edit25.Text:=floattostr(e13);
    end;

  if o13>=0.9 then
    begin
      statictext18.Caption:=floattostr(3);
      e11:=0-o11;
      edit23.Text:=floattostr(e11);
      e12:=0-o12;
      edit24.Text:=floattostr(e12);
      e13:=1-o13;
      edit25.Text:=floattostr(e13);
    end;
  abse1:=abs((e11+e12+e13)/3);
  statictext23.Caption:=floattostr(abse1);

  {end;

  for jd := 11 to 20 do
  begin
  //i1
    for i := 1 to layer1 do
      begin
        hasil:=(xx[jd]*owi1[1,i])+(yy[jd]*owi1[2,i]);
        v1[i]:=hasil+ot1[i];
        yo1[i]:= 1/(1+exp(-alpha*v1[i]));
      end;

  //12
    for i := 1 to layer2 do
      begin
      hasil:=0;
        for j := 1 to layer1 do
          begin
            hasil:=hasil+(yo1[j]*ow12[j,i]);
          end;
        v2[i]:=hasil+ot2[i];
        yo2[i]:= 1/(1+exp(-alpha*v2[i]));
      end;

  //23
    for i := 1 to layer3 do
      begin
      hasil:=0;
        for j := 1 to layer2 do
          begin
            hasil:=hasil+(yo2[j]*ow23[j,i]);
          end;
        v3[i]:=hasil+ot3[i];
        yo3[i]:= 1/(1+exp(-alpha*v3[i]));
      end;

  //34
    for i := 1 to 3 do
      begin
      hasil:=0;
        for j := 1 to layer3 do
          begin
            hasil:=hasil+(yo3[j]*ow3o[j,i]);
          end;
        v4[i]:=hasil+ot4[i];
        yo4[i]:= 1/(1+exp(-alpha*v4[i]));
      end;

    listbox21.Clear;
    for i := 1 to 3 do
    begin
      listbox21.Items.Add('y[' + inttostr(i) + ']= ' + floattostr(yo4[i]));
    end;

    o21:=yo4[1];
    o22:=yo4[2];
    o23:=yo4[3];
  end;

  for jd := 21 to 30 do
  begin
  //i1
    for i := 1 to layer1 do
      begin
        hasil:=(xx[jd]*owi1[1,i])+(yy[jd]*owi1[2,i]);
        v1[i]:=hasil+ot1[i];
        yo1[i]:= 1/(1+exp(-alpha*v1[i]));
      end;

  //12
    for i := 1 to layer2 do
      begin
      hasil:=0;
        for j := 1 to layer1 do
          begin
            hasil:=hasil+(yo1[j]*ow12[j,i]);
          end;
        v2[i]:=hasil+ot2[i];
        yo2[i]:= 1/(1+exp(-alpha*v2[i]));
      end;

  //23
    for i := 1 to layer3 do
      begin
      hasil:=0;
        for j := 1 to layer2 do
          begin
            hasil:=hasil+(yo2[j]*ow23[j,i]);
          end;
        v3[i]:=hasil+ot3[i];
        yo3[i]:= 1/(1+exp(-alpha*v3[i]));
      end;

  //34
    for i := 1 to 3 do
      begin
      hasil:=0;
        for j := 1 to layer3 do
          begin
            hasil:=hasil+(yo3[j]*ow3o[j,i]);
          end;
        v4[i]:=hasil+ot4[i];
        yo4[i]:= 1/(1+exp(-alpha*v4[i]));
      end;

    listbox22.Clear;
    for i := 1 to 3 do
    begin
      listbox22.Items.Add('y[' + inttostr(i) + ']= ' + floattostr(yo4[i]));
    end;

    o31:=yo4[1];
    o32:=yo4[2];
    o33:=yo4[3];}
  end;

//end;

//Clear Page Control Ketiga
procedure TForm1.Button7Click(Sender: TObject);
begin
  listbox12.Clear; listbox13.Clear; listbox14.Clear; listbox15.Clear;
  listbox16.Clear; listbox17.Clear; listbox18.Clear; listbox19.Clear;
  listbox20.Clear;

  //listbox11.Clear; listbox23.Clear;
end;

end.
