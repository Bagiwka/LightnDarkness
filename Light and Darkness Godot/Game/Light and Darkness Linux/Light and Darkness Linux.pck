GDPC                 �                                                                         T   res://.godot/exported/133200997/export-4b0019ee011a7a8166d37b627c7f0ee3-Retry.scn   <      �      �����3����f�    P   res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn�6            Ā@[[a{m�,p��0    X   res://.godot/exported/133200997/export-e29b689db4df3252769d76565b4b8f89-First_battle.scn0      �      !S�X�wE����屔�    P   res://.godot/exported/133200997/export-e29da93eb1a74702635796f544ee9780-End.scn P      �      ݬQ�uf0��I�D��    ,   res://.godot/global_script_class_cache.cfg                 ��Р�8���8~$}P�    L   res://.godot/imported/defaultBG.png-5afe7f9933980f7c75c80811dd4f10d8.ctex           Z       �
�iT1�s����F    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex '      ^      2��r3��MgB�[79       res://.godot/uid_cache.bin  �R             ���:'���J��m��u       res://End.tscn.remap�@      `       U[YyP����q��O�	       res://First_battle.gd                �g�5	O�k���        res://First_battle.tscn.remap   PA      i       �1�q�CZ�?��{y��       res://Main.gd   P5      u      ����DJ�3B4�H       res://Main.tscn.remap   �A      a       3 J�M�B�b��}�       res://Retry.gd  �:            ł����ME�,<�)��       res://Retry.tscn.remap  0B      b       վ��)C���Rl       res://defaultBG.png.import  �       �       ��s��1���Z�!?�up       res://icon.svg  �B      N      ]��s�9^w/�����       res://icon.svg.import   �4      �       ��2���a��%�*
��+       res://project.binary�S      �       ۂ������=e����v    ��f��5�o9��list=Array[Dictionary]([])
�|2�GST2   v  �      ����               v�        "   RIFF   WEBPVP8L   /u/ �DD��z��,[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d0nd3yvhdy1jq"
path="res://.godot/imported/defaultBG.png-5afe7f9933980f7c75c80811dd4f10d8.ctex"
metadata={
"vram_texture": false
}
 �&nE�	���2RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    
   Texture2D    res://defaultBG.png ��g3� |      local://PackedScene_udywv          PackedScene          	         names "         End    Node2D    Label    offset_left    offset_top    offset_right    offset_bottom    text 
   DefaultBg    z_index 	   position    scale    texture 	   Sprite2D    	   variants    	       ��C     "C    ��C     9C      End    Z���
    �E |D
   ?FATt*A                node_count             nodes     '   ��������       ����                      ����                                                    ����   	      
                            conn_count              conns               node_paths              editable_instances              version             RSRC2���4Ieextends Node2D
 
func _process(delta):
	$HPLabel.set_text(str("HP: ", HP))
	for i in range(4):
		if Ens[i][0] == 0:
			match i:
				0:
					self.find_child("E1").position.x=123123
				1:
					self.find_child("E2").position.x=123123
				2:
					self.find_child("E3").position.x=123123
				3:
					self.find_child("E4").position.x=123123
	if turn == 1:
		print(Ens[0][0], Ens[1][0], Ens[2][0], Ens[3][0])
		for i in range(4):
			if Ens[i][0] != 0:
				HP -=1
				if HP <= 0:
					get_tree().change_scene_to_file("res://Retry.tscn")
	turn = 0

var rng = RandomNumberGenerator.new()
var Hand = [1, 0, 0];
var turn = 0;
var En1 = [3, 1, 0];
var En2 = [3, 1, 1];
var En3 = [3, 1, 1];
var En4 = [3, 1, 0];
var Ens = [En1, En2, En3, En4];
var HP = 50;
var Colour = 1;
var Check = true;

"func _ready():
	var posX0 = self.get_child(0).position.x
	var posY0 = self.get_child(0).position.y
	var posX4 = self.get_child(4).position.x
	var posY4 = self.get_child(4).position.y
	self.get_child(0).position.x = posX4
	self.get_child(0).position.y = posY4
	self.get_child(4).position.x = posX0
	self.get_child(4).position.y = posY0

	posX0 = self.get_child(1).position.x
	posY0 = self.get_child(1).position.y
	posX4 = self.get_child(5).position.x
	posY4 = self.get_child(5).position.y
	self.get_child(1).position.x = posX4
	self.get_child(1).position.y = posY4
	self.get_child(5).position.x = posX0
	self.get_child(5).position.y = posY0
	
	posX0 = self.get_child(2).position.x
	posY0 = self.get_child(2).position.y
	posX4 = self.get_child(6).position.x
	posY4 = self.get_child(6).position.y
	self.get_child(2).position.x = posX4
	self.get_child(2).position.y = posY4
	self.get_child(6).position.x = posX0
	self.get_child(6).position.y = posY0
	
	posX0 = self.get_child(3).position.x
	posY0 = self.get_child(3).position.y
	posX4 = self.get_child(7).position.x
	posY4 = self.get_child(7).position.y
	self.get_child(3).position.x = posX4
	self.get_child(3).position.y = posY4
	self.get_child(7).position.x = posX0
	self.get_child(7).position.y = posY0
