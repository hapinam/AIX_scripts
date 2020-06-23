forfiles -p "D:\export" -s -m *.zip /D -60 /C "cmd /c del @path"
forfiles -p "D:\export" -s -m *.DMP /D -60 /C "cmd /c del @path"
forfiles -p "D:\export" -s -m *.log /D -60 /C "cmd /c del @path"