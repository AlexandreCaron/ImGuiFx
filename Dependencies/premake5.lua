project "GLFW"
   kind "StaticLib"
   language "C++"
   cppdialect "C++17"
   targetdir "bin/%{cfg.buildcfg}"
   staticruntime "off"

   files 
   {
   }

   includedirs
   {
   }
   
   defines 
   { 
   }
   
   libdirs
   {
   }
   
   links
   {
   }
   
   targetdir ("../Binaries")
   objdir ("../Intermediates")

   filter "system:windows"
      systemversion "latest"

   filter "configurations:Debug"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"
      ignoredefaultlibraries { "MSVCRT" }

   filter "configurations:Release"
      defines { "RELEASE" }
      runtime "Release"
      optimize "On"
      symbols "On"

   filter "configurations:Dist"
      defines { "DIST" }
      runtime "Release"
      optimize "On"
      symbols "Off"