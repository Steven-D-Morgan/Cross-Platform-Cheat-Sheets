### Date & Time
***
- Copy **CreateDate** *EXIF* field to the **DateTimeOriginal** *EXIF* field.
  - Many of my pictures did not have the **CreateDate** *EXIF* property but they did have the **DateTimeOriginal** *EXIF* property. I wanted the **CreateDate** *EXIF* property to have the same value as the **DateTimeOriginal**.
  - The *IF* function allows only changing if **CreateDate** does not contain any data
```
exiftool '-createdate<datetimeoriginal' -r -if '(not $createdate and $datetimeoriginal)' /path/to/picture/directory/
```



***
- Name the file based on **DateTimeOriginal** *EXIF** field.
  - If two contain identical **DateTimeOriginal** it will add a number to it.
  - *EXAMPLE:* 2014-01-01 12:00:00.jpg
```
exiftool '-FileName<DateTimeOriginal' -d "%Y-%m-%d %H.%M.%S%%-c.%%e"
```



***
- Name the file based on **DateTimeOriginal** *EXIF** field and add a number to it
  - *EXAMPLE:* 2014-01-01 12:00:00.jpg
```
exiftool '-FileName<DateTimeOriginal' -d "%m-%d-%Y-c.%%e"
```



***
- Set all Date/Time fields with a single command.

```
exiftool "-AllDates=1986:11:05 12:00:00"
```



***
- TITLE HERE
  - Description here (if applicable)
```
ENTER CODE HERE
```
