### Date & Time
***
- Copy **CreateDate** *EXIF* field to the **DateTimeOriginal** *EXIF* field.
  - Many of my pictures did not have the **CreateDate** *EXIF* property but they did have the **DateTimeOriginal** *EXIF* property. I wanted the **CreateDate** *EXIF* property to have the same value as the **DateTimeOriginal**.
  - The *IF* function allows only changing if **CreateDate** does not contain any data
```
exiftool '-createdate<datetimeoriginal' -r -if '(not $createdate and $datetimeoriginal)' /path/to/picture/directory/
```
***
