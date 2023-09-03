-- premake5.lua
workspace "ImGuiFX"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "GLFW"

outputdir = "%{cfg.buildcfg}"

include "Dependencies"