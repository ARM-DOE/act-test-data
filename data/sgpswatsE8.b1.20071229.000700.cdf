CDF      
      time       depth               ingest_version        #process-ingest-swats_ingest-10.0-0     libingest_version         ds-dsutil-ingest_lib-1.7-0     libdslibc_version         ds-dslib-c_lib-1.2-0       libdsdb_version       database-dsdb-c_lib-1.2-0      ingest_software       V swats_ingest.c,v 8.0 2006/09/04 06:20:21 ermold process-ingest-swats_ingest-10.0-0 $      
proc_level        b1     input_source      2/data/collection/sgp/sgpswatsE8.00/1198886820.icm      site_id       sgp    facility_id       E8: Coldwater, Kansas      
sample_int        1 hour     averaging_int         None       serial_number         2See serial_number data for East and West profiles      comment              resolution_description       The resolution field attributes refer to the number of significant
digits relative to the decimal point that should be used in
calculations.  Using fewer digits might result in greater uncertainty;
using a larger number of digits should have no effect and thus is
unnecessary.  However, analyses based on differences in values with
a larger number of significant digits than indicated could lead to
erroneous results or misleading scientific conclusions.

resolution for lat= 0.001
resolution for lon = 0.001
resolution for alt = 1    profile_distance      11.0 meter between East and West sensor profiles.       ref_therm_location        �The reference thermistor is located inside the electronics enclosure which is
mounted on a concrete pad sitting on the soil surface. That makes it 1.2m south
of the two sensor profiles and 15 cm above the soil surface.     unit_comment      LkPa is kilopascals, m3/m3 is cubic meters of water per cubic meter of soil.    soil_characterization        pWest 5cm    loamy-sand
West 15cm   loamy-sand
West 25cm   loamy-sand
West 35cm   loamy-sand
West 60cm   loamy-sand
West 85cm   loamy-sand
West 125cm  loamy-sand
West 175cm  loamy-sand
East 5cm    loamy-sand
East 15cm   loamy-sand
East 25cm   loamy-sand
East 35cm   loamy-sand
East 60cm   loamy-sand
East 85cm   loamy-sand
East 125cm  loamy-sand
East 175cm  loamy-sand    calib_description        MCalibration/Calculation Technique for determining Soil Water Potential and
Volumetric Water Content from the measured SWATS temperature rise values.

  Adjustment of individual sensor responses to the "reference" sensor response
  to remove sensor-to-sensor variability. Coefficients m and b are unique for
  each individual sensor.

      dTref = m * dTsensor + b

    where:

      dTref    = "reference" sensor response (C)
      dTsensor = individual sensor response  (C)
      m        = slope
      b        = intercept

    Note: The dTsensor value is input from the 'trise' fields as reported by
    the instrument. However, the dTref value calculated here is NOT the value
    stored in the 'tref' field. This dTref value is only used in the
    following calculation.

  Second generation calibration used to calculate the soil water potential.

      psi = -c * exp(a * dTref)

    where:

      psi = soil water potential (kPa)
      a   = 1.788
      c   = 0.717

    Note: The value stored in the 'soilwatpot' field is psi.

  Second generation calibration for estimating the water content as a function
  of potential. Coefficients tr, ts, alpha, and n are unique for each different
  soil layer at each site.

      theta = tr + (ts - tr)/(1 + (alpha * (-psi/100))^n)^(1 - 1/n)

    where:

      theta = volumetric soil water content (m^3/m^3)
      tr    = residual water content (m^3/m^3)
      ts    = saturated water content (m^3/m^3)
      alpha = empirical constant
      n     = empirical constant
      psi   = potential (kPa)

    Note: The value stored in the 'watcont' field is theta.       calib_coeficients        loc	   m	   b	   tr	   ts	 alpha	   n
