   M S B A M L   `   `   `  ????F  BVenn.Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Venn.Client.MVVM.ViewModelsVenn.Client.MVVM.ViewModels  5      ?$clr-namespace:Venn.Client.MVVM.ViewsVenn.Client.MVVM.Views  5	      %    Venn.Client.MVVM.Views.ChatView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?	viewmodel)clr-namespace:Venn.Client.MVVM.ViewModels     5      _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      0local$clr-namespace:Venn.Client.MVVM.Views  5	      ???#36393F.??5      )  #MaterialDesignThemes.Wpf.DialogHost      CloseOnClickAway$
  True??6       DialogContent 5   
   ?? 5      $	??500??5       ?? Orientation$ Vertical=?5      ???#2F3136.+?5      (  "MaterialDesignThemes.Wpf.ColorZone     CornerRadius$ 5??5         Mode$ Standard=?5      $??8 4 8 4q?5       K? ZIndex$ 1??5      $??10q?5      ???#3e4147+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=?5      .??5      ??  ?? CornerRadius$ 8??6   ???#3e4147._?5      ? .+?5      ?? -   5        $??
MessageBox??5$   !   $??50??5    !   $??Stretch=?5!   !   $??Center=?5"   !   $??Stretch=?5#   !   
??????  ?? TextWrapping$
 Wrap=?5&   !   $??0q?5'   !   
???????	 ?? 
CaretBrush
	 ?????$??
8, 0, 8, 0q?5*   !   ??5+   !   ?? *
FriendName+
 ?? Mode$
 TwoWay=? ?? UpdateSourceTrigger$ PropertyChanged=??? 5/       J? IsHitTestVisible$ False??50   !   $??Find Friend...??51   !   $??Center=?52   !   $
??Left=?53   !   $??10, 0, 0, 0q?54   !   
?????????57   "   ?? 58   &    ?? 
TargetType" ??6,   .?59   *   ??  ?? Property ? y? ?? Value$ 	Collapsed=?6G    ?? Triggers 5:   *   ?? 5;   .    ?? Binding 6:   ?? *Text+ ?? ElementName$ 
MessageBox?? ?? Value  6k   .a?5<   2   ??  ? y?$ Visible=?6O   5=   /   5?   '   5B      5C      5E      5F      ?? 5G      
?????? $??0q?5M      $??1??5N         
FriendCard#??[  5O      ??5H      ?? *Users+$ PropertyChanged=?$
 TwoWay=?5O      5P      .??5R   
   ?  ? ColumnDefinitions 5S      ?? 5T      $	??200 ?6#   ?? 5U      .+?5X      ? ???#2F3136 ? RowDefinitions 5Z      ?? 5[      $??50 ?6$   ?? 5\      ?? 5]      $??60 ?6$   .+?5`      ?? $??Contacts??5a      $??Center=?5b      $??Medium"?5c      
???????$??
8, 0, 0, 0q?5e      ?? 5g      
?????? $??0q?5u      $??1??5v        ContactCard#??[ 5w      ??5h      ?? *
Contacts+$ PropertyChanged=?$
 TwoWay=? ?? SelectedItem 5l      ?? *SelectedContact+$ PropertyChanged=?$
 TwoWay=? ?? SelectedIndex 5p      ?? *SelectedContactIndex+$ PropertyChanged=?$
 TwoWay=?5w      ? 5y      $??2??5z      ???#292b2f 5|      ?? 5}      ?? 5~      $??35 ?6+   .+?5?      ?? $ 
Horizontal=?6!   .+?5?      A? $??18, 0, 0, 0q?5?      $??30??5?      $??30??5?      ??5?      ?? 5?   "    ?? ImageSource 5?      ?? *User.ImageSource+$ PropertyChanged=?5?      ?? 5?      
???????$??SemiBold"?5?      $??Center=?5?      ??5?      ?? *User.Username+5?      5?      ?? 5?      $??1??5?      $
??Left=?5?      $??Center=?5?      
?????? $??0q?5?      $??17??5?      $??17??5?      $??0q?5?      $??0q?5?      
?????????5?      ?? *SettingsCommand+.??5?      o? $??0q?5?      $??0q?5?       o? 
IsMainMenu$
 True??5?      .@?5?      m? $??Center=?5?      $??0q?5?      
???????$??SemiBold"?5?      ???#292b2f$??34??5?   2   ??5?      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ DotsVertical=?.@?5?   "   m? $??	Add Group??5?   %    m? Icon 5?   %     $
 Plus=?m? 5?   "   $??Find Friend??5?   %      OpenDialogCommand m? Command# Z 5?   %    5?   %     $ AccountSearch=?5?   %   m? 5?   "   $??Upload Photo??5?   %    5?   %     $ Upload=?m? 5?   "   $??Log Out??5?   %    5?   %     $ Logout=?5?      5?      5?      5?      5?      ? 5?      $??1??6    5?      ?? 5?      $??50 ?6$   ?? 5?      ?? 5?      $??70 ?6$   .+?5?      ?? ???#2F3136$??
0, 0, 0, 2q?5?      ._?5?      ? $??Stretch=?5?      $??8q?5?      .+?5?      ?? $ 
Horizontal=?5?      $
??Left=?5?      .+?5?      A? $??18, 0, 0, 0q?5?      $??30??5?      $??30??5?      ??5?   "   ?? 5?   &    5?   %   ?? *SelectedContact.ImageSource+$ PropertyChanged=?5?      ?? 5?      
???????$
??Bold"?5?      $??
5, 0, 5, 0q?5?      $??Center=?5?      ??5?      ?? *SelectedContact.Username+$ PropertyChanged=?$
 OneWay=?5?      5?      5?      5?      ?? 5?        ChatItem#??[ 5?      
?????? $??0q?5?      $??1??5?      $??
8, 0, 0, 0q?5?      ??5?      ?? *
Messages+$ PropertyChanged=?$
 TwoWay=?5?      ? 5?      $??2??6    5?      ?? 5?      ?? 5      $??90 ?6+   .+?5     ?? $??0q?5       
MessageBox#??[ 5     $??50??5     $??2??5     ?? 5	     
?????? $??0q?5     $??1??5     $??20??5     $??20??5     $??0q?5     
???????$??5, 5, 16, 0q?5     ??5
     ?? *SendMessageCommand+.??5     '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Send=?5     $??20??5     $??20??5     5     5     5     5     5     5     