"
#15 and up HR

func _check_finished():
	if Ens[0][0] == 0:
		if Ens[1][0] == 0:
			if Ens[2][0] == 0:
				if Ens[3][0] == 0:
					get_tree().change_scene_to_file("res://End.tscn")

func _on_d_pressed():
	if rng.randi_range(0, 2) == 0:
		for i in range(3):
			if Hand[i] == 0:
				if i == 0:
					self.find_child("H").position.x = 415
					self.find_child("H").position.y = 468
					Hand[i] = 2
					Check = false
					break;
	if Check != false:
		if turn == 0:
			for i in range(3):
				if Hand[i] == 0:
					if i == 0:
						if rng.randi_range(0,1)==0:
							self.find_child("HW1").position.x = 415
							self.find_child("HW1").position.y = 468
							Hand[i]=1
							turn = 1
							break;
						else:
							self.find_child("HB1").position.x = 415
							self.find_child("HB1").position.y = 468
							Hand[i]=1
							turn = 1
							break;
					elif i == 1:
						if rng.randi_range(0,1)==0:
							self.find_child("HW2").position.x = 527
							self.find_child("HW2").position.y = 468
							Hand[i]=1
							turn = 1
							break;
						else:
							self.find_child("HB2").position.x = 527
							self.find_child("HB2").position.y = 468
							Hand[i]=1
							turn = 1
							break;
					else:
						if rng.randi_range(0,1)==0:
							self.find_child("HW3").position.x = 639
							self.find_child("HW3").position.y = 468
							Hand[i]=1
							turn = 1
							break;
						else:
							self.find_child("HB3").position.x = 639
							self.find_child("HB3").position.y = 468
							Hand[i]=1
							turn = 1
							break;
	Check = true
func _on_hw_1_pressed():
	if Colour == 1:
		$HW1.position.x = 123123
		Hand[0] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 1:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_hw_2_pressed():
	if Colour == 1:
		$HW2.position.x = 123123
		Hand[1] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 1:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_hw_3_pressed():
	if Colour == 1:
		$HW3.position.x = 123123
		Hand[2] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 1:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_hb_1_pressed():
	if Colour == 0:
		$HB1.position.x = 123123
		Hand[0] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 0:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_hb_2_pressed():
	if Colour == 0:
		$HB2.position.x = 123123
		Hand[1] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 0:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_hb_3_pressed():
	if Colour == 0:
		$HB3.position.x = 123123
		Hand[2] = 0
		for i in range(4):
			if Ens[i][0] != 0:
				if Ens[i][2] == 0:
					Ens[i][0] = Ens[i][0]-1
					print(Ens[i][0])
					break
		_check_finished()
		turn = 1


func _on_colour_pressed():
	if Colour == 0:
		self.find_child("DefaultBg").position.x = 0
		Colour = 1
	else:
		self.find_child("DefaultBg").position.x = 123123123
		Colour = 0
	turn = 1


func _Heal():
	HP = HP+5

func _on_h_pressed():
	self.find_child("H").position.x = 123123
	for i in range(0,3):
		if Hand[i] == 2:
			Hand[i] = 0
	_Heal()