w5	 1.159	-0.649	 0.101	 0.426	 60.024	 1.788
w15	 1.080	-0.294	 0.101	 0.426	 60.024	 1.788
w25	 1.057	-0.185	 0.101	 0.426	 60.024	 1.788
w35	 1.061	-0.520	 0.101	 0.426	 60.024	 1.788
w60	 1.118	-0.566	 0.096	 0.370	 52.354	 1.899
w85	 0.965	-0.242	 0.096	 0.370	 52.354	 1.899
w125	 1.068	-0.436	 0.096	 0.370	 52.354	 1.899
w175	 1.093	 0.024	 0.096	 0.370	 52.354	 1.899
e5	 1.100	-0.556	 0.101	 0.426	 60.024	 1.788
e15	 1.066	-0.305	 0.101	 0.426	 60.024	 1.788
e25	 1.141	-0.321	 0.101	 0.426	 60.024	 1.788
e35	 1.054	-0.265	 0.101	 0.426	 60.024	 1.788
e60	 0.996	-0.274	 0.096	 0.370	 52.354	 1.899
e85	 1.066	-0.667	 0.096	 0.370	 52.354	 1.899
e125	 1.131	-0.125	 0.096	 0.370	 52.354	 1.899
e175	 1.057	-0.513	 0.096	 0.370	 52.354	 1.899
       	qc_method         Standard Mentor QC     Mentor_QC_Field_Information      For each qc_<field> interpret the values as follows:

Basic mentor QC checks (bit values):
==========================================
0x0 = value is within the specified range
0x1 = value is equal to 'missing_value'
0x2 = value is less than the 'valid_min'
0x4 = value is greater than the 'valid_max'
0x8 = value failed the 'valid_delta' check

If the value is a 'missing_value' no min, max, or delta checks are performed.

The delta checks are done by comparing each data value to the one just
prior to it in time. If a previous data value does not exist or is a
'missing_value' the delta check will not be performed.

Note that the delta computation for multi-dimensioned data compares the
absolute value between points in the same spatial location to the previous
point in time.

If the associated non-QC field does not contain any mentor-specified minimum,
maximum, or delta information a qc_field is not generated.

SWATS QC checks (bit values) :
==========================================
0x10 = value unusable as another field it depends on failed     zeb_platform      sgpswatsE8.b1      history       ecreated by user dsmgr on machine ruby at 29-Dec-2007,6:18:09, using $State: ds-zebra-zeblib-4.16-0 $             	base_time                string        29-Dec-2007,0:07:00 GMT    	long_name         Base time in Epoch     units         $seconds since 1970-1-1 0:00:00 0:00         0l   time_offset                 	long_name         Time offset from base_time     units         'seconds since 2007-12-29 00:07:00 0:00          0�   time                	long_name         Time offset from midnight      units         'seconds since 2007-12-29 00:00:00 0:00          0�   qc_time                 	long_name         )Results of quality checks on sample time       units         	unitless       description      �The qc_time values are calculated by comparing each sample
time with the previous time (i.e. delta_t = t[n] - t[n-1]).
If the 'qc_check_prior' flag is set the first sample time
from a new raw file will be compared against the time just
previous to it in the stored data. If the 'qc_check_prior'
flag is not set the qc_time value for the first sample time
will be set to 0

The qc_time bit values are as follows:
=========================================================
0x0 = delta time is within the specified range
0x1 = delta time is equal to 0, duplicate sample times
0x2 = delta time is less than the 'delta_t_lower_limit'
0x4 = delta time is greater than the 'delta_t_upper_limit'

       delta_t_lower_limit            delta_t_upper_limit            prior_sample_flag                    0�   depth                  	long_name         Sensor Depth below surface     units         cm     
