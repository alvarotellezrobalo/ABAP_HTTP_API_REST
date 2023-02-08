*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZCA_API_T001....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T001                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T001                  .
CONTROLS: TCTRL_ZCA_API_T001
            TYPE TABLEVIEW USING SCREEN '0001'.
*...processing: ZCA_API_T002....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T002                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T002                  .
CONTROLS: TCTRL_ZCA_API_T002
            TYPE TABLEVIEW USING SCREEN '0002'.
*...processing: ZCA_API_T003....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T003                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T003                  .
CONTROLS: TCTRL_ZCA_API_T003
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZCA_API_T004....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T004                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T004                  .
CONTROLS: TCTRL_ZCA_API_T004
            TYPE TABLEVIEW USING SCREEN '0004'.
*...processing: ZCA_API_T005....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T005                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T005                  .
CONTROLS: TCTRL_ZCA_API_T005
            TYPE TABLEVIEW USING SCREEN '0005'.
*...processing: ZCA_API_T006....................................*
DATA:  BEGIN OF STATUS_ZCA_API_T006                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCA_API_T006                  .
CONTROLS: TCTRL_ZCA_API_T006
            TYPE TABLEVIEW USING SCREEN '0006'.
*...processing: ZCA_API_V001....................................*
TABLES: ZCA_API_V001, *ZCA_API_V001. "view work areas
CONTROLS: TCTRL_ZCA_API_V001
TYPE TABLEVIEW USING SCREEN '0007'.
DATA: BEGIN OF STATUS_ZCA_API_V001. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZCA_API_V001.
* Table for entries selected to show on screen
DATA: BEGIN OF ZCA_API_V001_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V001.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V001_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZCA_API_V001_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V001.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V001_TOTAL.

*...processing: ZCA_API_V002....................................*
TABLES: ZCA_API_V002, *ZCA_API_V002. "view work areas
CONTROLS: TCTRL_ZCA_API_V002
TYPE TABLEVIEW USING SCREEN '0008'.
DATA: BEGIN OF STATUS_ZCA_API_V002. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZCA_API_V002.
* Table for entries selected to show on screen
DATA: BEGIN OF ZCA_API_V002_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V002.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V002_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZCA_API_V002_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V002.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V002_TOTAL.

*...processing: ZCA_API_V003....................................*
TABLES: ZCA_API_V003, *ZCA_API_V003. "view work areas
CONTROLS: TCTRL_ZCA_API_V003
TYPE TABLEVIEW USING SCREEN '0009'.
DATA: BEGIN OF STATUS_ZCA_API_V003. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZCA_API_V003.
* Table for entries selected to show on screen
DATA: BEGIN OF ZCA_API_V003_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V003.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V003_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZCA_API_V003_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V003.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V003_TOTAL.

*...processing: ZCA_API_V005....................................*
TABLES: ZCA_API_V005, *ZCA_API_V005. "view work areas
CONTROLS: TCTRL_ZCA_API_V005
TYPE TABLEVIEW USING SCREEN '0010'.
DATA: BEGIN OF STATUS_ZCA_API_V005. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZCA_API_V005.
* Table for entries selected to show on screen
DATA: BEGIN OF ZCA_API_V005_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V005.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V005_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZCA_API_V005_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V005.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V005_TOTAL.

*...processing: ZCA_API_V006....................................*
TABLES: ZCA_API_V006, *ZCA_API_V006. "view work areas
CONTROLS: TCTRL_ZCA_API_V006
TYPE TABLEVIEW USING SCREEN '0011'.
DATA: BEGIN OF STATUS_ZCA_API_V006. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZCA_API_V006.
* Table for entries selected to show on screen
DATA: BEGIN OF ZCA_API_V006_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V006.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V006_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZCA_API_V006_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZCA_API_V006.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZCA_API_V006_TOTAL.

*.........table declarations:.................................*
TABLES: *ZCA_API_T001                  .
TABLES: *ZCA_API_T002                  .
TABLES: *ZCA_API_T003                  .
TABLES: *ZCA_API_T004                  .
TABLES: *ZCA_API_T005                  .
TABLES: *ZCA_API_T006                  .
TABLES: ZCA_API_T001                   .
TABLES: ZCA_API_T002                   .
TABLES: ZCA_API_T003                   .
TABLES: ZCA_API_T004                   .
TABLES: ZCA_API_T005                   .
TABLES: ZCA_API_T006                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
