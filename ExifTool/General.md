### FILE NAMING
***
**REFERENCES**
 - https://exiftool.org/examples.html
 - https://exiftool.org/TagNames/GPS.html

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
- Copy all tags from one file to another
```
exiftool -TagsFromFile source.jpg target.jpg
```


***
- Show progress in the log
  - Useful if editing large directories or something like that.
```
-progress
```



***
- TITLE HERE
  - Description here (if applicable)
```
ENTER CODE HERE
```



***
- TITLE HERE
  - Description here (if applicable)
```
ENTER CODE HERE
```



***
- TITLE HERE
  - Description here (if applicable)
```
ENTER CODE HERE
```
