FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 h b Applescript to save all excel files to csv and filter out all fluf that isn't used for the import    
 �   �   A p p l e s c r i p t   t o   s a v e   a l l   e x c e l   f i l e s   t o   c s v   a n d   f i l t e r   o u t   a l l   f l u f   t h a t   i s n ' t   u s e d   f o r   t h e   i m p o r t      l     ��  ��      Written by Peter Kester     �   0   W r i t t e n   b y   P e t e r   K e s t e r      l     ��  ��      Date 8 Sept 2014     �   "   D a t e   8   S e p t   2 0 1 4      l     ��������  ��  ��        l    	 ����  r     	    I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �     ( S p e c i f y   i n p u t   f o l d e r��    o      ����  0 inputdirectory inputDirectory��  ��     ! " ! l  
  #���� # r   
  $ % $ J   
  & &  ' ( ' m   
  ) ) � * *  x l s (  +�� + m     , , � - -  x l s x��   % o      ���� 0 ext_list  ��  ��   "  . / . l     ��������  ��  ��   /  0 1 0 l    2���� 2 r     3 4 3 l    5���� 5 c     6 7 6 l    8���� 8 I   ���� 9
�� .sysostflalis    ��� null��   9 �� :��
�� 
prmp : m     ; ; � < < * S p e c i f y   o u t p u t   f o l d e r��  ��  ��   7 m    ��
�� 
ctxt��  ��   4 o      ���� "0 outputdirectory outputDirectory��  ��   1  = > = l     �� ? @��   ? @ : make sure the outputDirectory exists and if not create it    @ � A A t   m a k e   s u r e   t h e   o u t p u t D i r e c t o r y   e x i s t s   a n d   i f   n o t   c r e a t e   i t >  B C B l   4 D���� D Z   4 E F���� E D      G H G o    ���� "0 outputdirectory outputDirectory H m     I I � J J  : F r   # 0 K L K n   # . M N M 7  $ .�� O P
�� 
ctxt O m   ( *����  P m   + -������ N o   # $���� "0 outputdirectory outputDirectory L o      ���� "0 outputdirectory outputDirectory��  ��  ��  ��   C  Q R Q l  5 @ S���� S I  5 @�� T��
�� .sysoexecTEXT���     TEXT T b   5 < U V U m   5 6 W W � X X  m k d i r   - p   V n   6 ; Y Z Y 1   9 ;��
�� 
strq Z n   6 9 [ \ [ 1   7 9��
�� 
psxp \ o   6 7���� "0 outputdirectory outputDirectory��  ��  ��   R  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l  A P a���� a r   A P b c b l  A L d���� d c   A L e f e l  A J g���� g I  A J���� h
�� .sysostflalis    ��� null��   h �� i��
�� 
prmp i m   C F j j � k k < S p e c i f y   o v e r v i e w   o u t p u t   f o l d e r��  ��  ��   f m   J K��
�� 
ctxt��  ��   c o      ���� 0 txtdirectory txtDirectory��  ��   `  l m l l  Q \ n���� n r   Q \ o p o b   Q X q r q o   Q T���� 0 txtdirectory txtDirectory r m   T W s s � t t " f i l e - o v e r v i e w . t x t p o      ���� 0 txtfile txtFile��  ��   m  u v u l  ] h w���� w r   ] h x y x b   ] d z { z o   ] `���� 0 txtdirectory txtDirectory { m   ` c | | � } } $ e r r o r - o v e r v i e w . t x t y o      ���� 0 errfile errFile��  ��   v  ~  ~ l  i n ����� � r   i n � � � m   i j��
�� boovfals � o      ���� &0 deleteoriginalcsv deleteOriginalCSV��  ��     � � � l     ��������  ��  ��   �  � � � l  o � ����� � O   o � � � � r   u � � � � c   u � � � � l  u � ����� � 6  u � � � � n   u ~ � � � 2  z ~��
�� 
file � n   u z � � � 1   v z��
�� 
ects � o   u v����  0 inputdirectory inputDirectory � E  � � � � � o   � ����� 0 ext_list   � 1   � ���
�� 
nmxt��  ��   � m   � ���
�� 
alst � o      ���� 0 
excelfiles 
excelFiles � m   o r � ��                                                                                  MACS  alis    r  MacintoshHD                ϵ�H+   ���
Finder.app                                                      �[�v:�        ����  	                CoreServices    ϴ��      �v,�     ��� ��� ���  5MacintoshHD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � J   � �����   � o      ���� 0 filelist fileList��  ��   �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysontocTEXT       shor � m   � ����� ��  ��  ��   � o      ���� 0 newline NEWLINE��  ��   �  � � � l  � � ����� � r   � � � � � J   � �����   � o      ���� 0 
errmessage 
errMessage��  ��   �  � � � l  �� � � � � X   �� ��� � � k   �� � �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ' ! save all worksheets as csv files    � � � � B   s a v e   a l l   w o r k s h e e t s   a s   c s v   f i l e s �  � � � r   � � � � � J   � �����   � o      ���� 0 csvpaths csvPaths �  � � � l  � ���������  ��  ��   �  � � � O   �� � � � k   �� � �  � � � I  � ��� ���
�� .aevtodocnull  �    alis � o   � ����� 0 afile aFile��   �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
XwSH � 1   � ��
� 
1172 � o      �~�~ 0 	allsheets 	allSheets �  � � � r   � � � � � n   � � � � � 1   � ��}
�} 
pnam � 1   � ��|
�| 
1172 � o      �{�{ 0 workbookname workbookName �  � � � Z  � � ��z�y � D   � � � � � o   � ��x�x 0 workbookname workbookName � m   � � � � � � �  . x l s � r   � � � � n   � � � � 7 �w � �
�w 
ctxt � m  �v�v  � m  �u�u�� � o   ��t�t 0 workbookname workbookName � o      �s�s 0 workbookname workbookName�z  �y   �  � � � Z 7 � ��r�q � D   � � � o  �p�p 0 workbookname workbookName � m   � � � � � 
 . x l s x � r   3 � � � n   / � � � 7 #/�o � �
�o 
ctxt � m  ')�n�n  � m  *.�m�m�� � o   #�l�l 0 workbookname workbookName � o      �k�k 0 workbookname workbookName�r  �q   �  � � � X  8� ��j � � k  N� � �  � � � l NN�i � ��i   �    skip the Notice worksheet    � � � � 4   s k i p   t h e   N o t i c e   w o r k s h e e t �  � � � r  Ni � � � b  Ne � � � b  Na   b  N[ b  NW b  NS o  NO�h�h "0 outputdirectory outputDirectory m  OR �		  : o  SV�g�g 0 workbookname workbookName m  WZ

 �  . n  [` 1  \`�f
�f 
pnam o  [\�e�e 0 asheet aSheet � m  ad �  . c s v � o      �d�d 0 thispath thisPath � �c Z  j��b�a H  jt C  js n  jo 1  ko�`
�` 
pnam o  jk�_�_ 0 asheet aSheet m  or �  N o t i c e k  w�  r  w� b  w�  b  w�!"! b  w~#$# o  wz�^�^ 0 workbookname workbookName$ m  z}%% �&&  ." n  ~�'(' 1  ��]
�] 
pnam( o  ~�\�\ 0 asheet aSheet  m  ��)) �**  . u t f 8 . c s v n      +,+  ;  ��, o  ���[�[ 0 filelist fileList -.- r  ��/0/ o  ���Z�Z 0 thispath thisPath0 n      121  ;  ��2 o  ���Y�Y 0 csvpaths csvPaths. 343 O  ��565 Z  ��78�X�W7 I ���V9�U
�V .coredoexbool        obj 9 4  ���T:
�T 
file: o  ���S�S 0 thispath thisPath�U  8 l ��;<=; I ���R>�Q
�R .coredeloobj        obj > 4  ���P?
�P 
file? o  ���O�O 0 thispath thisPath�Q  <   moves it to the trash   = �@@ ,   m o v e s   i t   t o   t h e   t r a s h�X  �W  6 m  ��AA�                                                                                  MACS  alis    r  MacintoshHD                ϵ�H+   ���
Finder.app                                                      �[�v:�        ����  	                CoreServices    ϴ��      �v,�     ��� ��� ���  5MacintoshHD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h H D  &System/Library/CoreServices/Finder.app  / ��  4 B�NB I ���MCD
�M .coresavenull���    obj C o  ���L�L 0 asheet aSheetD �KEF
�K 
kfilE o  ���J�J 0 thispath thisPathF �IG�H
�I 
fltpG m  ���G
�G e188� �H  �N  �b  �a  �c  �j 0 asheet aSheet � o  ;>�F�F 0 	allsheets 	allSheets � H�EH I ���DIJ
�D .coreclosnull���    obj I 1  ���C
�C 
1172J �BK�A
�B 
savoK m  ���@
�@ boovfals�A  �E   � m   � �LL                                                                                  XCEL  alis    �  MacintoshHD                ϵ�H+    ��Microsoft Excel.app                                              �CȚ�U        ����  	                Microsoft Office 2011     ϴ��      Ț�5      �� ��   DMacintoshHD:Applications: Microsoft Office 2011: Microsoft Excel.app  (  M i c r o s o f t   E x c e l . a p p    M a c i n t o s h H D  6Applications/Microsoft Office 2011/Microsoft Excel.app  / ��   � MNM l ���?�>�=�?  �>  �=  N OPO l ���<QR�<  Q ' ! convert csv files to UTF8 format   R �SS B   c o n v e r t   c s v   f i l e s   t o   U T F 8   f o r m a tP T�;T X  ��U�:VU k   �WW XYX Q   uZ[�9Z k  l\\ ]^] r  _`_ b  aba n  cdc 7 �8ef
�8 
ctxte m  
�7�7 f m  �6�6��d o  �5�5 0 csvpath csvPathb m  gg �hh  u t f 8 . c s v` o      �4�4 0 utf8path utf8Path^ iji O  ?klk Z  >mn�3�2m I +�1o�0
�1 .coredoexbool        obj o 4  '�/p
�/ 
filep o  #&�.�. 0 utf8path utf8Path�0  n l .:qrsq I .:�-t�,
�- .coredeloobj        obj t 4  .6�+u
�+ 
fileu o  25�*�* 0 utf8path utf8Path�,  r   moves it to the trash   s �vv ,   m o v e s   i t   t o   t h e   t r a s h�3  �2  l m  ww�                                                                                  MACS  alis    r  MacintoshHD                ϵ�H+   ���
Finder.app                                                      �[�v:�        ����  	                CoreServices    ϴ��      �v,�     ��� ��� ���  5MacintoshHD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h H D  &System/Library/CoreServices/Finder.app  / ��  j xyx r  @Nz{z I @J�)|�(
�) .rdwrread****        ****| 4  @F�'}
�' 
file} o  DE�&�& 0 csvpath csvPath�(  { o      �%�% 0 csvtext csvTexty ~~ r  O_��� I  O[�$��#�$ 0 cleanup  � ��� o  PQ�"�" 0 csvpath csvPath� ��� o  QT�!�! 0 csvtext csvText� �� � o  TW�� 0 
errmessage 
errMessage�   �#  � o      �� 0 
resulttext 
resultText ��� I  `l���� 0 writeto_utf8 writeTo_UTF8� ��� o  ad�� 0 utf8path utf8Path� ��� o  dg�� 0 
resulttext 
resultText� ��� m  gh�
� boovtrue�  �  �  [ R      ���
� .ascrerr ****      � ****�  �  �9  Y ��� Z  v������ o  vy�� &0 deleteoriginalcsv deleteOriginalCSV� O |���� I �����
� .coredeloobj        obj � 4  ����
� 
file� o  ���� 0 csvpath csvPath�  � m  |���                                                                                  MACS  alis    r  MacintoshHD                ϵ�H+   ���
Finder.app                                                      �[�v:�        ����  	                CoreServices    ϴ��      �v,�     ��� ��� ���  5MacintoshHD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h H D  &System/Library/CoreServices/Finder.app  / ��  �  �  �  �: 0 csvpath csvPathV o  ���� 0 csvpaths csvPaths�;  �� 0 afile aFile � o   � ��
�
 0 
excelfiles 
excelFiles �   excelFiles --    � ���    e x c e l F i l e s   - - � ��� l     �	���	  �  �  � ��� l ������ r  ����� o  ���� 0 txtfile txtFile� o      �� 0 thefile theFile�  �  � ��� l ������ r  ����� I ��� ��
�  .rdwropenshor       file� 4  �����
�� 
file� o  ������ 0 thefile theFile� �����
�� 
perm� m  ����
�� boovtrue��  � o      ���� 0 referencenr referenceNr�  �  � ��� l ������� Q  ����� k  ��� ��� I ������
�� .rdwrseofnull���     ****� o  ������ 0 referencenr referenceNr� �����
�� 
set2� m  ������  ��  � ��� X  � ����� I ������
�� .rdwrwritnull���     ****� l �������� b  ����� o  ������ 0 afile aFile� o  ������ 0 newline NEWLINE��  ��  � ����
�� 
as  � m  ����
�� 
utf8� ����
�� 
refn� o  ������ 0 referencenr referenceNr� �����
�� 
wrat� m  ����
�� rdwreof ��  �� 0 afile aFile� o  ������ 0 filelist fileList� ���� l ��������  ��  ��  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 theerror theError��  � I 
�����
�� .rdwrclosnull���     ****� o  
���� 0 referencenr referenceNr��  ��  ��  � ��� l ������ I �����
�� .rdwrclosnull���     ****� o  ���� 0 referencenr referenceNr��  ��  ��  � ��� l     ��������  ��  ��  � ��� l !������ r  !��� o  ���� 0 errfile errFile� o      ���� 0 
theerrfile 
theErrFile��  ��  � ��� l "6������ r  "6��� I "2����
�� .rdwropenshor       file� 4  "*���
�� 
file� o  &)���� 0 
theerrfile 
theErrFile� �����
�� 
perm� m  -.��
�� boovtrue��  � o      ���� 0 errrefnr errRefNr��  ��  � ��� l 7������� Q  7����� k  :��� ��� I :E����
�� .rdwrseofnull���     ****� o  :=���� 0 errrefnr errRefNr� �����
�� 
set2� m  @A����  ��  � ��� I Fc����
�� .rdwrwritnull���     ****� b  FK��� m  FI�� ��� " S t a r t   p r o c e s s i n g  � o  IJ����  0 inputdirectory inputDirectory� ����
�� 
as  � m  NQ��
�� 
utf8� ����
�� 
refn� o  TW���� 0 errrefnr errRefNr� �����
�� 
wrat� m  Z]��
�� rdwreof ��  � ���� X  d������ I z�����
�� .rdwrwritnull���     ****� o  z{���� 0 theerr theErr� ����
�� 
as  � m  ~���
�� 
utf8� ����
�� 
refn� o  ������ 0 errrefnr errRefNr� �����
�� 
wrat� m  ����
�� rdwreof ��  �� 0 theerr theErr� o  gj���� 0 
errmessage 
errMessage��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 theerror theError��  � I �������
�� .rdwrclosnull���     ****� o  ������ 0 errrefnr errRefNr��  ��  ��  � ��� l �� ����  I ������
�� .rdwrclosnull���     **** o  ������ 0 errrefnr errRefNr��  ��  ��  �  l ������ m  �� � 
 R e a d y��  ��    l     ��������  ��  ��   	
	 l     ����    set theCsvFiles to {}    � * s e t   t h e C s v F i l e s   t o   { }
  l     ����   &  repeat with utf8File in fileList    � @ r e p e a t   w i t h   u t f 8 F i l e   i n   f i l e L i s t  l     ����   Y S	set thisFilename to {class:XML element, XML tag:"filename", XML contents:utf8File}    � � 	 s e t   t h i s F i l e n a m e   t o   { c l a s s : X M L   e l e m e n t ,   X M L   t a g : " f i l e n a m e " ,   X M L   c o n t e n t s : u t f 8 F i l e }  l     ����   V P	set thisStart to {class:XML element, XML tag:"start-date", XML contents:"past"}    � � 	 s e t   t h i s S t a r t   t o   { c l a s s : X M L   e l e m e n t ,   X M L   t a g : " s t a r t - d a t e " ,   X M L   c o n t e n t s : " p a s t " }  l     �� ��   U O	set thisEnd to {class:XML element, XML tag:"end-date", XML contents:"present"}     �!! � 	 s e t   t h i s E n d   t o   { c l a s s : X M L   e l e m e n t ,   X M L   t a g : " e n d - d a t e " ,   X M L   c o n t e n t s : " p r e s e n t " } "#" l     ��$%��  $ q k	set thisCsvFile to {class:XML element, XML tag:"csvfile", XML contents:{thisFilename, thisStart, thisEnd}}   % �&& � 	 s e t   t h i s C s v F i l e   t o   { c l a s s : X M L   e l e m e n t ,   X M L   t a g : " c s v f i l e " ,   X M L   c o n t e n t s : { t h i s F i l e n a m e ,   t h i s S t a r t ,   t h i s E n d } }# '(' l     ��)*��  ) , &	set end of theCsvFiles to thisCsvFile   * �++ L 	 s e t   e n d   o f   t h e C s v F i l e s   t o   t h i s C s v F i l e( ,-, l     ��./��  .  
end repeat   / �00  e n d   r e p e a t- 121 l     ��������  ��  ��  2 343 l     ��56��  5 U Oset theXML to {class:XML element, XML tag:"csvfiles", XML contents:theCsvFiles}   6 �77 � s e t   t h e X M L   t o   { c l a s s : X M L   e l e m e n t ,   X M L   t a g : " c s v f i l e s " ,   X M L   c o n t e n t s : t h e C s v F i l e s }4 898 l     ��������  ��  ��  9 :;: l     ��<=��  < + %generate XML theXML saving as xmlFile   = �>> J g e n e r a t e   X M L   t h e X M L   s a v i n g   a s   x m l F i l e; ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C 0 *============= SUBROUTINES ================   D �EE T = = = = = = = = = = = = =   S U B R O U T I N E S   = = = = = = = = = = = = = = = =B FGF i     HIH I      ��J���� 0 writeto_utf8 writeTo_UTF8J KLK o      ���� 0 
targetfile 
targetFileL MNM o      ���� 0 thetext theTextN O��O o      ���� 0 
appendtext 
appendText��  ��  I Q     �PQRP k    rSS TUT r    VWV c    XYX o    �� 0 
targetfile 
targetFileY m    �~
�~ 
ctxtW o      �}�} 0 
targetfile 
targetFileU Z[Z r   	 \]\ I  	 �|^_
�| .rdwropenshor       file^ 4   	 �{`
�{ 
file` o    �z�z 0 
targetfile 
targetFile_ �ya�x
�y 
perma m    �w
�w boovtrue�x  ] o      �v�v 0 openfile openFile[ bcb Z    [de�ufd =   ghg o    �t�t 0 
appendtext 
appendTexth m    �s
�s boovfalse k    -ii jkj I   #�rlm
�r .rdwrseofnull���     ****l o    �q�q 0 openfile openFilem �pn�o
�p 
set2n m    �n�n  �o  k o�mo l  $ -pqrp I  $ -�lst
�l .rdwrwritnull���     ****s m   $ %uu rdat﻿t �kvw
�k 
refnv o   & '�j�j 0 openfile openFilew �ix�h
�i 
wratx m   ( )�g
�g rdwreof �h  q  
 UTF-8 BOM   r �yy    U T F - 8   B O M�m  �u  f k   0 [zz {|{ O  0 ?}~} r   4 >� I  4 <�f��e
�f .coredoexbool        obj � 4   4 8�d�
�d 
file� o   6 7�c�c 0 
targetfile 
targetFile�e  � o      �b�b 0 
fileexists 
fileExists~ m   0 1���                                                                                  MACS  alis    r  MacintoshHD                ϵ�H+   ���
Finder.app                                                      �[�v:�        ����  	                CoreServices    ϴ��      �v,�     ��� ��� ���  5MacintoshHD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h H D  &System/Library/CoreServices/Finder.app  / ��  | ��a� Z   @ [���`�_� =  @ C��� o   @ A�^�^ 0 
fileexists 
fileExists� m   A B�]
�] boovfals� k   F W�� ��� I  F M�\��
�\ .rdwrseofnull���     ****� o   F G�[�[ 0 openfile openFile� �Z��Y
�Z 
set2� m   H I�X�X  �Y  � ��W� l  N W���� I  N W�V��
�V .rdwrwritnull���     ****� m   N O�� rdat﻿� �U��
�U 
refn� o   P Q�T�T 0 openfile openFile� �S��R
�S 
wrat� m   R S�Q
�Q rdwreof �R  �  
 UTF-8 BOM   � ���    U T F - 8   B O M�W  �`  �_  �a  c ��� I  \ i�P��
�P .rdwrwritnull���     ****� o   \ ]�O�O 0 thetext theText� �N��
�N 
as  � m   ^ _�M
�M 
utf8� �L��
�L 
refn� o   ` a�K�K 0 openfile openFile� �J��I
�J 
wrat� m   b c�H
�H rdwreof �I  � ��� I  j o�G��F
�G .rdwrclosnull���     ****� o   j k�E�E 0 openfile openFile�F  � ��D� L   p r�� m   p q�C
�C boovtrue�D  Q R      �B��A
�B .ascrerr ****      � ****� o      �@�@ 0 theerror theError�A  R k   z ��� ��� Q   z ����?� I  } ��>��=
�> .rdwrclosnull���     ****� 4   } ��<�
�< 
file� o    ��;�; 0 
targetfile 
targetFile�=  � R      �:�9�8
�: .ascrerr ****      � ****�9  �8  �?  � ��7� L   � ��� o   � ��6�6 0 theerror theError�7  G ��� l     �5�4�3�5  �4  �3  � ��� i    ��� I      �2��1�2 0 cleanup  � ��� o      �0�0 0 thefilename theFileName� ��� o      �/�/ 0 thetext theText� ��.� o      �-�- 0 theerrmessage theErrMessage�.  �1  � k    �� ��� r     ��� m     �� ���  � o      �,�, 0 newtext newText� ��� Q   ���� k   �� ��� l   �+���+  � W Q here's how you can delete all lines of text from fileText until a specific term.   � ��� �   h e r e ' s   h o w   y o u   c a n   d e l e t e   a l l   l i n e s   o f   t e x t   f r o m   f i l e T e x t   u n t i l   a   s p e c i f i c   t e r m .� ��� l   �*���*  � O I first turn the text into a list so you can repeat over each line of text   � ��� �   f i r s t   t u r n   t h e   t e x t   i n t o   a   l i s t   s o   y o u   c a n   r e p e a t   o v e r   e a c h   l i n e   o f   t e x t� ��� r    ��� n    
��� 2   
�)
�) 
cpar� o    �(�( 0 thetext theText� o      �'�' 0 textlist textList� ��� r    ��� m    �� ���  � o      �&�& 
0 prefix  � ��� r    ��� I    �%��$�% 0 list_position  � ��� m    �� ��� 
 R D O   N� ��� o    �#�# 0 textlist textList� ��� m    �"�" � ��!� m    � 
�  boovtrue�!  �$  � o      �� 0 	linestart 	lineStart� ��� Z    2����� =    ��� o    �� 0 	linestart 	lineStart� m    ��  � r   # .��� I   # ,���� 0 list_position  � ��� m   $ %�� ���  R D   N O .� ��� o   % &�� 0 textlist textList� ��� m   & '�� �  �  m   ' (�
� boovtrue�  �  � o      �� 0 	linestart 	lineStart�  �  �  Z   3 L�� =  3 6 o   3 4�� 0 	linestart 	lineStart m   4 5��   k   9 H 	 r   9 D

 I   9 B��� 0 list_position    m   : ; �  ; ; R D O   N  o   ; <�� 0 textlist textList  m   < =��  � m   = >�

�
 boovtrue�  �   o      �	�	 0 	linestart 	lineStart	 � r   E H m   E F �  ; ; o      �� 
0 prefix  �  �  �    Z   M b�� =  M P  o   M N�� 0 	linestart 	lineStart  m   N O��   r   S ^!"! I   S \�#�� 0 list_position  # $%$ m   T U&& �''  R D O :% ()( o   U V� �  0 textlist textList) *+* m   V W���� + ,��, m   W X��
�� boovtrue��  �  " o      ���� 0 	linestart 	lineStart�  �   -.- r   c p/0/ I   c n��1���� 0 list_position  1 232 b   d g454 o   d e���� 
0 prefix  5 m   e f66 �77 & C E R T A I N   G U I D E L I N E S  3 898 o   g h���� 0 textlist textList9 :;: m   h i���� ; <��< m   i j��
�� boovfals��  ��  0 o      ���� 0 endlocation endLocation. =>= Z   q �?@AB? =  q tCDC o   q r���� 0 endlocation endLocationD m   r s����  @ r   w ~EFE I  w |��G��
�� .corecnte****       ****G o   w x���� 0 textlist textList��  F o      ���� 0 lineend lineEndA HIH A   � �JKJ o   � ����� 0 endlocation endLocationK o   � ����� 0 	linestart 	lineStartI L��L k   � �MM NON r   � �PQP I   � ���R���� 0 list_position  R STS b   � �UVU o   � ����� 
0 prefix  V m   � �WW �XX & C E R T A I N   G U I D E L I N E S  T YZY o   � ����� 0 textlist textListZ [\[ o   � ����� 0 	linestart 	lineStart\ ]��] m   � ���
�� boovfals��  ��  Q o      ���� 0 endlocation endLocationO ^��^ Z   � �_`��a_ =  � �bcb o   � ����� 0 endlocation endLocationc m   � �����  ` r   � �ded I  � ���f��
�� .corecnte****       ****f o   � ����� 0 textlist textList��  e o      ���� 0 lineend lineEnd��  a r   � �ghg \   � �iji o   � ����� 0 endlocation endLocationj m   � ����� h o      ���� 0 lineend lineEnd��  ��  B r   � �klk \   � �mnm o   � ����� 0 endlocation endLocationn m   � ����� l o      ���� 0 lineend lineEnd> opo l  � ���������  ��  ��  p qrq l  � ���st��  s K E now repeat over the list and ignore lines that have the deletePhrase   t �uu �   n o w   r e p e a t   o v e r   t h e   l i s t   a n d   i g n o r e   l i n e s   t h a t   h a v e   t h e   d e l e t e P h r a s er vwv Y   � x��yz��x k   ��{{ |}| r   � �~~ n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 textlist textList o      ���� 0 thisline thisLine} ��� l  � �������  � * $ skip lines between RDO and BARANGAY   � ��� H   s k i p   l i n e s   b e t w e e n   R D O   a n d   B A R A N G A Y� ��� Z   � ������� G   � ���� G   � ���� G   � ���� C   � ���� o   � ����� 0 thisline thisLine� b   � ���� o   � ����� 
0 prefix  � m   � ��� ���  ; ; ; ;� C   � ���� o   � ����� 0 thisline thisLine� b   � ���� o   � ����� 
0 prefix  � m   � ��� ���  ; ;   ; ; ; ;� C   � ���� o   � ����� 0 thisline thisLine� b   � ���� o   � ����� 
0 prefix  � m   � ��� ���  ; ; ;� C   � ���� o   � ����� 0 thisline thisLine� m   � ��� ���  - ; - ; - ; - ;� r   � ���� m   � ��� ���  � o      ���� 0 	thisline1 	thisLine1��  � r   � ���� o   � ����� 0 thisline thisLine� o      ���� 0 	thisline1 	thisLine1� ���� U   ����� k  ��� ��� Z "������� G  ��� C  ��� o  ���� 0 	thisline1 	thisLine1� b  ��� o  ���� 
0 prefix  � m  
�� ��� : C O N D O M I N I U M S   ; V   I   C   I   N   I   T   Y� C  ��� o  ���� 0 	thisline1 	thisLine1� b  ��� o  ���� 
0 prefix  � m  �� ��� , C O N D O M I N I U M S   ; V I C I N I T Y�  S  ��  ��  � ��� Z #@������� G  #8��� C  #*��� o  #$���� 0 	thisline1 	thisLine1� b  $)��� o  $%���� 
0 prefix  � m  %(�� ��� 8 C O N D O M I N I U M S ; V   I   C   I   N   I   T   Y� C  -4��� o  -.���� 0 	thisline1 	thisLine1� b  .3��� o  ./���� 
0 prefix  � m  /2�� ��� * C O N D O M I N I U M S ; V I C I N I T Y�  S  ;<��  ��  � ��� Z A^������� G  AV��� C  AH��� o  AB���� 0 	thisline1 	thisLine1� b  BG��� o  BC���� 
0 prefix  � m  CF�� ��� T C O N D O M I N I U M S   &   T O W N H O U S E S ; V   I   C   I   N   I   T   Y ;� C  KR��� o  KL���� 0 	thisline1 	thisLine1� b  LQ��� o  LM���� 
0 prefix  � m  MP�� ��� F C O N D O M I N I U M S   &   T O W N H O U S E S ; V I C I N I T Y ;�  S  YZ��  ��  � ��� l __��������  ��  ��  � ��� Z  _�������� G  _t��� C  _f��� o  _`���� 0 	thisline1 	thisLine1� b  `e��� o  `a���� 
0 prefix  � m  ad�� ��� ( L I S T   O F   C O N D O M I N I U M S� C  ip��� o  ij���� 0 	thisline1 	thisLine1� b  jo��� o  jk���� 
0 prefix  � m  kn�� ��� 0 L I S T   O F   N E W   C O N D O M I N I U M S� k  w��� ��� r  w�   b  w� b  w| o  wx���� 0 newtext newText m  x{ �  * * * C O N D O * * * o  |��
�� 
ret  o      ���� 0 newtext newText� ��  S  ����  ��  ��  � 	
	 Z  ������ G  �� G  �� C  �� o  ������ 0 	thisline1 	thisLine1 b  �� o  ������ 
0 prefix   m  �� �  C O N D O M I N I U M S ; C  �� o  ������ 0 	thisline1 	thisLine1 b  �� o  ������ 
0 prefix   m  �� �  C O N D O M I N I U M S   ; C  �� o  ������ 0 	thisline1 	thisLine1 b  ��  o  ������ 
0 prefix    m  ��!! �"" " T O W N H O U S E S   ( C C T ) ; k  ��## $%$ r  ��&'& b  ��()( b  ��*+* o  ������ 0 newtext newText+ m  ��,, �--  * * * C O N D O * * *) o  ����
�� 
ret ' o      ���� 0 newtext newText% .��.  S  ����  ��  ��  
 /0/ Z  ��12����1 G  ��343 C  ��565 o  ������ 0 	thisline1 	thisLine16 b  ��787 o  ������ 
0 prefix  8 m  ��99 �:: 4 C O N D O M I N I U M S   &   T O W N H O U S E S ;4 C  ��;<; o  ������ 0 	thisline1 	thisLine1< b  ��=>= o  ������ 
0 prefix  > m  ��?? �@@ 6 C O N D O M I N I U M S   &   T O W N H O U S E S   ;2 k  ��AA BCB r  ��DED b  ��FGF b  ��HIH o  ������ 0 newtext newTextI m  ��JJ �KK  * * * C O N D O * * *G o  ����
�� 
ret E o      ���� 0 newtext newTextC L��L  S  ����  ��  ��  0 MNM Z  �OP����O G  � QRQ C  ��STS o  ������ 0 	thisline1 	thisLine1T b  ��UVU o  ������ 
0 prefix  V m  ��WW �XX 6 C O N D O M I N I U M S   ( C O N T I N U A T I O N )R C  ��YZY o  ������ 0 	thisline1 	thisLine1Z b  ��[\[ o  ������ 
0 prefix  \ m  ��]] �^^ 6 C O N D O M I N I U M S   ( c o n t i n u a t i o n )P k  __ `a` r  bcb b  ded b  fgf o  ���� 0 newtext newTextg m  hh �ii  * * * C O N D O * * *e o  ��
�� 
ret c o      ���� 0 newtext newTexta j�j  S  �  ��  ��  N klk Z $mn�~�}m C  opo o  �|�| 0 	thisline1 	thisLine1p b  qrq o  �{�{ 
0 prefix  r m  ss �tt  P R O V I N C En  S   �~  �}  l uvu l %%�zwx�z  w ~ x if thisLine1 starts with prefix & "CITY/MUNICIPALITY" or thisLine1 starts with prefix & "MUNICIPALITY" then exit repeat   x �yy �   i f   t h i s L i n e 1   s t a r t s   w i t h   p r e f i x   &   " C I T Y / M U N I C I P A L I T Y "   o r   t h i s L i n e 1   s t a r t s   w i t h   p r e f i x   &   " M U N I C I P A L I T Y "   t h e n   e x i t   r e p e a tv z{z Z %B|}�y�x| G  %:~~ C  %,��� o  %&�w�w 0 	thisline1 	thisLine1� b  &+��� o  &'�v�v 
0 prefix  � m  '*�� ��� , C O N D O M I N I U M / T O W N H O U S E S C  /6��� o  /0�u�u 0 	thisline1 	thisLine1� b  05��� o  01�t�t 
0 prefix  � m  14�� ��� . C O N D O M I N I U M S / T O W N H O U S E S}  S  =>�y  �x  { ��� Z Cn���s�r� G  Cf��� G  CX��� C  CJ��� o  CD�q�q 0 	thisline1 	thisLine1� b  DI��� o  DE�p�p 
0 prefix  � m  EH�� ���  ; ; D . O .   N O . ;� C  MT��� o  MN�o�o 0 	thisline1 	thisLine1� b  NS��� o  NO�n�n 
0 prefix  � m  OR�� ���  ; ; D . O   N o . ;� C  [b��� o  [\�m�m 0 	thisline1 	thisLine1� b  \a��� o  \]�l�l 
0 prefix  � m  ]`�� ���    ; ; D . O   N o . ;�  S  ij�s  �r  � ��� Z o����k�j� G  o���� C  ov��� o  op�i�i 0 	thisline1 	thisLine1� b  pu��� o  pq�h�h 
0 prefix  � m  qt�� ���  ; ; C L A S S - ;� C  y���� o  yz�g�g 0 	thisline1 	thisLine1� b  z��� o  z{�f�f 
0 prefix  � m  {~�� ���  ; ;   C L A S S - ;�  S  ���k  �j  � ��� Z �����e�d� G  ����� C  ����� o  ���c�c 0 	thisline1 	thisLine1� b  ����� o  ���b�b 
0 prefix  � m  ���� ���    ; ; C L A S S - ;� C  ����� o  ���a�a 0 	thisline1 	thisLine1� b  ����� o  ���`�` 
0 prefix  � m  ���� ���    ; ;   C L A S S - ;�  S  ���e  �d  � ��� Z �����_�^� G  ����� C  ����� o  ���]�] 0 	thisline1 	thisLine1� b  ����� o  ���\�\ 
0 prefix  � m  ���� ���  ; ; C L A S S I - ;� C  ����� o  ���[�[ 0 	thisline1 	thisLine1� b  ����� o  ���Z�Z 
0 prefix  � m  ���� ���  ; ;   C L A S S I - ;�  S  ���_  �^  � ��� Z �����Y�X� G  ����� C  ����� o  ���W�W 0 	thisline1 	thisLine1� b  ����� o  ���V�V 
0 prefix  � m  ���� ���    ; ; C L A S S I - ;� C  ����� o  ���U�U 0 	thisline1 	thisLine1� b  ����� o  ���T�T 
0 prefix  � m  ���� ���    ; ;   C L A S S I - ;�  S  ���Y  �X  � ��� Z ����S�R� G  ����� E  ����� o  ���Q�Q 0 	thisline1 	thisLine1� b  ����� o  ���P�P 
0 prefix  � m  ���� ���  ; C L A S S I - ;� E  ����� o  ���O�O 0 	thisline1 	thisLine1� m  ���� ���  ; C L A S S - ;�  S  ���S  �R  � ��� Z  �N�M  G   E  
 o  �L�L 0 	thisline1 	thisLine1 b  	 o  �K�K 
0 prefix   m   �		    ; C L A S S I - ; E  

 o  �J�J 0 	thisline1 	thisLine1 m   �    ; C L A S S - ;  S  �N  �M  �  Z J�I�H G  B G  4 C  & o   �G�G 0 	thisline1 	thisLine1 b   % o   !�F�F 
0 prefix   m  !$ �  ; ; f r o m ; t o C  )0 o  )*�E�E 0 	thisline1 	thisLine1 b  */ o  *+�D�D 
0 prefix   m  +.   �!!  ;   ; F r o m ; T o ; ; C  7>"#" o  78�C�C 0 	thisline1 	thisLine1# b  8=$%$ o  89�B�B 
0 prefix  % m  9<&& �''  ;   ; C L A S S I - ;  S  EF�I  �H   ()( Z K�*+�A�@* G  K|,-, G  Kn./. G  K`010 C  KR232 o  KL�?�? 0 	thisline1 	thisLine13 b  LQ454 o  LM�>�> 
0 prefix  5 m  MP66 �77 & S T R E E T / S U B D I V I S I O N ;1 C  U\898 o  UV�=�= 0 	thisline1 	thisLine19 b  V[:;: o  VW�<�< 
0 prefix  ; m  WZ<< �==  S T R E E T / ;/ C  cj>?> o  cd�;�; 0 	thisline1 	thisLine1? b  di@A@ o  de�:�: 
0 prefix  A m  ehBB �CC  S T R E E T   N A M E / ;- C  qxDED o  qr�9�9 0 	thisline1 	thisLine1E b  rwFGF o  rs�8�8 
0 prefix  G m  svHH �II & S T R E E T S / S U B D I V I S I O N+  S  ��A  �@  ) JKJ Z ��LM�7�6L C  ��NON o  ���5�5 0 	thisline1 	thisLine1O b  ��PQP o  ���4�4 
0 prefix  Q m  ��RR �SS  S U B D I V I S I O NM  S  ���7  �6  K TUT Z ��VW�3�2V G  ��XYX G  ��Z[Z C  ��\]\ o  ���1�1 0 	thisline1 	thisLine1] b  ��^_^ o  ���0�0 
0 prefix  _ m  ��`` �aa  - ; - ;[ C  ��bcb o  ���/�/ 0 	thisline1 	thisLine1c b  ��ded o  ���.�. 
0 prefix  e m  ��ff �gg  - -Y C  ��hih o  ���-�- 0 thisline thisLinei b  ��jkj o  ���,�, 
0 prefix  k m  ��ll �mm  - ; ;W  S  ���3  �2  U non Z ��pq�+�*p G  ��rsr G  ��tut C  ��vwv o  ���)�) 0 	thisline1 	thisLine1w b  ��xyx o  ���(�( 
0 prefix  y m  ��zz �{{  = ; = ;u C  ��|}| o  ���'�' 0 	thisline1 	thisLine1} b  ��~~ o  ���&�& 
0 prefix   m  ���� ���  = ; ;s C  ����� o  ���%�% 0 	thisline1 	thisLine1� b  ����� o  ���$�$ 
0 prefix  � m  ���� ���  = =q  S  ���+  �*  o ��#� r  ����� b  ����� b  ����� o  ���"�" 0 newtext newText� o  ���!�! 0 	thisline1 	thisLine1� o  ��� 
�  
ret � o      �� 0 newtext newText�#  � m  �� ��  �� 0 i  y o   � ��� 0 	linestart 	lineStartz o   � ��� 0 lineend lineEnd��  w ��� l ����  �   display dialog newText   � ��� .   d i s p l a y   d i a l o g   n e w T e x t� ��� l ����  � I C	if newText is not "" then set newText to text 1 thru -2 of newText   � ��� � 	 i f   n e w T e x t   i s   n o t   " "   t h e n   s e t   n e w T e x t   t o   t e x t   1   t h r u   - 2   o f   n e w T e x t�  � R      ���
� .ascrerr ****      � ****� o      �� 0 errstr errStr� ���
� 
errn� o      �� 0 errornumber errorNumber�  � k  
�� ��� r  
��� b  
��� b  
��� b  
��� b  
��� o  
�� 0 thefilename theFileName� o  �� 0 newline NEWLINE� m  �� ���    E r r o r :� o  �� 0 errstr errStr� o  �� 0 newline NEWLINE� n      ���  ;  � o  �� 0 theerrmessage theErrMessage� ��� r  ��� o  �� 0 thetext theText� o      �� 0 newtext newText�  � ��� L  �� o  �
�
 0 newtext newText�  � ��� l     �	���	  �  �  � ��� i    ��� I      ���� 0 list_position  � ��� o      �� 0 	this_item  � ��� o      �� 0 	this_list  � ��� o      �� 	0 start  � ��� o      � �  0 begins_with  �  �  � k     E�� ��� Y     B�������� k    =�� ��� Z   %������� F    ��� =   ��� o    ���� 0 begins_with  � m    ��
�� boovtrue� C   ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 	this_list  � o    ���� 0 	this_item  � L    !�� o     ���� 0 i  ��  ��  � ���� Z  & =������� F   & 4��� =  & )��� o   & '���� 0 begins_with  � m   ' (��
�� boovfals� E   , 2��� n   , 0��� 4   - 0���
�� 
cobj� o   . /���� 0 i  � o   , -���� 0 	this_list  � o   0 1���� 0 	this_item  � L   7 9�� o   7 8���� 0 i  ��  ��  ��  �� 0 i  � o    ���� 	0 start  � l   	������ I   	�����
�� .corecnte****       ****� o    ���� 0 	this_list  ��  ��  ��  ��  � ���� L   C E�� m   C D����  ��  � ���� l     ��������  ��  ��  ��       ���������  � ���������� 0 writeto_utf8 writeTo_UTF8�� 0 cleanup  �� 0 list_position  
�� .aevtoappnull  �   � ****� ��I���������� 0 writeto_utf8 writeTo_UTF8�� ����� �  �������� 0 
targetfile 
targetFile�� 0 thetext theText�� 0 
appendtext 
appendText��  � �������������� 0 
targetfile 
targetFile�� 0 thetext theText�� 0 
appendtext 
appendText�� 0 openfile openFile�� 0 
fileexists 
fileExists�� 0 theerror theError� ������������u���������������������������
�� 
ctxt
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .coredoexbool        obj 
�� 
as  
�� 
utf8�� 
�� .rdwrclosnull���     ****�� 0 theerror theError��  ��  �� � t��&E�O*�/�el E�O�f  ��jl O����� Y -� *�/j E�UO�f  ��jl O����� Y hO������a  O�j OeW X   *�/j W X  hO�� ������������� 0 cleanup  �� ����� �  �������� 0 thefilename theFileName�� 0 thetext theText�� 0 theerrmessage theErrMessage��  � �������������������������������� 0 thefilename theFileName�� 0 thetext theText�� 0 theerrmessage theErrMessage�� 0 newtext newText�� 0 textlist textList�� 
0 prefix  �� 0 	linestart 	lineStart�� 0 endlocation endLocation�� 0 lineend lineEnd�� 0 i  �� 0 thisline thisLine�� 0 	thisline1 	thisLine1�� 0 errstr errStr�� 0 errornumber errorNumber�� 0 newline NEWLINE� K����������&6��W�������������������!,9?JW]hs��������������� &6<BHR`flz������
�� 
cpar�� �� 0 list_position  
�� .corecnte****       ****
�� 
cobj
�� 
bool
�� 
ret �� 0 errstr errStr� ������
�� 
errn�� 0 errornumber errorNumber��  �� �E�O ��-E�O�E�O*�ke�+ E�O�j  *�ke�+ E�Y hO�j  *�ke�+ E�O�E�Y hO�j  *�ke�+ E�Y hO*��%�kf�+ E�O�j  �j E�Y 3�� (*��%��f�+ E�O�j  �j E�Y �kE�Y �kE�OL��kh 	���/E�O���%
 ���%a &
 ��a %a &
 �a a & 
a E�Y �E�O�kkh��a %
 ��a %a & Y hO��a %
 ��a %a & Y hO��a %
 ��a %a & Y hO��a %
 ��a %a & �a %_ %E�OY hO��a %
 ��a %a &
 ��a  %a & �a !%_ %E�OY hO��a "%
 ��a #%a & �a $%_ %E�OY hO��a %%
 ��a &%a & �a '%_ %E�OY hO��a (% Y hO��a )%
 ��a *%a & Y hO��a +%
 ��a ,%a &
 ��a -%a & Y hO��a .%
 ��a /%a & Y hO��a 0%
 ��a 1%a & Y hO��a 2%
 ��a 3%a & Y hO��a 4%
 ��a 5%a & Y hO��a 6%
 �a 7a & Y hO��a 8%
 �a 9a & Y hO��a :%
 ��a ;%a &
 ��a <%a & Y hO��a =%
 ��a >%a &
 ��a ?%a &
 ��a @%a & Y hO��a A% Y hO��a B%
 ��a C%a &
 ��a D%a & Y hO��a E%
 ��a F%a &
 ��a G%a & Y hO��%_ %E�[OY�[OY��OPW X H I��%a J%�%�%�6FO�E�O�� ������������� 0 list_position  �� ����� �  ���������� 0 	this_item  �� 0 	this_list  �� 	0 start  �� 0 begins_with  ��  � ������������ 0 	this_item  �� 0 	this_list  �� 	0 start  �� 0 begins_with  �� 0 i  � ������
�� .corecnte****       ****
�� 
cobj
�� 
bool�� F A��j  kh �e 	 
��/��& �Y hO�f 	 
��/��& �Y h[OY��Oj� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  !��  0��  B��  Q��  _��  l��  u    ~  �  �  �  �  � � � �		 �

 � � � � ����  ��  ��  � ����~�}�|�� 0 afile aFile� 0 asheet aSheet�~ 0 csvpath csvPath�} 0 theerror theError�| 0 theerr theErr� _�{ �z�y ) ,�x ;�w�v I�u W�t�s�r j�q s�p |�o�n ��m�l�k�j�i�h�g�f�e�d�c�b�a�`L�_�^�]�\�[�Z ��Y ��X
�W%)�V�U�T�S�R�Q�P�O�N�Mg�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�
�{ 
prmp
�z .sysostflalis    ��� null�y  0 inputdirectory inputDirectory�x 0 ext_list  
�w 
ctxt�v "0 outputdirectory outputDirectory�u��
�t 
psxp
�s 
strq
�r .sysoexecTEXT���     TEXT�q 0 txtdirectory txtDirectory�p 0 txtfile txtFile�o 0 errfile errFile�n &0 deleteoriginalcsv deleteOriginalCSV
�m 
ects
�l 
file  
�k 
nmxt
�j 
alst�i 0 
excelfiles 
excelFiles�h 0 filelist fileList�g 
�f .sysontocTEXT       shor�e 0 newline NEWLINE�d 0 
errmessage 
errMessage
�c 
kocl
�b 
cobj
�a .corecnte****       ****�` 0 csvpaths csvPaths
�_ .aevtodocnull  �    alis
�^ 
1172
�] 
XwSH�\ 0 	allsheets 	allSheets
�[ 
pnam�Z 0 workbookname workbookName�Y���X���W 0 thispath thisPath
�V .coredoexbool        obj 
�U .coredeloobj        obj 
�T 
kfil
�S 
fltp
�R e188� �Q 
�P .coresavenull���    obj 
�O 
savo
�N .coreclosnull���    obj �M���L 0 utf8path utf8Path
�K .rdwrread****        ****�J 0 csvtext csvText�I 0 cleanup  �H 0 
resulttext 
resultText�G 0 writeto_utf8 writeTo_UTF8�F  �E  �D 0 thefile theFile
�C 
perm
�B .rdwropenshor       file�A 0 referencenr referenceNr
�@ 
set2
�? .rdwrseofnull���     ****
�> 
as  
�= 
utf8
�< 
refn
�; 
wrat
�: rdwreof �9 
�8 .rdwrwritnull���     ****�7 0 theerror theError
�6 .rdwrclosnull���     ****�5 0 
theerrfile 
theErrFile�4 0 errrefnr errRefNr���*��l E�O��lvE�O*��l �&E�O�� �[�\[Zk\Z�2E�Y hO���,�,%j O*�a l �&E` O_ a %E` O_ a %E` OfE` Oa   �a ,a -a [Z�\a ,@1a &E` UOjvE` Oa j  E` !OjvE` "O�_ [a #a $l %kh  jvE` &Oa '�j (O*a ),a *-E` +O*a ),a ,,E` -O_ -a . _ -[�\[Zk\Za /2E` -Y hO_ -a 0 _ -[�\[Zk\Za 12E` -Y hO �_ +[a #a $l %kh �a 2%_ -%a 3%�a ,,%a 4%E` 5O�a ,,a 6 __ -a 7%�a ,,%a 8%_ 6FO_ 5_ &6FOa  !*a _ 5/j 9 *a _ 5/j :Y hUO�a ;_ 5a <a =a > ?Y h[OY�sO*a ),a @fl AUO �_ &[a #a $l %kh  n�[�\[Zk\Za B2a C%E` DOa  !*a _ D/j 9 *a _ D/j :Y hUO*a �/j EE` FO*�_ F_ "m+ GE` HO*_ D_ Hem+ IW X J KhO_  a  *a �/j :UY h[OY�i[OY�)O_ E` LO*a _ L/a Mel NE` OO K_ Oa Pjl QO 7_ [a #a $l %kh  �_ !%a Ra Sa T_ Oa Ua Va W X[OY��OPW X Y K_ Oj ZO_ Oj ZO_ E` [O*a _ [/a Mel NE` \O c_ \a Pjl QOa ]�%a Ra Sa T_ \a Ua Va W XO 3_ "[a #a $l %kh �a Ra Sa T_ \a Ua Va W X[OY��W X Y K_ \j ZO_ \j ZOa ^ ascr  ��ޭ