object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 565
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 1062
    Height = 549
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'INPUT'
      object GroupBox1: TGroupBox
        Left = 9
        Top = 16
        Width = 345
        Height = 473
        Caption = 'Random Input'
        TabOrder = 0
        object Edit1: TEdit
          Left = 56
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object Edit2: TEdit
          Left = 56
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '0,1'
        end
        object Edit3: TEdit
          Left = 103
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 2
          Text = '5'
        end
        object Edit4: TEdit
          Left = 103
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 3
          Text = '0,2'
        end
        object Edit5: TEdit
          Left = 150
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 4
          Text = '1'
        end
        object Edit6: TEdit
          Left = 150
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 5
          Text = '0,4'
        end
        object Edit7: TEdit
          Left = 197
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 6
          Text = '1'
        end
        object Edit8: TEdit
          Left = 197
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 7
          Text = '0,2'
        end
        object Edit9: TEdit
          Left = 244
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 8
          Text = '5'
        end
        object Edit10: TEdit
          Left = 244
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 9
          Text = '0,3'
        end
        object Edit11: TEdit
          Left = 291
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 10
          Text = '0'
        end
        object Edit12: TEdit
          Left = 291
          Top = 67
          Width = 41
          Height = 21
          TabOrder = 11
          Text = '0,5'
        end
        object StaticText1: TStaticText
          Left = 72
          Top = 17
          Width = 250
          Height = 17
          Caption = 
            'X1           Y1           X2            Y2             X3       ' +
            '    Y3'
          TabOrder = 12
        end
        object StaticText2: TStaticText
          Left = 16
          Top = 44
          Width = 30
          Height = 17
          Caption = 'Mean'
          TabOrder = 13
        end
        object StaticText3: TStaticText
          Left = 20
          Top = 67
          Width = 17
          Height = 17
          Caption = 'SD'
          TabOrder = 14
        end
        object Button8: TButton
          Left = 84
          Top = 106
          Width = 75
          Height = 25
          Caption = 'Save Input'
          TabOrder = 15
          OnClick = Button8Click
        end
        object ListBox9: TListBox
          Left = 20
          Top = 160
          Width = 143
          Height = 297
          ItemHeight = 13
          TabOrder = 16
        end
        object ListBox10: TListBox
          Left = 181
          Top = 160
          Width = 141
          Height = 297
          ItemHeight = 13
          TabOrder = 17
        end
        object StaticText16: TStaticText
          Left = 58
          Top = 137
          Width = 228
          Height = 17
          Caption = 'Input (X1)                                          Input (X2)'
          TabOrder = 18
        end
        object Button9: TButton
          Left = 181
          Top = 106
          Width = 75
          Height = 25
          Caption = 'Open Input'
          TabOrder = 19
          OnClick = Button9Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 719
        Top = 16
        Width = 332
        Height = 484
        Caption = 'Layer, Threshold, dan Weight'
        TabOrder = 1
        object Edit13: TEdit
          Left = 104
          Top = 40
          Width = 41
          Height = 21
          TabOrder = 0
          Text = '4'
        end
        object Edit14: TEdit
          Left = 151
          Top = 40
          Width = 49
          Height = 21
          TabOrder = 1
          Text = '4'
        end
        object Edit15: TEdit
          Left = 206
          Top = 40
          Width = 49
          Height = 21
          TabOrder = 2
          Text = '4'
        end
        object StaticText4: TStaticText
          Left = 15
          Top = 40
          Width = 87
          Height = 17
          Caption = 'Number of Nodes'
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 104
          Top = 17
          Width = 148
          Height = 17
          Caption = 'Layer 1      Layer  2     Layer 3'
          TabOrder = 4
        end
        object ListBox1: TListBox
          Left = 19
          Top = 95
          Width = 71
          Height = 169
          ItemHeight = 13
          TabOrder = 5
        end
        object ListBox2: TListBox
          Left = 96
          Top = 95
          Width = 66
          Height = 169
          ItemHeight = 13
          TabOrder = 6
        end
        object ListBox3: TListBox
          Left = 168
          Top = 95
          Width = 74
          Height = 169
          ItemHeight = 13
          TabOrder = 7
        end
        object ListBox4: TListBox
          Left = 248
          Top = 95
          Width = 73
          Height = 169
          ItemHeight = 13
          TabOrder = 8
        end
        object ListBox5: TListBox
          Left = 19
          Top = 294
          Width = 70
          Height = 162
          ItemHeight = 13
          TabOrder = 9
        end
        object ListBox6: TListBox
          Left = 95
          Top = 294
          Width = 66
          Height = 162
          ItemHeight = 13
          TabOrder = 10
        end
        object StaticText6: TStaticText
          Left = 32
          Top = 72
          Width = 281
          Height = 17
          Caption = 
            'Input to L1        L1 to L              L2 to L3         L3 to O' +
            'utput'
          TabOrder = 11
        end
        object ListBox7: TListBox
          Left = 167
          Top = 294
          Width = 74
          Height = 162
          ItemHeight = 13
          TabOrder = 12
        end
        object StaticText7: TStaticText
          Left = 32
          Top = 271
          Width = 282
          Height = 17
          Caption = 'Threshold 1     Threshold 2      Threshold 3       Threshold 4'
          TabOrder = 13
        end
        object Button2: TButton
          Left = 261
          Top = 41
          Width = 58
          Height = 25
          Caption = 'RANDOM'
          TabOrder = 14
          OnClick = Button2Click
        end
        object ListBox8: TListBox
          Left = 247
          Top = 294
          Width = 74
          Height = 162
          ItemHeight = 13
          TabOrder = 15
        end
      end
      object GroupBox5: TGroupBox
        Left = 362
        Top = 16
        Width = 351
        Height = 473
        Caption = 'Input Plot'
        TabOrder = 2
        object Chart1: TChart
          Left = 16
          Top = 67
          Width = 321
          Height = 321
          BackWall.Brush.Gradient.Direction = gdBottomTop
          BackWall.Brush.Gradient.EndColor = clWhite
          BackWall.Brush.Gradient.StartColor = 15395562
          BackWall.Brush.Gradient.Visible = True
          BackWall.Transparent = False
          Foot.Font.Color = clBlue
          Foot.Font.Name = 'Verdana'
          Gradient.Direction = gdBottomTop
          Gradient.EndColor = clWhite
          Gradient.MidColor = 15395562
          Gradient.StartColor = 15395562
          Gradient.Visible = True
          LeftWall.Color = 14745599
          Legend.Font.Name = 'Verdana'
          Legend.Shadow.Transparency = 0
          Legend.Visible = False
          RightWall.Color = 14745599
          Title.Font.Name = 'Verdana'
          Title.Text.Strings = (
            'INPUT')
          BottomAxis.Automatic = False
          BottomAxis.AutomaticMaximum = False
          BottomAxis.AutomaticMinimum = False
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 11119017
          BottomAxis.LabelsFormat.Font.Name = 'Verdana'
          BottomAxis.Maximum = 7.000000000000000000
          BottomAxis.Minimum = -1.000000000000000000
          BottomAxis.TicksInner.Color = 11119017
          BottomAxis.Title.Caption = 'x'
          BottomAxis.Title.Font.Name = 'Verdana'
          DepthAxis.Axis.Color = 4210752
          DepthAxis.Grid.Color = 11119017
          DepthAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthAxis.TicksInner.Color = 11119017
          DepthAxis.Title.Font.Name = 'Verdana'
          DepthTopAxis.Axis.Color = 4210752
          DepthTopAxis.Grid.Color = 11119017
          DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthTopAxis.TicksInner.Color = 11119017
          DepthTopAxis.Title.Font.Name = 'Verdana'
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = 11119017
          LeftAxis.LabelsFormat.Font.Name = 'Verdana'
          LeftAxis.Maximum = 7.000000000000000000
          LeftAxis.Minimum = -1.000000000000000000
          LeftAxis.TicksInner.Color = 11119017
          LeftAxis.Title.Caption = 'y'
          LeftAxis.Title.Font.Name = 'Verdana'
          RightAxis.Axis.Color = 4210752
          RightAxis.Grid.Color = 11119017
          RightAxis.LabelsFormat.Font.Name = 'Verdana'
          RightAxis.TicksInner.Color = 11119017
          RightAxis.Title.Font.Name = 'Verdana'
          TopAxis.Axis.Color = 4210752
          TopAxis.Grid.Color = 11119017
          TopAxis.LabelsFormat.Font.Name = 'Verdana'
          TopAxis.TicksInner.Color = 11119017
          TopAxis.Title.Font.Name = 'Verdana'
          View3D = False
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series2: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series3: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series4: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series5: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series6: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series7: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series8: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series9: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series10: TPointSeries
            ClickableLine = False
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series11: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series12: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series13: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series14: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series15: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series16: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series17: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series18: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series19: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series20: TPointSeries
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series21: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series22: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series23: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series24: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series25: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series26: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series27: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series28: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series29: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series30: TPointSeries
            SeriesColor = 16744703
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psCircle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'LEARNING'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 16
        Top = 49
        Width = 201
        Height = 145
        Caption = 'Parameters'
        TabOrder = 0
        object Edit16: TEdit
          Left = 64
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          Text = '0,5'
        end
        object Edit17: TEdit
          Left = 64
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 1
          Text = '2'
        end
        object Edit18: TEdit
          Left = 64
          Top = 81
          Width = 121
          Height = 21
          TabOrder = 2
          Text = '0,000001'
        end
        object StaticText8: TStaticText
          Left = 27
          Top = 36
          Width = 31
          Height = 17
          Caption = 'Miu ='
          TabOrder = 3
        end
        object StaticText9: TStaticText
          Left = 16
          Top = 59
          Width = 42
          Height = 17
          Caption = 'Alpha ='
          TabOrder = 4
        end
        object StaticText10: TStaticText
          Left = 10
          Top = 83
          Width = 48
          Height = 17
          Caption = 'Epsilon ='
          TabOrder = 5
        end
        object Button3: TButton
          Left = 27
          Top = 108
          Width = 75
          Height = 25
          Caption = 'START'
          TabOrder = 6
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 108
          Top = 108
          Width = 75
          Height = 25
          Caption = 'CLEAR'
          TabOrder = 7
          OnClick = Button4Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 223
        Top = 49
        Width = 201
        Height = 145
        Caption = 'Value'
        TabOrder = 1
        object Edit19: TEdit
          Left = 88
          Top = 28
          Width = 97
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object Edit20: TEdit
          Left = 89
          Top = 55
          Width = 96
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object StaticText11: TStaticText
          Left = 10
          Top = 33
          Width = 61
          Height = 17
          Caption = 'Iterartion ='
          TabOrder = 2
        end
        object StaticText12: TStaticText
          Left = 7
          Top = 59
          Width = 35
          Height = 17
          Caption = 'MSE ='
          TabOrder = 3
        end
        object Button5: TButton
          Left = 48
          Top = 96
          Width = 121
          Height = 25
          Caption = 'Save Optimum Score'
          TabOrder = 4
          OnClick = Button5Click
        end
      end
      object Chart2: TChart
        Left = 16
        Top = 200
        Width = 1025
        Height = 296
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.Shadow.Transparency = 0
        Legend.Visible = False
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'ERROR')
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Iteration'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Error'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series31: TLineSeries
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'UNIVERSAL RESULT'
      ImageIndex = 2
      object ListBox12: TListBox
        Left = 440
        Top = 80
        Width = 114
        Height = 185
        ItemHeight = 13
        TabOrder = 0
      end
      object ListBox13: TListBox
        Left = 560
        Top = 80
        Width = 114
        Height = 185
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox14: TListBox
        Left = 680
        Top = 80
        Width = 114
        Height = 185
        ItemHeight = 13
        TabOrder = 2
      end
      object ListBox15: TListBox
        Left = 800
        Top = 80
        Width = 113
        Height = 185
        ItemHeight = 13
        TabOrder = 3
      end
      object ListBox16: TListBox
        Left = 440
        Top = 303
        Width = 114
        Height = 74
        ItemHeight = 13
        TabOrder = 4
      end
      object ListBox17: TListBox
        Left = 560
        Top = 303
        Width = 114
        Height = 74
        ItemHeight = 13
        TabOrder = 5
      end
      object ListBox18: TListBox
        Left = 680
        Top = 303
        Width = 114
        Height = 74
        ItemHeight = 13
        TabOrder = 6
      end
      object ListBox19: TListBox
        Left = 800
        Top = 303
        Width = 111
        Height = 74
        ItemHeight = 13
        TabOrder = 7
      end
      object Button6: TButton
        Left = 407
        Top = 26
        Width = 130
        Height = 25
        Caption = 'Open Weight & Threhold'
        TabOrder = 8
        OnClick = Button6Click
      end
      object StaticText13: TStaticText
        Left = 479
        Top = 57
        Width = 410
        Height = 17
        Caption = 
          'Weight 1                          Weight 2                      ' +
          '   Weight 3                          Weight 4 '
        TabOrder = 9
      end
      object StaticText14: TStaticText
        Left = 471
        Top = 280
        Width = 417
        Height = 17
        Caption = 
          'Threshold 1                      Threshold 2                    ' +
          '  Threshold 3                    Thresold 4 '
        TabOrder = 10
      end
      object ListBox20: TListBox
        Left = 16
        Top = 416
        Width = 649
        Height = 79
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object Button7: TButton
        Left = 624
        Top = 26
        Width = 75
        Height = 25
        Caption = 'CLEAR'
        TabOrder = 12
        OnClick = Button7Click
      end
      object Button10: TButton
        Left = 543
        Top = 26
        Width = 75
        Height = 25
        Caption = 'TEST'
        TabOrder = 13
        OnClick = Button10Click
      end
      object StaticText17: TStaticText
        Left = 158
        Top = 57
        Width = 228
        Height = 17
        Caption = 'Input (X1)                                          Input (X2)'
        TabOrder = 14
      end
      object StaticText22: TStaticText
        Left = 696
        Top = 498
        Width = 87
        Height = 17
        Caption = 'Absolute Error = '
        TabOrder = 15
      end
      object StaticText23: TStaticText
        Left = 789
        Top = 498
        Width = 10
        Height = 17
        Caption = '0'
        TabOrder = 16
      end
      object Edit21: TEdit
        Left = 120
        Top = 80
        Width = 137
        Height = 21
        TabOrder = 17
        Text = '0'
      end
      object Edit22: TEdit
        Left = 288
        Top = 80
        Width = 137
        Height = 21
        TabOrder = 18
        Text = '5'
      end
      object StaticText15: TStaticText
        Left = 16
        Top = 501
        Width = 62
        Height = 17
        Caption = 'CLUSTER = '
        TabOrder = 19
      end
      object StaticText18: TStaticText
        Left = 109
        Top = 501
        Width = 10
        Height = 17
        Caption = '0'
        TabOrder = 20
      end
      object Edit23: TEdit
        Left = 696
        Top = 417
        Width = 215
        Height = 21
        TabOrder = 21
        Text = '0'
      end
      object Edit24: TEdit
        Left = 696
        Top = 444
        Width = 215
        Height = 21
        TabOrder = 22
        Text = '0'
      end
      object Edit25: TEdit
        Left = 696
        Top = 471
        Width = 215
        Height = 21
        TabOrder = 23
        Text = '0'
      end
      object StaticText19: TStaticText
        Left = 776
        Top = 394
        Width = 39
        Height = 17
        Caption = 'ERROR'
        TabOrder = 24
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 676
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 636
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 592
    Top = 8
  end
  object SaveDialog2: TSaveDialog
    Left = 552
    Top = 8
  end
  object OpenDialog2: TOpenDialog
    Left = 512
    Top = 8
  end
end
