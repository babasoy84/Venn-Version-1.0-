   M S B A M L   `   `   `  ????F  BVenn.Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Venn.Client.MVVM.ViewsVenn.Client.MVVM.Views  5   	   I)clr-namespace:Venn.Client.MVVM.ViewModelsVenn.Client.MVVM.ViewModels  5   	   %    Venn.Client.MVVM.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   0local$clr-namespace:Venn.Client.MVVM.Views  5   	   9	viewmodel)clr-namespace:Venn.Client.MVVM.ViewModels  5   	     ? WindowStyle$
  None=?5   	    ? AllowsTransparency$
 True??5   	    ? 
ResizeMode$ CanResizeWithGrip=?5   	    ? Title$
 Venn??5   	   ???#36393F$	??650??5   	   $
??1200??6   .??5      ?  ? RowDefinitions 5   
   ?? 5      $??25 ?6   ?? 5      .+?5   
   ?? -   5        $??header??5      ???#252525._?5      ? $??Stretch=?5      $
??5, 0q?5      .+?5      ?? 
???????$
??Venn??5       $??SemiBold"?5!      ?? 5#      $??Right=?5$       ?? Orientation$ 
Horizontal=?5%      .+?5'      ?? -   5        $??btnWindowMinimize??5(      $??0q?5)      $??20??5*      $??20??5+      
?????? $??0q?5-      
???????$
??Bold"?5/      $??_??50      $??0,0,0,6q?51      52      ?? 54      -   5        $??btnWindowMaximize??55      $??0q?56      $??20??57      $??20??58      
?????? $??0q?5:      
???????$
??Bold"?5<      $	??□??5=      $??0,0,0,2q?5>      5?      ?? 5A      -   5        $??btnWindowClose??5B      $??0q?5C      $??20??5D      $??20??5E      
?????? $??0q?5G      
???????$
??Bold"?5I      $
??🞨??5J      5K      5M      5N      5O      ?? 5Q   
   $??1??5R      ??5S      ?? *CurrentViewModel+5U      5V      