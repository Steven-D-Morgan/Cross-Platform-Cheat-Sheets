### FILE NAMING
- Name all files within selected directory based on **DateTimeOriginal** field
```
exiftool '-FileName<DateTimeOriginal' -d "%Y-%m-%d %H.%M.%S%%-c.%%e" /directory/
```
***
