class ZCX_CA_API definition
  public
  inheriting from CX_STATIC_CHECK
  final
  create public .

public section.

  interfaces IF_T100_DYN_MSG .
  interfaces IF_T100_MESSAGE .

  constants:
    begin of ERROR_CONNECTION_API,
      msgid type symsgid value 'ZCA_API_REST',
      msgno type symsgno value '001',
      attr1 type scx_attrname value 'MV_MSGV1',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of ERROR_CONNECTION_API .
  data MV_MSGV1 type STRING .
  data MV_MSGV2 type STRING .
  data MV_MSGV3 type STRING .
  data MV_MSGV4 type STRING .

  methods CONSTRUCTOR
    importing
      !TEXTID like IF_T100_MESSAGE=>T100KEY optional
      !PREVIOUS like PREVIOUS optional
      !MV_MSGV1 type STRING optional
      !MV_MSGV2 type STRING optional
      !MV_MSGV3 type STRING optional
      !MV_MSGV4 type STRING optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_CA_API IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
PREVIOUS = PREVIOUS
.
me->MV_MSGV1 = MV_MSGV1 .
me->MV_MSGV2 = MV_MSGV2 .
me->MV_MSGV3 = MV_MSGV3 .
me->MV_MSGV4 = MV_MSGV4 .
clear me->textid.
if textid is initial.
  IF_T100_MESSAGE~T100KEY = IF_T100_MESSAGE=>DEFAULT_TEXTID.
else.
  IF_T100_MESSAGE~T100KEY = TEXTID.
endif.
  endmethod.
ENDCLASS.
