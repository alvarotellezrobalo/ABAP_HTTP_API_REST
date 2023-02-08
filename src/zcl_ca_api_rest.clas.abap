CLASS zcl_ca_api_rest DEFINITION
  PUBLIC
  INHERITING FROM zcl_ca_http_services
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ts_param,
        parameter_name TYPE zca_api_e_parameter_name,
        value          TYPE zca_api_e_param_value,
      END OF ts_param .
    TYPES:
      tt_params TYPE STANDARD TABLE OF ts_param WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ts_header,
        header_name TYPE zca_api_e_header_name,
        value       TYPE zca_api_e_header_value,
      END OF ts_header .
    TYPES:
      tt_header TYPE STANDARD TABLE OF ts_header WITH DEFAULT KEY .

    TYPES: BEGIN OF ts_api_config,
             api_config TYPE zca_api_t001,
             endpoints  TYPE TABLE OF zca_api_t002 WITH DEFAULT KEY,
             services   TYPE TABLE OF zca_api_t003 WITH DEFAULT KEY,
             params     TYPE TABLE OF zca_api_t005 WITH DEFAULT KEY,
             headers    TYPE  TABLE OF zca_api_t006 WITH DEFAULT KEY,
           END OF ts_api_config.

    METHODS call_service
      IMPORTING
        !iv_service_id  TYPE zca_api_e_service_id
        !iv_endpoint_id TYPE zca_api_e_endpoint_id
        !it_params      TYPE tt_params OPTIONAL
        !it_headers     TYPE tt_header OPTIONAL .
    METHODS constructor
      IMPORTING
        !iv_api_id          TYPE zca_api_e_id
        !iv_auto_connection TYPE boolean_flg DEFAULT abap_true .
protected section.

  data MV_API_ID type ZCA_API_E_ID .
  data MS_API_CONFIG type TS_API_CONFIG .

  methods CONNECT .
  methods LOAD_CONFIGURATION .
private section.
ENDCLASS.



CLASS ZCL_CA_API_REST IMPLEMENTATION.


  method CALL_SERVICE.

    "Se comprueba que la api no tenga un servicio de autenticación y en cuyo caso
    "Haya que extraer un token de autenticación para llamar al servicio
*    READ TABLE ms_api_config-services ASSIGNING FIELD-SYMBOL(<fs_api_auth_service>)
*    with key

  endmethod.


  method CONNECT.
  endmethod.


  METHOD constructor.

    super->constructor( ).

    mv_api_id = iv_api_id.

    load_configuration(  ).

    IF iv_auto_connection = abap_true.
      connect(  ).
    ENDIF.

  ENDMETHOD.


  METHOD load_configuration.

    "Configuración general
    SELECT SINGLE *
      FROM zca_api_t001
      INTO @ms_api_config-api_config
      WHERE api_id EQ @mv_api_id.
    IF sy-subrc EQ 0.

      "Endpoints
      SELECT *
        FROM zca_api_t002
        INTO TABLE @ms_api_config-endpoints
        WHERE api_id EQ @mv_api_id.

      "Services
      SELECT *
        FROM zca_api_t003
        INTO TABLE @ms_api_config-services
        WHERE api_id EQ @mv_api_id.

      "params
      SELECT *
        FROM zca_api_t005
        INTO TABLE @ms_api_config-params
        WHERE api_id EQ @mv_api_id.

      "headers
      SELECT *
        FROM zca_api_t006
        INTO TABLE @ms_api_config-headers
        WHERE api_id EQ @mv_api_id.

    ENDIF.

  ENDMETHOD.
ENDCLASS.