�S�RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    default_base_scale    default_font    default_font_size    script 	   _bundled       Script    res://First_battle.gd ��������
   Texture2D    res://defaultBG.png ��g3� |      local://Theme_i2xhl �         local://PackedScene_h4krt �         Theme             PackedScene          	         names "   -      FirstBattle    script    Node2D    E1    offset_left    offset_top    offset_right    offset_bottom    text    Button    E2    E3    theme    E4    D    HW1    HW2    HW3    HB1    HB2    HB3    Colour 
   DefaultBg    z_index 	   position    scale    texture 	   Sprite2D    HPLabel    Label    H    _on_e_1_pressed    pressed    _on_e_2_pressed    _on_e_3_pressed    _on_e_4_pressed    _on_d_pressed    _on_hw_1_pressed    _on_hw_2_pressed    _on_hw_3_pressed    _on_hb_1_pressed    _on_hb_2_pressed    _on_hb_3_pressed    _on_colour_pressed    _on_h_pressed    	   variants    A                  �B     �B     zC    ��C      Black     ��C     �B    @D     �C      White     �D     �B    �DD    ��C              @ZD     �B     �D    ��C    ��D     �C    @�D     D      Deck     ��C     �C    ��C    �D    ���     1C    ���    ��C    ���     0C    ���     �C     �     ��    ��C     ��     �C     ��     �C     ��     �C     ��     �C     �A     �C     �B      Change Colour    Z���
    �E |D
   ?FATt*A             �uD     �C    �D    ��C     �     �A     ��      C      Heal       node_count             nodes       ��������       ����                      	      ����                                             	   
   ����                        	      
               	      ����                                    
               	      ����                                             	      ����                                             	      ����                              
               	      ����                               
               	      ����      !      "      #      $      
               	      ����      %            &      '                     	      ����      (      )      *      +                     	      ����      ,      -      .      /                     	      ����      0      1      2            3                     ����      4      5      6      7                     ����      8      9      :      ;               	      ����      <      =      >      ?      @             conn_count             conns     [                                       !                         "                         #                         $                         %                         &                         '              	           (              
           )                         *                         +                         ,                    node_paths              editable_instances              version             RSRC֢��݃���IVGST2   �   �      ����               � �        &  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�4mb�h3O���$E�s����A*DV�:#�)��)�X/�x�>@\�0|�q��m֋�d�0ψ�t�!&����P2Z�z��QF+9ʿ�d0��VɬF�F� ���A�����j4BUHp�AI�r��ِ���27ݵ<�=g��9�1�e"e�{�(�(m�`Ec\]�%��nkFC��d���7<�
