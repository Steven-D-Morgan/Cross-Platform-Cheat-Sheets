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
| COMMAND | DOES NOT WORK WITH | FILE TYPE |
| ----------- | ----------- | ----------- |
| "-QuickTime:CreateDate<QuickTime:CreateDate" | DOES NOT WORK WITH | JPG |
| "-QuickTime:ModifyDate<QuickTime:CreateDate" | DOES NOT WORK WITH | JPG |
| "-EXIF:CreateDate<QuickTime:CreateDate" | DOES NOT WORK WITH | MP4, MOV |
| "-EXIF:DateTimeOriginal<QuickTime:CreateDate" | DOES NOT WORK WITH | MP4, MOV, GIF |
| "-EXIF:ModifyDate<QuickTime:CreateDate" | DOES NOT WORK WITH | GIF |
| "-IPTC:TimeCreated<QuickTime:CreateDate" | DOES NOT WORK WITH | MP4, MOV, GIF |
| "-IPTC:DateCreated<QuickTime:CreateDate" | DOES NOT WORK WITH | MP4, MOV, GIF |
| "-XMP:DateTimeOriginal<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-XMP-exif:DateTimeOriginal<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-XMP-xmp:CreateDate<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-XMP-xmp:ModifyDate<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-XMP-pdf:CreationDate<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-XMP-photoshop:DateCreated<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-CreationTime<QuickTime:CreateDate" | DOES NOT WORK WITH | MP4, MOV, GIF, JPG, JPEG |
| "-CreationDate<QuickTime:CreateDate" | DOES NOT WORK WITH |N/A |
| "-CreateDate<QuickTime:CreateDate" | DOES NOT WORK WITH |N/A |
| "-DigitalCreationDate<QuickTime:CreateDate" | DOES NOT WORK WITH |N/A |
| "-ModifyDate<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-DateTime<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
| "-DateCreated<QuickTime:CreateDate" | DOES NOT WORK WITH | N/A |
