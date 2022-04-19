### LOCATION ###
 - Below are the coordinates of the White House in Washington, DC
    - Latitude: 38.897957
    - Longitude: -77.036560
    - Altitude: 59
 - To embed these coordinates into the MetaData of a media file...
      ```
      -xmp:gpslatitude="38.897957" -xmp:gpslongitude="-77.036560" -xmp:gpsaltitude="59" -xmp:latitude="38.897957" -xmp:longitude="-77.036560" -xmp:altitude="59"
      ```
***

-QuickTime:CreateDate="2012:12:12 12:12:12"
  - YYYY:MM:DD HH:MM:SS
-EXIF:ModifyDate="2012:12:12 12:12:12"
  - YYYY:MM:DD HH:MM:SS
-IPTC:TimeCreated="12:12:12-05:00"
  - HH:MM:SS-TZ:TZ
-IPTC:DateCreated="12:12:12"
  - YYYY:MM:DD
-DateCreated="SEE BELOW"
  - JPEG, JPG, GIF = YYYY:MM:DD HH:MM:SS
  - PNG = YYYY:MM:DD
***
| COMMAND | DOES NOT WORK WITH |
| ----------- | ----------- |
| "-QuickTime:CreateDate<QuickTime:CreateDate" | JPG |
| "-QuickTime:ModifyDate<QuickTime:CreateDate" | JPG |
| "-EXIF:CreateDate<QuickTime:CreateDate" | MP4, MOV |
| "-EXIF:DateTimeOriginal<QuickTime:CreateDate" | MP4, MOV, GIF |
| "-EXIF:ModifyDate<QuickTime:CreateDate" | GIF |
| "-IPTC:TimeCreated<QuickTime:CreateDate" | MP4, MOV, GIF |
| "-IPTC:DateCreated<QuickTime:CreateDate" | MP4, MOV, GIF |
| "-XMP:DateTimeOriginal<QuickTime:CreateDate" | N/A |
| "-XMP-exif:DateTimeOriginal<QuickTime:CreateDate" | N/A |
| "-XMP-xmp:CreateDate<QuickTime:CreateDate" | N/A |
| "-XMP-xmp:ModifyDate<QuickTime:CreateDate" | N/A |
| "-XMP-pdf:CreationDate<QuickTime:CreateDate" | N/A |
| "-XMP-photoshop:DateCreated<QuickTime:CreateDate" | N/A |
| "-CreationTime<QuickTime:CreateDate" | MP4, MOV, GIF, JPG, JPEG |
| "-CreationDate<QuickTime:CreateDate" | N/A |
| "-CreateDate<QuickTime:CreateDate" | N/A |
| "-DigitalCreationDate<QuickTime:CreateDate" | N/A |
| "-ModifyDate<QuickTime:CreateDate" | N/A |
| "-DateTime<QuickTime:CreateDate" | N/A |
| "-DateCreated<QuickTime:CreateDate" | N/A |

***
| COMMAND | MOV | MP4 | GIF | PNG | JPEG | JPG |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| "-QuickTime:CreateDate<QuickTime:CreateDate" | <ul><li>[x] </li></ul> | <ul><li>[x] </li></ul> | <ul><li>[x] </li></ul> | <ul><li>[x] </li></ul> | <ul><li>[x] </li></ul> | <ul><li>[x] </li></ul> | <ul><li>[] </li></ul> |
| "-QuickTime:ModifyDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [] |
| "-EXIF:CreateDate<QuickTime:CreateDate" | [] | [] | [x] | [x] | [x] | [x] | [x] |
| "-EXIF:DateTimeOriginal<QuickTime:CreateDate" | [] | [] | [] | [x] | [x] | [x] | [x] |
| "-EXIF:ModifyDate<QuickTime:CreateDate" | [x] | [x] | [] | [x] | [x] | [x] | [x] |
| "-IPTC:TimeCreated<QuickTime:CreateDate" | [] | [] | [] | [x] | [x] | [x] | [x] |
| "-IPTC:DateCreated<QuickTime:CreateDate" | [] | [] | [] | [x] | [x] | [x] | [x] |
| "-XMP:DateTimeOriginal<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-XMP-exif:DateTimeOriginal<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-XMP-xmp:CreateDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-XMP-xmp:ModifyDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-XMP-pdf:CreationDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-XMP-photoshop:DateCreated<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-CreationTime<QuickTime:CreateDate" | [] | [] | [] | [x] | [] | [] | [] |
| "-CreationDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-CreateDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-DigitalCreationDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-ModifyDate<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-DateTime<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
| "-DateCreated<QuickTime:CreateDate" | [x] | [x] | [x] | [x] | [x] | [x] | [x] |
