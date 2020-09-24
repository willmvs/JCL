//jobcard
//STEPT03  EXEC PGM=ADRDSSU
//SYSPRINT DD SYSOUT=*
//* Specify the source dump data set below. The dump should have
//* been created using ADRDSSU (also called DFDSS).
//SOURCE   DD UNIT=3390,DISP=OLD,DSN=USERID.DUMPDS
//* Specify the target volume to receive the restored data set.
//TARGET   DD UNIT=3390,VOL=SER=XXXYYY,DISP=OLD
//* The SYSIN uses the DD names (SOURCE and TARGET) to process
//* the RESTORE request, so make sure to update the SYSIN if 
//* you change the DD names.
//* The DATASET INCLUDE parameter mentions a mask for the data set
//* that is going to be restored from the dump. You can also use   
//* a specific data set, like TEST.FILE.NATIVE to restore a single
//* data set.
//SYSIN    DD *
 RESTORE INDDNAME(SOURCE) OUTDDNAME(TARGET) -
         DATASET(INCLUDE(TEST.**.NATIVE)) REPLACE
/*