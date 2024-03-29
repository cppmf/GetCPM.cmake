<p align="center">
  <img src="https://github.com/cppmf/artwork/raw/master/banner/GetCPM.cmake/GetCPM.png" height="100" />
</p>

<p align="center">
  A setup-free CMake dependency manager from <a href="https://github.com/TheLartians/CPM.cmake">TheLartians</a>
</p>

---

GetCPM.cmake let's you add [CPM](https://github.com/TheLartians/CPM.cmake) to your current project. Simply download CPM.cmake into the cmake folder.

```bash
# Using wget
mkdir cmake
wget -O cmake/GetCPM.cmake https://raw.githubusercontent.com/cppmf/GetCPM.cmake/master/GetCPM.cmake
```

```bash
# Using curl
mkdir cmake
curl -o cmake/GetCPM.cmake https://raw.githubusercontent.com/cppmf/GetCPM.cmake/master/GetCPM.cmake
```

```bash
# Using aria2
aria2c -d cmake -o GetCPM.cmake https://raw.githubusercontent.com/cppmf/GetCPM.cmake/master/GetCPM.cmake
```

```powershell
# for powershell user
New-Item -Name "cmake" -ItemType "directory"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cppmf/GetCPM.cmake/master/GetCPM.cmake" -OutFile "cmake/GetCPM.cmake" -ErrorAction Stop -Verbose
```

then add it to CMakeLists.txt file

```bash
# add dependencies
include(cmake/GetCPM.cmake)
```

You can use a different version of CPM.cmake by defining `CPM_CMAKE_VERSION` variable.

#

For a full documentation about CPM, visit the original author repository : [TheLartians/CPM.cmake](https://github.com/TheLartians/CPM.cmake)