### FILE NAMING
***
- Remove all Metadata from one picture
```
exiftool -all= picture.jpg
```
***
- Remove all Metadata from all pictures in an entire directory
```
exiftool -all= *.jpg
```
***
- Re-write existing image INSTEAD of default which creates a new copy.
```
-overwrite_original_in_place
```
***
