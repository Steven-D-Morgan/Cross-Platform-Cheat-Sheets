### External References
***
- https://exiftool.org/geotag.html
- 



***
- Modify/Add **GPSLongitudeRef**, **GPSLongitude**, **GPSLatitudeRef** and **GPSLatitude**
  - Use an online coordinate GPS tool if needed.
   - https://www.pgc.umn.edu/apps/convert/
   - 51 deg 29' 1.76" N, 0 deg 0' 23.66" W *CONVERTED TO DECIMAL DEGREE (DD)* 51.483822 N, 0.006572 W
```
exiftool -GPSLongitudeRef=W -GPSLongitude=0.006572 -GPSLatitudeRef=N -GPSLatitude=51.483822 Picture.jpg
```
