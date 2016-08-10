[1mdiff --git a/CardGames.csproj b/CardGames.csproj[m
[1mindex 102dc28..fa920be 100644[m
[1m--- a/CardGames.csproj[m
[1m+++ b/CardGames.csproj[m
[36m@@ -1,4 +1,4 @@[m
[31m-<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8"?>[m
 <Project DefaultTargets="Build" ToolsVersion="4.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
   <PropertyGroup>[m
     <Configuration Condition=" '$(Configuration)' == '' ">Debug-Windows</Configuration>[m
[36m@@ -10,8 +10,9 @@[m
     <RootNamespace>CardGames</RootNamespace>[m
     <ApplicationIcon>Resources\SwinGame.ico</ApplicationIcon>[m
     <AssemblyName>SnapGame</AssemblyName>[m
[31m-    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>[m
[32m+[m[32m    <TargetFrameworkVersion>v4.0</TargetFrameworkVersion>[m
     <UseMSBuildEngine>False</UseMSBuildEngine>[m
[32m+[m[32m    <TargetFrameworkProfile />[m
   </PropertyGroup>[m
   <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug-Windows|x86' ">[m
     <DebugType>none</DebugType>[m
[36m@@ -58,10 +59,7 @@[m
     </CustomCommands>[m
   </PropertyGroup>[m
   <Import Project="$(MSBuildBinPath)\Microsoft.CSharp.targets" />[m
[31m-  <ItemGroup>[m
[31m-    <Folder Include="src\" />[m
[31m-    <Folder Include="Resources\" />[m
[31m-  </ItemGroup>[m
[32m+[m[32m  <ItemGroup />[m
   <ItemGroup>[m
     <Compile Include="src\**\*.cs" />[m
   </ItemGroup>[m
[36m@@ -76,6 +74,7 @@[m
     </Reference>[m
   </ItemGroup>[m
   <ItemGroup>[m
[32m+[m[32m    <None Include="app.config" />[m
     <None Include="Resources\**\*">[m
       <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>[m
     </None>[m
[1mdiff --git a/src/SnapGame.cs b/src/SnapGame.cs[m
[1mindex ec78e90..4959912 100644[m
[1m--- a/src/SnapGame.cs[m
[1m+++ b/src/SnapGame.cs[m
[36m@@ -34,7 +34,7 @@[m [mnamespace CardGames[m
 		/// <param name="myGame">The details of the game -- mostly top card and scores.</param>[m
 		private static void DrawGame(Snap myGame)[m
 		{[m
[31m-			SwinGame.ClearScreen(Color.White);[m
[32m+[m[32m            SwinGame.DrawBitmap("cardsBoard.png", 0, 0);[m
 [m
 			// Draw the top card[m
 			Card top = myGame.TopCard;[m
