<p align="center">
  <img src="./img/GetCPM.png" height="100" />
</p>

<p align="center">
  A setup-free CMake dependency manager from <a href="https://github.com/TheLartians/CPM.cmake">TheLartians</a>
</p>

---

GetCPM.cmake let's you add [CPM](https://github.com/TheLartians/CPM.cmake) to your current project. Simply download CPM.cmake into the cmake folder.

```bash
# Using wget
mkdir -p cmake
wget -O cmake/CPM.cmake https://raw.githubusercontent.com/CppMf/GetCPM.cmake/glob/master/GetCPM.cmake
```

```bash
# Using curl
mkdir -p cmake
curl -o cmake/CPM.cmake https://github.com/TheLartians/CPM.cmake/releases/latest/download/get_cpm.cmake
```

```bash
# Using aria2
aria2c -d cmake -o CPM.cmake https://github.com/TheLartians/CPM.cmake/releases/latest/download/get_cpm.cmake
```

then add it to CMakeLists.txt file

```bash
# add dependencies
include(cmake/CPM.cmake)
```

For a full documentation about CPM, visit the original author repository : [TheLartians/CPM.cmake](https://github.com/TheLartians/CPM.cmake)