resolution              accuracy      1 cm             0p   tref                	long_name         !Reference Thermistor Temperature       units         C      	valid_min         ��     	valid_max         BH     valid_delta       A�     
resolution        =���   missing_value         �<    accuracy      0.2 C           0�   qc_tref                 	long_name         AQuality check results on field: Reference Thermistor Temperature       units         	unitless            0�   tsoil_W                    	long_name         Soil Temperature, West Profile     units         C      	valid_min         ��     	valid_max         BH     valid_delta       A�     
resolution        =���   missing_value         �<    accuracy      0.5 C            0�   
qc_tsoil_W                     	long_name         ?Quality check results on field: Soil Temperature, West Profile     units         	unitless             1   trise_W                    	long_name         &Sensor Temperature Rise, West Profile      units         C      	valid_min         ?�     	valid_max         @�     valid_delta       @`     
resolution        <#�
   missing_value         �<    accuracy      0.04 C           18   
qc_trise_W                     	long_name         FQuality check results on field: Sensor Temperature Rise, West Profile      units         	unitless             1X   soilwatpot_W                   	long_name         #Soil Water Potential, West Profile     units         kPa    	valid_min         ���    	valid_max                valid_delta       E��    missing_value         �<          1x   qc_soilwatpot_W                    	long_name         CQuality check results on field: Soil Water Potential, West Profile     units         	unitless             1�   	watcont_W                      	long_name         'Volumetric Water Content, West Profile     units         m^3/m^3    	valid_min                	valid_max         ?��   valid_delta       ?��   missing_value         �<          1�   qc_watcont_W                   	long_name         GQuality check results on field: Volumetric Water Content, West Profile     units         	unitless             1�   tsoil_E                    	long_name         Soil Temperature, East Profile     units         C      	valid_min         ��     	valid_max         BH     valid_delta       A�     
resolution        =���   missing_value         �<    accuracy      0.5 C            1�   
qc_tsoil_E                     	long_name         ?Quality check results on field: Soil Temperature, East Profile     units         	unitless             2   trise_E                    	long_name         &Sensor Temperature Rise, East Profile      units         C      	valid_min         ?�     	valid_max         @�     valid_delta       @`     
resolution        <#�
   missing_value         �<    accuracy      0.04 C           28   
qc_trise_E                     	long_name         FQuality check results on field: Sensor Temperature Rise, East Profile      units         	unitless             2X   soilwatpot_E                   	long_name         #Soil Water Potential, East Profile     units         kPa    	valid_min         ���    	valid_max                valid_delta       E��    missing_value         �<          2x   qc_soilwatpot_E                    	long_name         CQuality check results on field: Soil Water Potential, East Profile     units         	unitless             2�   	watcont_E                      	long_name         'Volumetric Water Content, East Profile     units         m^3/m^3    	valid_min                	valid_max         ?��   valid_delta       ?��   missing_value         �<          2�   qc_watcont_E                   	long_name         GQuality check results on field: Volumetric Water Content, East Profile     units         	unitless             2�   serial_numbers_W               	long_name         #West profile sensor serial numbers     units         	unitless       missing_value         ����         0�   serial_numbers_E               	long_name         #East profile sensor serial numbers     units         	unitless       missing_value         ����         0�   lat              	long_name         north latitude     units         degrees    	valid_min         ´     	valid_max         B�          0�   lon              	long_name         east longitude     units         degrees    	valid_min         �4     	valid_max         C4          0�   alt              	long_name         	altitude       units         meters above Mean Sea Level         0�Gu��            #   <   U   }   �  4  6  5  .  1  2  =  A    8  0      9  :  ;BT��ƞ5D&          @z@         �n=q    ?Z~�?�b�@!-@Du�@�@��&A��A&�j                                ?��<Q�&?��?]�k?�;?�6�?��?��                              �5"U��ql��z��G���u��-�@q�JP                              >/�)>��>>O >�];>+�J>'�h>&+\> �                              @S&@
=@?�k@fi�@�:*@��sA4A'�7                                ?�e,?ȣ�?�q�?��?�kQ?��,?���?�F�                                �-J`����RE�ߝ���z��.�$�.�k�                                >2g>C�P>=�M>=�h>30>%�>>�>+�Z                                @�      @�h         ����    ?s~�?���@'�@Jn�@�U�@��AϫA'�
                                ?�)_<э&?�6z?f[�?��f?��}?�`B?�33                              �8=��`�%�Ǫ��wC��y�#zF                              >.��>Ӟ�><H�>�oN>+��>&>h>&�L>A;                              @�#@!J�@D��@mY�@�e�@�7AS&A(�y                                ?���?ɰ�?�~�?�q?́o?�Mj?�D�?�M                                �1�� ���8��S�����]�(��l                                >1Z>Bs><�>=D�>1�>%$�>��>*�%                                @�      @��         �C-    ?g��?�$�@e�@A��@���@��6A �>A&j                                ?���<��q?�)�?^Б?��?٦�?�V�?�9�                              �1�Ӿ�G��⨿��e�T��0�҃�#��                              >0�">���>=G]>���>,�>'�^>'��>;�                              @dZ@֡@?K�@g��@���@�"�A{JA'K�                                ?�ی?ȧ?Å?��A?�{J?��^?�H�?��m                                �+�k��X��q�خ��s"�qM�&���                                >2�>C��><��>=��>2�>&>s�>+0�                                @�     @��         �"n�    ?Y �?��
