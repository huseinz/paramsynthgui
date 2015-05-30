# paramsynth GUI

Requires qt4-dev-tools libqt4-dev libqt4-core libqt4-gui

Build instructions:

```
sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
qmake paramsynthgui.pro 
make
```

Alternatively, if you want to keep the build files separate,
```
mkdir build
cp output/ build/
cd build
qmake ../paramsynthgui.pro
make
```

Click "Local Session" to bypass login, or build and run the test server if you'd like.
