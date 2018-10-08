#!/bin/bash

#echo "Please copy hmr.js to the following location, if it's not correct for relative paths"
cp ../hmr.js node_modules/metro-react-native-babel-preset/src/configs/hmr.js

echo "Cleaning up old react-native stuff"
rm -rf $TMPDIR/react-*; rm -rf $TMPDIR/haste-*; rm -rf $TMPDIR/metro-*; watchman watch-del-all; react-native start  --reset-cache


exit



# Clean cache
rm -rf $TMPDIR/react-*; rm -rf $TMPDIR/haste-*; rm -rf $TMPDIR/metro-*; watchman watch-del-all

# Open a new tab and Start Metro Bundler directly from the project folder
react-native start  --reset-cache

# Now run `react-native run-android` or `react-native run-ios`