V�Lĩ>���Qo�<`�M�$x���jD�BfY3�37�W��%�ݠ�5�Au����WpeU+.v�mj��%' ��ħp�6S�� q��M�׌F�n��w�$$�VI��o�l��m)��Du!SZ��V@9ד]��b=�P3�D��bSU�9�B���zQmY�M~�M<��Er�8��F)�?@`�:7�=��1I]�������3�٭!'��Jn�GS���0&��;�bE�
�
5[I��=i�/��%�̘@�YYL���J�kKvX���S���	�ڊW_�溶�R���S��I��`��?֩�Z�T^]1��VsU#f���i��1�Ivh!9+�VZ�Mr�טP�~|"/���IK
g`��MK�����|CҴ�ZQs���fvƄ0e�NN�F-���FNG)��W�2�JN	��������ܕ����2
�~�y#cB���1�YϮ�h�9����m������v��`g����]1�)�F�^^]Rץ�f��Tk� s�SP�7L�_Y�x�ŤiC�X]��r�>e:	{Sm�ĒT��ubN����k�Yb�;��Eߝ�m�Us�q��1�(\�����Ӈ�b(�7�"�Yme�WY!-)�L���L�6ie��@�Z3D\?��\W�c"e���4��AǘH���L�`L�M��G$𩫅�W���FY�gL$NI�'������I]�r��ܜ��`W<ߛe6ߛ�I>v���W�!a��������M3���IV��]�yhBҴFlr�!8Մ�^Ҷ�㒸5����I#�I�ڦ���P2R���(�r�a߰z����G~����w�=C�2������C��{�hWl%��и���O������;0*��`��U��R��vw�� (7�T#�Ƨ�o7�
�xk͍\dq3a��	x p�ȥ�3>Wc�� �	��7�kI��9F}�ID
�B���
��v<�vjQ�:a�J�5L&�F�{l��Rh����I��F�鳁P�Nc�w:17��f}u}�Κu@��`� @�������8@`�
�1 ��j#`[�)�8`���vh�p� P���׷�>����"@<�����sv� ����"�Q@,�A��P8��dp{�B��r��X��3��n$�^ ��������^B9��n����0T�m�2�ka9!�2!���]
?p ZA$\S��~B�O ��;��-|��
{�V��:���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���(�#2:E(*�H���{��>��&!��$| �~�+\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j����	P:�~�G0 �J��$�M���@�Q��Yz��i��~q�1?�c��Bߝϟ�n�*������8j������p���ox���"w���r�yvz U\F8��<E��xz�i���qi����ȴ�ݷ-r`\�6����Y��q^�Lx�9���#���m����-F�F.-�a�;6��lE�Q��)�P�x�:-�_E�4~v��Z�����䷳�:�n��,㛵��m�=wz�Ξ;2-��[k~v��Ӹ_G�%*�i� ����{�%;����m��g�ez.3���{�����Kv���s �fZ!:� 4W��޵D��U��
(t}�]5�ݫ߉�~|z��أ�#%���ѝ܏x�D4�4^_�1�g���<��!����t�oV�lm�s(EK͕��K�����n���Ӌ���&�̝M�&rs�0��q��Z��GUo�]'G�X�E����;����=Ɲ�f��_0�ߝfw�!E����A[;���ڕ�^�W"���s5֚?�=�+9@��j������b���VZ^�ltp��f+����Z�6��j�`�L��Za�I��N�0W���Z����:g��WWjs�#�Y��"�k5m�_���sh\���F%p䬵�6������\h2lNs�V��#�t�� }�K���Kvzs�>9>�l�+�>��^�n����~Ěg���e~%�w6ɓ������y��h�DC���b�KG-�d��__'0�{�7����&��yFD�2j~�����ټ�_��0�#��y�9��P�?���������f�fj6͙��r�V�K�{[ͮ�;4)O/��az{�<><__����G����[�0���v��G?e��������:���١I���z�M�Wۋ�x���������u�/��]1=��s��E&�q�l�-P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸z��f��i���_�j�S-|��w�J�<LծT��-9�����I�®�6 *3��y�[�.Ԗ�K��J���<�ݿ��-t�J���E�63���1R��}Ғbꨝט�l?�#���ӴQ��.�S���U
v�&�3�&O���0�9-�O�kK��V_gn��k��U_k˂�4�9�v�I�:;�w&��Q�ҍ�
��fG��B��-����ÇpNk�sZM�s���*��g8��-���V`b����H���
3cU'0hR
�w�XŁ�K݊�MV]�} o�w�tJJ���$꜁x$��l$>�F�EF�޺�G�j�#�G�t�bjj�F�б��q:�`O�4�y�8`Av<�x`��&I[��'A�˚�5��KAn��jx ��=Kn@��t����)�9��=�ݷ�tI��d\�M�j�B�${��G����VX�V6��f�#��V�wk ��W�8�	����lCDZ���ϖ@���X��x�W�Utq�ii�D($�X��Z'8Ay@�s�<�x͡�PU"rB�Q�_�Q6  �[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d0tsafyr6gnht"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �N칳E�����J~extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://First_battle.tscn")


func _on_exit_pressed():
	get_tree().quit()
_s�k�)M�"*RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Main.gd ��������      local://PackedScene_abqad          PackedScene          	         names "         Main    script    Node2D    Start    offset_left    offset_top    offset_right    offset_bottom    text    Button    Exit    _on_start_pressed    pressed    _on_exit_pressed    	   variants    	                 ��C     �B    �OD     �C      Start      �C    ��C      Exit       node_count             nodes     +   ��������       ����                      	      ����                                             	   
   ����                                           conn_count             conns                                                              node_paths              editable_instances              version             RSRC��E���q'X%�W	�extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().quit()
tRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Retry.gd ��������
   Texture2D    res://defaultBG.png ��g3� |      local://PackedScene_jhiso 4         PackedScene          	         names "         Retry    script    Node2D 
   DefaultBg    z_index 	   position    scale    texture 	   Sprite2D    Button    offset_left    offset_top    offset_right    offset_bottom    text    Label    _on_button_pressed    pressed    	   variants                    Z���
    �E |D
   ?FATt*A              zC     rC    �D    ��C      Retry     ��C     C     �C     *C      You're dead lmfaooo       node_count             nodes     :   ��������       ����                            ����                                       	   	   ����   
                           	                     ����   
   
                                     conn_count             conns                                      node_paths              editable_instances              version             RSRC�(��[remap]

path="res://.godot/exported/133200997/export-e29da93eb1a74702635796f544ee9780-End.scn"
[remap]

path="res://.godot/exported/133200997/export-e29b689db4df3252769d76565b4b8f89-First_battle.scn"
?��c8o[remap]

path="res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn"
�-���ݹn��o[remap]

path="res://.godot/exported/133200997/export-4b0019ee011a7a8166d37b627c7f0ee3-Retry.scn"
�ƹG��)�X)4<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
�&   ��w���(   res://first_battle.tscnug��D|   res://icon.svg|Z5b�9   res://Main.tscn��g3� |   res://defaultBG.png��{0�s   res://End.tscn��w���(   res://First_battle.tscnK>����W   res://Retry.tscnug��D|    res://Game/Game Windows/icon.svgECFG      application/config/name         Light and Darkness     application/run/main_scene         res://Main.tscn    application/config/features$   "         4.0    Forward Plus       application/config/icon         res://icon.svg  ���