@��@;1�@�:�@�2aA �OA%X                                ?��<��q?���?]�u?�Ta?أ�?�6�?���                              �5+��G���G��_F��S�
:�m���D                              >/�9>���>=�k>�W�>.V�>(�i>)x{> ��                              @(�@��@;W?@a�@�Y@�;A ��A&�R                                ?��`?ȭ�?�xl?��N?�a�?�=�?���?���                                �+�f� 9�a?�j����hK�!�w�n6                                >2�b>CzF>=�>?�:>4 !>&�@>�>,;�                                @�      @��         �)    ?S�?�<�@M�@:^5@���@��9A �A%��                                ?��<��j?�#�?]�?��?�7?�g8?�                              �2	��H�����h_�����		����Z(                              >0�F>���>>Ba>�Ud>-�	>)3�>'�D> �                              @�?@��@=�@`��@�IR@��A ��A&��                                ?�c?Ǡ�?�{�?�x?��?���?�E�?�S�                                �-�<��.�h������hv�Si�#`���                                >2P>D�/>=�>>2�>3x>']�>I�>+�T                                @є     @��         �;K�    ?UEc?��P@��@=c�@��B@��A �KA%�w                                ?��<Q�&?�3�?_�=?�j�?�0�?���?�@O                              �2���ql�����fe� R��_�	���#�                              >0�>>��>=> >���>-A�>(R�>(��>6�                              @�b@PH@=?}@d�4@�B[@��A�~A&�                                ?�o ?ȭ�?�S?�Z�?�u%?��z?�خ?��Q                                �-d�� 9����������O�'}����                                >2^d>CzF>=c>?Es>2��>&s�>��>+<w                                @�     @Ձ         �Oƨ    ?U�?��8@Xy@?��@�V@�dZA ��A%|�                                ?�'<Q�&?�#�?^ߤ?��]?�4?��?�F�                              �3����ql�����|�{����	�[�#�c                              >0Z >��>>Ba>���>,��>(PG>(��>1p                              @�9@xl@>8�@d��@��j@�PHAX�A&bN                                ?�o ?�*�?��?�^5?��?�A ?�X�?�W?                                �-d������7�����,�o?�&-��d                                >2^d>D �>=_�>?BD>1w?>&�f>f>+�R                                @؜     @�         �[&�    ?VP�?�;�@I�@=u�@�7�@�zxA ��A%l�                                ?�'<Q�&?�#�?\�|?��?�4?��Q?���                              �3����ql�������u�������D                              >0Z >��>>Ba>���>,��>(PG>(�> ��                              @��@@@>Z�@`֡@���@DA5�A&v�                                ?��?Ǡ�?��?�{J?�S?�J�?�X�?���                                �, ��.�/��߰���	���&-��w                                >2Ԁ>D�/>>�
>>/f>2vM>&��>f>,/�                                @�      @܉         �i�F    ?K�z?�U2@�T@:�'@�	@��A w2A$�                                ?�0U<��j?���?]ә?�x?��3?�ݘ?�J#                              �5\��H���(��n�� mE�$��Դ�#��                              >/؎>���>=�>�S�>-5>'��>'��>.�                              @w�@zx@>_�@ac@���@�qvA �mA&J                                ?�x�?Ǡ�?��?�d�?�S?�N<?�\)?�]�                                �-~���.�/���v���	���&5���                                >2U�>D�/>>�
>?;�>2vM>&��>cl>+�P                                @ߤ     @��        �_�    ?5i?�S�?��=@'�V@{>�@��H@���A"Z                                ?𠐻��[?��?[ı?�^�?ק�?غ�?��e                              �0����<�
h~���r�����5��p��E�                              >1A�>�8>@F|>�">/M�>)�>>*�>!Rq                              @�"@
�+@5!�@W�$@�L0@��P@��A$=q                                ?���?�$t?�rG?�ѷ?���?�X?�6?�A                                 �)Y.���	a���8����$����                                >3��>E�>?{>@Ŏ>4p>&�j>!�>-��                                @�     @�Ȁ        �L{    ?09?�!�@Y�@.�8@�0U@�y>@��hA#O�                                ?�#�;��x?�:�?\�?�T�?ذ�?�M�?��                              �2M������u�����k��
 ���d��8                              >0�v>��>>,P>���>/W�>(��>)c�> uR                              @e�@o @7�@Z-@���@�%@�GEA%33                                ?��?�!-?�?���?�u�?��)?�B�?��3                                �)P�� ���5������{�u�� ɶ� ��                                >3��>Ec>=��>?�>3�>'Ox> "(>-)                                @�V     @㊀        �S�    ?J��?��@�-@>1�@�zx@�`BA �A%�                                ?�n<�j?��
?b"�?܄�?�GE?�c�?�C�                              �3�(�ܞ���j���o����S���#�1                              >0W>���>;��>��>,-c>'td>'�&>4                              @�@�@>�@c�@���@�'RA��A'33                                ?��?�:�?Ò:?�t�?�u%?���?�bN?�c�                                �1�"�Q�����������P�(���V                                >0�L>B�><�^>>5�>2��>&p�>��>*�W                                @�     @�L�        �v��    ?Ko~?�� @q�@=ϫ@� �@�)�A OA%                                ?�!<��j?���?a}?܁o?�C�?�`�?�0U                              �6�ž�H���G���O������.� �                              >/f�>���>=�k>�A�>,0�>'v�>'�> t                              @�D@Z@:��@b�H@��@���AMA&�+                                ?���?Ȱ�?�S?��?ˈf?�*�?�RT?�Mj                                �,�����������%A�&��xO                                >2ќ>Cv�>=c>>�\>1��>'ܡ>k}>+�V                                @��     @��        ��Q�    ?*j�?���@ ی@.��@}A @�8@��5A"�!                                ?��    ?�$?[��?���?ד�?�g�?�C�                              �-�T��7��z������� ���
�v�!)z                              >2C�>�"�>?9�>�_>-�>)�I>(gv> y                              ?���@��@5�@W�@���@��o@�u%A$^5                                ?��+?�{?�rG?���?�u?�D�?��2?�~�                                �)�����m��ڱ�靱�\�%���                                >3�\>F*l>?{>>�>3h�>'Ń>�|>+�K                                @�     @�Ѐ        �|A�    ?w�?�~�?��]@+H�@{dZ@��@��A"                                  ?�����[?�$?Y�?�ѷ?ק�?��N?��                              �/CZ��<��z�����q6�5�����=�                              >1�I>�8>?9�>��<>/ܞ>)�>>)�K>!U'                              ?�5?@�P@2��@Vn�@��'@��v@���A#33                                ?��r?ơb?�_?�[W?ʕ�?��w?�O�?��N                                �)�_� 	?�
�}�
y0��~��DO� �� �|                                >3�p>E�:>@'K>@>v>2�M>(<@> >-�                                @�^     @ꒀ        �J�    >J��?Y�k?��	@�I@_��@�Xy@�1A��                                ?�O�^J?��?R4�?�|�?���?�8�?�                              �)�����R������*'��u� ���ύ                              >3�>��L>CO�>�9>03j>,�|>-'>$c                              ?�#:?�o@(�)@H"h@��3@���@�xA!t�                                ?�j?��?�\)?��m?�l�?��4?��a?���                                �#*��Bv�q��M��\�����B���e                                >5�>H[�>A:�>BΨ>5�>+
f>!h>/                                @�      @�T�        ���u    >z�O?a��?�C�@qv@b�@��@��A,=                                ?퇔����?�V?W�?�r�?���?���?�j�                              �(.����`�\���������I���)�                              >4 �>Ա	>BD�>�],>0=r>,��>+��>%�(                              ?��?�l�@)�@H�@�_p@�{J@���A!
=                                ?��?Ş�?�B[?ƾ�?�b�?�!�?��!?�4�                                �';��>��w�@6��=�����b+���_                                >4�v>F�A>Bj/>B�=>5�>*�x>"U�>/��                                @��     @��        ��4n    >�k�?�Dg?�+k@��@o�}@���@�
=A ��                                ?� Ż��[?��U?Z�N?��Z?֍�?�qv?�s�                              �/h���<�狿�,��ݪ�4C�
�����                              >1�F>�8>>�*>�Y�>.��>*xl>(^�>$�                              ?��Z@ ��@1�C@U:�@�7@��@�	lA$��                                ?��?�A�?��`?�n�?�[�?��[?�,=?�7L                                �,yu�,X�ӧ�����Os�)"�=����                                >2�>C��>?�m>?2d>4�r>(G�>!P>-��                                @�     @�؀        ><л    ?�Y?�T�?��o@*�@yA @��@�B�A"�                                ?�ff���[?��?Y�7?�kQ?��?�:�?��D                              �*����<�
Ti���#����"3�o����                              >3O�>�8>@P#>��'>.?�>*�>*]F>#�q                              ?�#�@�@2kQ@[C@�)�@�|�@�eA$��                                ?�?���?A?�x?�S?���?�҉?�͟                                �0�;�3��w�������	�Si�$����&                                >1A>C_�>=�V>>2�>2vM>']�>Ը>,2�                                @�     @��@        ?�*0    ?��?�`�?��@&;�@v��@��>@�v`A!S�                                ?�����j?��?Y��?�q�?�'R?ط�?�
=                              �,!���x��
h~�������]�	!M�j�j�                              >2�I>�L�>@F|>��>.9D>))>>*�>"�e                              ?�N�@�n@/��@VO@�+k@��j@�� A$��                                ?��+?ƞ?�?��j?ʂA?�4n?��?�C�                                �)��� �5��k��>��9��$���y                                >3�\>E��>=��>?�v>2�>'��>�N>,�/                                @�     @�@        ?��K    ?R~?��Y?��_@)�@z��@��[@�ZA"V                                ?�c ��j?���?Z�?�{J?ד�?�a?��                              �*����x��	C���� s����
�����                              >3R�>�L�>@�z>�bz>-1�>)�I>(mL>#�                              ?��@��@-��@V\�@���@�c�@���A$A�                                ?�ߤ?ƚ�?�?��j?��Z?�4n?�L0?�GE                                �&�d���������k��s�9��#q~�F                                >4��>E�>=�>?�v>3t�>'��>D>,�$                                @�u     @�@        ?��    ?2��?���?��=@,@}ϫ@��s@��zA"�                                ?�YK���x?��P?[��?�J�?�4?���?��	                              �*m���=�gݿ�y��E����	����T                              >3[�>�8>?�|>�	�>/a�>(PG>(�>"B�                              ?���@�{@/Z�@W�@��@��h@�h
A$�y                                ?�u�?Ǯ?�(?��?��?���?��H?�@�                                �*������S��U��hv���"?�r�                                >39�>D��>=X�>>��>3x>(P�>��>,�9                                @�V     @�p@        ?���    ?C�?���@l�@5�@���@���@�Y�A$Q�                                ?��    ?�#�?]ͳ?��]?�GE?��?�                              �0w;��7����f��{��S�����                              >1_d>�"�>>Ba>�U�>,��>'td>'b>!�*                              ?��	@�D@1�@ZE�@�	l@�qv@�l�A%��                                ?�r�?�N<?�(?�x?�xl?�=�?�h�?�=q                                �*�d�=N��S�����W�hK�(�,�l|                                >3<�>Bֺ>=X�>>2�>2��>&�@>�h>,�D                                @�7     @�Q@        ��}V    ?_�1?�h�@�{@F�F@��@��Ar�A&n�                                ?�֡<э&?�S�?d8	?ݑh?�S�?��v?��'                              �=N���`��o�Ć^���� �����J                              >-��>Ӟ�>;=`>�+�>+(�>&�>'�> �                              @�z@W�@9�t@d��@�y�@Ů�A�@A'X                                ?���?�dZ?�2a?�$�?��?�Z�?�a�?�Z                                �6X��	q���h������8��
�+�,���                                >/��>@��>;,>;�N>0��>%�>��>*�@                                