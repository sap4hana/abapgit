REPORT z_fill_vbak_vbap.

DATA:
  ls_vbak      TYPE zvbak,
  ls_vbap      TYPE zvbap,
  lv_vbeln_num TYPE n LENGTH 10,
  lv_vbeln     TYPE zvbak-vbeln,
  lv_posnr     TYPE zvbap-posnr,
  lv_i         TYPE i,
  lv_j         TYPE i.

START-OF-SELECTION.

  DO 100 TIMES.

    lv_i = sy-index.

    " Номер заказа: 0090000001 ... 0090000100
    lv_vbeln_num = 90000000 + lv_i.
    lv_vbeln = lv_vbeln_num.

    CLEAR ls_vbak.

    ls_vbak-mandt = sy-mandt.
    ls_vbak-vbeln = lv_vbeln.
    ls_vbak-erdat = sy-datum.
    ls_vbak-erzet = sy-uzeit.
    ls_vbak-ernam = sy-uname.
    ls_vbak-auart = 'OR'.
    ls_vbak-vkorg = '1000'.
    ls_vbak-vtweg = '10'.
    ls_vbak-spart = '00'.
    ls_vbak-kunnr = '0000000001'.
    ls_vbak-audat = sy-datum.
    ls_vbak-waerk = 'EUR'.

    ls_vbak-bstnk = |TEST-{ lv_vbeln }|.


    INSERT zvbak FROM ls_vbak.

    IF sy-subrc <> 0.
      WRITE: / 'Ошибка INSERT VBAK:',
               lv_vbeln,
               'SY-SUBRC =', sy-subrc.
      ROLLBACK WORK.
      RETURN.
    ENDIF.

    " Три позиции для каждого заказа
    DO 3 TIMES.

      lv_j = sy-index.

      CLEAR ls_vbap.

      lv_posnr = lv_j * 10.

      ls_vbap-mandt = sy-mandt.
      ls_vbap-vbeln = lv_vbeln.
      ls_vbap-posnr = lv_posnr.

      ls_vbap-matnr = '000000000000000001'.
      ls_vbap-arktx = 'Test material'.
      ls_vbap-pstyv = 'TAN'.

      ls_vbap-werks = '1000'.
      ls_vbap-lgort = '0001'.

"     ls_vbap-kwmeng = lv_j * 2.
      ls_vbap-vrkme = 'EA'.
      ls_vbap-meins = 'EA'.

      ls_vbap-netwr = lv_j * 100.
      ls_vbap-waerk = 'EUR'.

      INSERT zvbap FROM ls_vbap.

      IF sy-subrc <> 0.
        WRITE: / 'Ошибка INSERT ZVBAP:',
                 'Заказ =', lv_vbeln,
                 'Позиция =', lv_posnr,
                 'SY-SUBRC =', sy-subrc.
        ROLLBACK WORK.
        RETURN.
      ENDIF.

    ENDDO.

  ENDDO.

  COMMIT WORK AND WAIT.

  WRITE: / 'Заголовков VBAK добавлено:', 100.
  WRITE: / 'Позиций VBAP добавлено:', 300.
  WRITE: / 'Диапазон заказов: 0090000001 - 0090000100'.
