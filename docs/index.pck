GDPC                                                                            ,   D   res://.import/arrow_sheet.png-18d3a27f4b3b2be4ae1b2fef59de1457.stex �#      �      ����c�v�N��B�ID   res://.import/arrow_sheet.png-f1daab1cd439684b87f06b3161a6fa25.stex @o      �      �|����Ӵ��$z�-D   res://.import/black_cell.png-f8461d86bd1f00c6ec812dd990a2efe1.stex  �z      �       �d��wfu1�v���fL   res://.import/chess_sprite_sheet.png-1822301c2610a206dac8ed04bb2f59ca.stex  �}      ��      �$�ר(0�~�'5@   res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex  ,     U      -��`�0��x�5�[<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��     U      -��`�0��x�5�[@   res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex   �;     
]      �녏���	��
*�H   res://.import/selected_cell.png-6aaa8713db7d9e7c65531d59d5662c86.stex   0$     �       ?�P1�%������j�D   res://.import/white_cell.png-bd4672068141ab935015d8c9f178bc44.stex  �'     �       �*N_�`�%Vp���    res://Scenes/Base_Figures.tscn        	       ��=�@\.�٩��   res://Scenes/Base_Level.tscn       �      �1��%��ܼ    res://Scenes/Levels/Level1.tscn �      �      isJ�֏�oL��<��   res://Scenes/Main.tscn  �      <      9��8�T/���;
x8    res://Scenes/Pieces/BBishop.tscn0      �       � U�,�:S`�ċ�`    res://Scenes/Pieces/BKing.tscn        �       xMӐ滽>��f    res://Scenes/Pieces/BPawn.tscn  �      �       �О�}��x����M_��    res://Scenes/Pieces/BQueen.tscn �      �       <�ic!�$�M�J���ǭ    res://Scenes/Pieces/BRook.tscn  �      �       5��-�ݹ!��˱��*z    res://Scenes/Pieces/Bishop.tscn �      �       6�C��{�>u��ΐ�1    res://Scenes/Pieces/King.tscn   p      �       �N}Ör�4D$���    res://Scenes/Pieces/Knight.tscn P       �       �r2���IT=g��"Q    res://Scenes/Pieces/Pawn.tscn   0!      �       �c�B���i}��y�    res://Scenes/Pieces/Queen.tscn  �!      �       ��X���}k��H쀭�    res://Scenes/Pieces/Rook.tscn   �"      �       ƛ�u��|ĸ������,   res://Scenes/Pieces/arrow_sheet.png.import  P,      �      ���ꄬq���PL��   res://Scenes/Player.tscn /      \      *�3�_��=ی`�3    res://Scripts/Figures.gd.remap  p�     *       |� ���Z��f*�r�   res://Scripts/Figures.gdc   `B      �       ��/��yM�#��W   res://Scripts/Main.gd.remap ��     '       *�e�R��_�������   res://Scripts/Main.gdc  �B      M      `��A��4��bw`e�    res://Scripts/Player.gd.remap   Ы     )       <y;�9Y;�k��S�   res://Scripts/Player.gdc@I      �      ��S��,^ ߩ�]�k�   res://assets/Tiles.tres  P            7@��v����h�LQZ�$   res://assets/arrow_sheet.png.import �w      �      U|mFB�gu�y��d$   res://assets/black_cell.png.import   {      �      �j���{ƞT�Q��,   res://assets/chess_sprite_sheet.png.import  p!     �      z�V���X��]*ꙣ(   res://assets/selected_cell.png.import   0%     �      ]���������e}�Es$   res://assets/white_cell.png.import  �(     �      ��
Ÿ�C<���tH   res://default_env.tres  P+     �       um�`�N��<*ỳ�8    res://docs/favicon.png.import   `9     �      �x��6�X�i�ӜC'   res://docs/index.png.import  �     �      9���Db�l98o;�   res://icon.png   �     �      G1?��z�c��vN��   res://icon.png.import   �     �      �����%��(#AB�   res://project.binary�           ���2`>�C����[gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Figures.gd" type="Script" id=1]
[ext_resource path="res://assets/chess_sprite_sheet.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[node name="Figure" type="StaticBody2D"]
z_index = 1
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
vframes = 2
hframes = 6
frame = 11

[node name="Shape" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
       [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/Tiles.tres" type="TileSet" id=1]
[ext_resource path="res://Scenes/Player.tscn" type="PackedScene" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 256, 32 )

[node name="Main" type="Node2D"]

[node name="board_tile_map" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( 0, 1, 0, 1, 2, 0, 2, 1, 0, 3, 2, 0, 4, 1, 0, 5, 2, 0, 6, 1, 0, 7, 2, 0, 65536, 2, 0, 65537, 1, 0, 65538, 2, 0, 65539, 1, 0, 65540, 2, 0, 65541, 1, 0, 65542, 2, 0, 65543, 1, 0, 131072, 1, 0, 131073, 2, 0, 131074, 1, 0, 131075, 2, 0, 131076, 1, 0, 131077, 2, 0, 131078, 1, 0, 131079, 2, 0, 196608, 2, 0, 196609, 1, 0, 196610, 2, 0, 196611, 1, 0, 196612, 2, 0, 196613, 1, 0, 196614, 2, 0, 196615, 1, 0, 262144, 1, 0, 262145, 2, 0, 262146, 1, 0, 262147, 2, 0, 262148, 1, 0, 262149, 2, 0, 262150, 1, 0, 262151, 2, 0, 327680, 2, 0, 327681, 1, 0, 327682, 2, 0, 327683, 1, 0, 327684, 2, 0, 327685, 1, 0, 327686, 2, 0, 327687, 1, 0, 393216, 1, 0, 393217, 2, 0, 393218, 1, 0, 393219, 2, 0, 393220, 1, 0, 393221, 2, 0, 393222, 1, 0, 393223, 2, 0, 458752, 2, 0, 458753, 1, 0, 458754, 2, 0, 458755, 1, 0, 458756, 2, 0, 458757, 1, 0, 458758, 2, 0, 458759, 1, 0 )

[node name="Border" type="StaticBody2D" parent="board_tile_map"]
visible = false

[node name="Shape" type="CollisionShape2D" parent="board_tile_map/Border"]
position = Vector2( 256, -32 )
shape = SubResource( 1 )

[node name="Shape2" type="CollisionShape2D" parent="board_tile_map/Border"]
position = Vector2( -32, 256 )
rotation = 1.5708
shape = SubResource( 1 )

[node name="Shape3" type="CollisionShape2D" parent="board_tile_map/Border"]
position = Vector2( 544, 256 )
rotation = 1.5708
shape = SubResource( 1 )

[node name="Shape4" type="CollisionShape2D" parent="board_tile_map/Border"]
position = Vector2( 256, 544 )
shape = SubResource( 1 )

[node name="Figure" parent="." instance=ExtResource( 2 )]
position = Vector2( 288, 480 )
            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scenes/Base_Level.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scenes/Pieces/BBishop.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/Pieces/BKing.tscn" type="PackedScene" id=3]

[node name="Main" instance=ExtResource( 1 )]

[node name="BBishop" parent="." index="1" instance=ExtResource( 2 )]
position = Vector2( 352, 224 )

[node name="BKing" parent="." index="3" instance=ExtResource( 3 )]
position = Vector2( 224, 96 )
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Levels/Level1.tscn" type="PackedScene" id=1]

[node name="Main" type="Node2D"]

[node name="Main" parent="." instance=ExtResource( 1 )]

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( -64, -64 )
anchor_mode = 0
current = true
    [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="BBishop" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 4
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="BKing" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 0
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="BPawn" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 5
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="BQueen" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 1
    [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="BRook" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 3
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="Bishop" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 10
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="King" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 6
      [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="Knight" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 9
    [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="Pawn" instance=ExtResource( 1 )]
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="Queen" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 7
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scenes/Base_Figures.tscn" type="PackedScene" id=1]

[node name="Rook" instance=ExtResource( 1 )]

[node name="Sprite" parent="." index="0"]
frame = 8
      GDSTp   i           �  PNG �PNG

   IHDR   p   i   �9�   sRGB ���  DIDATx���kM�?iVJ[R�xZEPJ=�K�O/��{���\T����=H�*}O/ry�y�5G�")����myъ���n�}f�N7���ٙ��f>�6ɓ��������!Dt]w�������V��x���Ǜ��S��q�ʕ�����(^�f��R,I�EdGޞdGN{�_������4�M��o��(�ɐ�ǼmۆeY���0M34No0���ہ_�~��ϟ@x#�;�'E} �ϣ�������ss2ǣ�@��@>��m�~�;�\˲�P ����i��mKKK|Ʋy�&/b�ٔʣ�w������4�M���(T��,t:t�] ��i���B�P@�P  ,..����֜��K�ǁ�z�m�8::��y�t�]�?���L������5����1����8n�6��:�={ N�k1����a���v��W�^����x��)VVV�P����*��Ѓl�t:�~�������fff�������9�<M��˗  �����>�<�w����v�ݿ�ʙ3gp��LNN�8k�t:���޽{���m6p�x�x lnnboo���C��/_���������������?~�x F�>Σ{������t]g���&�����="�GmP�<�G'�u{j~�Ƕm����6����\Ǣ���0������hD�y�Q<�0��j�������go0�V�}:��'O������W<WȌ|��fg$�<��BU�&�����S`��O��Bz"�1�H8�eNn��\3�5�;Qy����j%Wjr72k<w���!�NLK��HMi���5�)׌D���J8t��
yK?~!lY<�����=hmeV��:PRS�yJjJ1���&/�˗/��1�ض��߿�Ç0M���X__G�f �<৸,��݉�%���k���/PRS�yҤ��KF���4 x��/ ~�< ��Y5�M�:ujh�JϏ-� ���C,�ϥ�7��E��H8~�|�/Q�J�����QR�+�ק�}Jj�B�ih_��&��7뼻w�*�iy�z`�����<:k�Ց�JM>q�h�cUj���vv�x,;/ۗ���s���TUj�z�ӗ�<�?�'2Qy��%Vj
��Q)���@�O�'���-%5��ݨ�x�b	�b)���D񨍚^B�E�!7_5M�ٳg1;;������}0vX+5�3�w�<z�Z��4P��x���{�$JjJo�0?Z��7K�zC�L	�+�d������JM�Y����T���ۀa����5�Uy W��
����@O]<q����4f/O_�U�)�J\�0l?��v�l�м0� ^/'xd'f�R�(^oc&�������;O���TJM���8��Q��*� ��5�jr�&/޹�o�y"6bO��Gf�C}0�̈�~�x�6�������ź�s6���8�A4�G�F��g硖��x�HNԡ.�<�8�z�Ij
�~����ja�,��d�W8�c�y�8�i&�G��_?����,N��湓W�I�NL�d4*W��O�q�Q�bɩK�x���£�}����<�p���Ǐ'Tj"yMoHT<N<@�ԴZ�ǣ÷R��q�	���h���?9 pD��6�< 杘 h�����N_�)��p��[^���2ϓ&5ٷ���Ҥ��u@�d4*�p��oFYO�lE�x�`��oRR���UjrOJ��Nŋ�#���}��*���<۸�H�JM~C�������Ry�ܾ�<:ܤ&Q���I��F��"5��p���e�褁Ijr�e-����W5�RSP�d��W��\�J���{=�m��@?�Q�����ĸ�~˥y���%�U���2x�ü��JM"���D&�<��UjQn?���"�8c���l�'땡F���l�ǯR�l�+Ry�����l�y�rp�?�ͣ���<R���xY<�uJj��3MS:Oz��q��d�ܕ��JM� �⭬��@j�Hocc���JMY��d��*�bIIMqx�a��v{�������#�9*���u���P��&:I�~� w^��za��ě�
�ɏ�W�G6����KM~��W�
�c���V�x��fff�7nO��_�����ϑ�����2T�y��Qx'͎�l�HI�0�2�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow_sheet.png-18d3a27f4b3b2be4ae1b2fef59de1457.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Scenes/Pieces/arrow_sheet.png"
dest_files=[ "res://.import/arrow_sheet.png-18d3a27f4b3b2be4ae1b2fef59de1457.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_scene load_steps=27 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://assets/chess_sprite_sheet.png" type="Texture" id=2]
[ext_resource path="res://assets/arrow_sheet.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 3 )
region = Rect2( 0, 0, 28, 21 )

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 3 )
region = Rect2( 28, 0, 28, 21 )

[sub_resource type="AtlasTexture" id=4]
atlas = ExtResource( 3 )
region = Rect2( 56, 0, 28, 21 )

[sub_resource type="AtlasTexture" id=5]
atlas = ExtResource( 3 )
region = Rect2( 84, 0, 28, 21 )

[sub_resource type="AtlasTexture" id=6]
atlas = ExtResource( 3 )
region = Rect2( 0, 21, 28, 21 )

[sub_resource type="AtlasTexture" id=7]
atlas = ExtResource( 3 )
region = Rect2( 28, 21, 28, 21 )

[sub_resource type="AtlasTexture" id=8]
atlas = ExtResource( 3 )
region = Rect2( 56, 21, 28, 21 )

[sub_resource type="AtlasTexture" id=9]
atlas = ExtResource( 3 )
region = Rect2( 84, 21, 28, 21 )

[sub_resource type="AtlasTexture" id=10]
atlas = ExtResource( 3 )
region = Rect2( 0, 42, 28, 21 )

[sub_resource type="AtlasTexture" id=11]
atlas = ExtResource( 3 )
region = Rect2( 28, 42, 28, 21 )

[sub_resource type="AtlasTexture" id=12]
atlas = ExtResource( 3 )
region = Rect2( 56, 42, 28, 21 )

[sub_resource type="AtlasTexture" id=13]
atlas = ExtResource( 3 )
region = Rect2( 84, 42, 28, 21 )

[sub_resource type="AtlasTexture" id=14]
atlas = ExtResource( 3 )
region = Rect2( 0, 63, 28, 21 )

[sub_resource type="AtlasTexture" id=15]
atlas = ExtResource( 3 )
region = Rect2( 28, 63, 28, 21 )

[sub_resource type="AtlasTexture" id=16]
atlas = ExtResource( 3 )
region = Rect2( 56, 63, 28, 21 )

[sub_resource type="AtlasTexture" id=17]
atlas = ExtResource( 3 )
region = Rect2( 84, 63, 28, 21 )

[sub_resource type="AtlasTexture" id=18]
atlas = ExtResource( 3 )
region = Rect2( 0, 84, 28, 21 )

[sub_resource type="AtlasTexture" id=19]
atlas = ExtResource( 3 )
region = Rect2( 28, 84, 28, 21 )

[sub_resource type="AtlasTexture" id=20]
atlas = ExtResource( 3 )
region = Rect2( 56, 84, 28, 21 )

[sub_resource type="AtlasTexture" id=21]
atlas = ExtResource( 3 )
region = Rect2( 84, 84, 28, 21 )

[sub_resource type="SpriteFrames" id=22]
animations = [ {
"frames": [ SubResource( 2 ), SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ), SubResource( 7 ), SubResource( 8 ), SubResource( 9 ), SubResource( 10 ), SubResource( 11 ), SubResource( 12 ), SubResource( 13 ), SubResource( 14 ), SubResource( 15 ), SubResource( 16 ), SubResource( 17 ), SubResource( 18 ), SubResource( 19 ), SubResource( 20 ), SubResource( 21 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=23]
extents = Vector2( 16, 16 )

[node name="Player" type="StaticBody2D"]
z_index = 1
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
vframes = 2
hframes = 6
frame = 11

[node name="Shape" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Arrows" type="Node2D" parent="."]

[node name="Right" type="Area2D" parent="Arrows"]
position = Vector2( 64, 0 )

[node name="Sprite" type="AnimatedSprite" parent="Arrows/Right"]
frames = SubResource( 22 )
frame = 14
speed_scale = 5.0
playing = true

[node name="Shape" type="CollisionShape2D" parent="Arrows/Right"]
shape = SubResource( 23 )

[node name="Left" type="Area2D" parent="Arrows"]
position = Vector2( -64, 0 )

[node name="Sprite" type="AnimatedSprite" parent="Arrows/Left"]
rotation = 3.14159
frames = SubResource( 22 )
frame = 12
speed_scale = 5.0
playing = true

[node name="Shape" type="CollisionShape2D" parent="Arrows/Left"]
shape = SubResource( 23 )

[node name="Up" type="Area2D" parent="Arrows"]
position = Vector2( 0, -64 )

[node name="Sprite" type="AnimatedSprite" parent="Arrows/Up"]
rotation = -1.5708
frames = SubResource( 22 )
frame = 13
speed_scale = 5.0
playing = true

[node name="Shape" type="CollisionShape2D" parent="Arrows/Up"]
shape = SubResource( 23 )
[connection signal="body_entered" from="Arrows/Right" to="." method="_on_Right_body_entered"]
[connection signal="body_exited" from="Arrows/Right" to="." method="_on_Right_body_exited"]
[connection signal="input_event" from="Arrows/Right" to="." method="_on_Right_input_event"]
[connection signal="body_entered" from="Arrows/Left" to="." method="_on_Left_body_entered"]
[connection signal="body_exited" from="Arrows/Left" to="." method="_on_Left_body_exited"]
[connection signal="input_event" from="Arrows/Left" to="." method="_on_Left_input_event"]
[connection signal="body_entered" from="Arrows/Up" to="." method="_on_Up_body_entered"]
[connection signal="body_exited" from="Arrows/Up" to="." method="_on_Up_body_exited"]
[connection signal="input_event" from="Arrows/Up" to="." method="_on_Up_input_event"]
    GDSC                   ���ӄ�   ������Ӷ   ��������Ŷ��                                     3YYY8P�  R�  Q;�  SYY`      GDSC         5        ���ӄ�   ������������ض��   �����������������Ӷ�   �������Ҷ���   ����������������Ӷ��   �����Ŷ�   ���������Ҷ�   ����¶��   ����������¶   ����������ƶ   ���������������ƶ���   ��Ŷ   �������������ƶ�   ������������   ������������   �������Ŷ���   ����׶��   �����¶�   ����¶��   ��������������������ض��   ���������Ҷ�   �����������ζ���   �����������   ������������ض��   �����������ƶ���   �������ض���   ����������Ӷ                         �>                                                                	      
         $      )      *      +      1      8      =      B      Q      [      _      `      a      h      n      t      x      |      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /      0   	  1     2     3     4     5   3YYY;�  Y;�  Y;�  �  YYY;�  Y;�  �  Y;�  �  Y;�  �  YYY0�  PQV�  ;�	  W�
  S�  ;�  �  �  �  �  �  &�  �  VW�  T�  P�  R�  Q�  �  W�  T�  P�  Q�  �  �  YYY0�  P�  QV�  ;�	  W�
  �  &�  �  V�  �  �  �  &�  V�  ;�  �  �  &�  V�  W�  T�  P�  R�  Q�  �  �  �  (V�  W�  T�  P�  R�  Q�  �  �  �  �  �  YY0�  P�  QV�  &�  4�  �  T�  PQ�  T�  �  V�  ;�  W�
  T�  P�  T�  Q�  ;�  W�
  T�  P�  Q�  &�  V�  W�
  T�  P�  RQ�  W�
  T�  P�  R�  Q�  �  �  �  �  �  �  PQ�  'P�  QV�  �  �  �  �  �  �  �  �  �  �  PQY`   GDSC         A   ?     ���������τ򶶶�   �����϶�   ��������������������¶��   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   �����������ζ���   �����������   ������Ҷ   �������ض���   ζ��   �������������������¶���   �����������������¶�   ϶��   ���������������������Ҷ�   ���϶���   �����Ŷ�   ����¶��   ���Ӷ���   �������������Ӷ�   ��������������������Ҷ��   ��������   ��������������������Ҷ��   ���¶���   �������������������Ҷ���   ������������������Ҷ   �ƶ�   �����������������Ҷ�   @                                                                 	   	   
   
                                                         $      *      8      ?      @      A      L      R      `      g      h      i      t       z   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7     8     9     :     ;      <   !  =   "  >   )  ?   3  @   =  A   3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  R�  R�  QV�  &�  4�  V�  &P�  T�  �  �  T�	  QV�  �
  T�  SYYY0�  P�  R�  R�  QV�  &�  4�  V�  &P�  T�  �  �  T�	  QV�  �
  T�  SYYY0�  P�  R�  R�  QV�  &�  4�  V�  &P�  T�  �  �  T�	  QV�  �
  T�  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SYYY0�  P�  QV�  W�  �  T�  PQS�  W�  �  T�  �  SY` [gd_resource type="TileSet" load_steps=5 format=2]

[ext_resource path="res://assets/black_cell.png" type="Texture" id=1]
[ext_resource path="res://assets/white_cell.png" type="Texture" id=2]
[ext_resource path="res://assets/chess_sprite_sheet.png" type="Texture" id=3]
[ext_resource path="res://assets/selected_cell.png" type="Texture" id=4]

[resource]
1/name = "white_cell.png 1"
1/texture = ExtResource( 2 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 64, 64 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0
2/name = "black_cell.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 0, 64, 64 )
2/tile_mode = 1
2/autotile/bitmask_mode = 0
2/autotile/bitmask_flags = [  ]
2/autotile/icon_coordinate = Vector2( 0, 0 )
2/autotile/tile_size = Vector2( 64, 64 )
2/autotile/spacing = 0
2/autotile/occluder_map = [  ]
2/autotile/navpoly_map = [  ]
2/autotile/priority_map = [  ]
2/autotile/z_index_map = [  ]
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape_one_way = false
2/shape_one_way_margin = 0.0
2/shapes = [  ]
2/z_index = 0
3/name = "chess_sprite_sheet.png 3"
3/texture = ExtResource( 3 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 0, 0, 64, 64 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape_one_way = false
3/shape_one_way_margin = 0.0
3/shapes = [  ]
3/z_index = 0
4/name = "chess_sprite_sheet.png 4"
4/texture = ExtResource( 3 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 64, 0, 64, 64 )
4/tile_mode = 0
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shape_offset = Vector2( 0, 0 )
4/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
4/shape_one_way = false
4/shape_one_way_margin = 0.0
4/shapes = [  ]
4/z_index = 0
5/name = "chess_sprite_sheet.png 5"
5/texture = ExtResource( 3 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 256, 0, 64, 64 )
5/tile_mode = 0
5/occluder_offset = Vector2( 0, 0 )
5/navigation_offset = Vector2( 0, 0 )
5/shape_offset = Vector2( 0, 0 )
5/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
5/shape_one_way = false
5/shape_one_way_margin = 0.0
5/shapes = [  ]
5/z_index = 0
6/name = "chess_sprite_sheet.png 6"
6/texture = ExtResource( 3 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 128, 0, 64, 64 )
6/tile_mode = 2
6/autotile/icon_coordinate = Vector2( 0, 0 )
6/autotile/tile_size = Vector2( 64, 64 )
6/autotile/spacing = 0
6/autotile/occluder_map = [  ]
6/autotile/navpoly_map = [  ]
6/autotile/priority_map = [  ]
6/autotile/z_index_map = [  ]
6/occluder_offset = Vector2( 0, 0 )
6/navigation_offset = Vector2( 0, 0 )
6/shape_offset = Vector2( 0, 0 )
6/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
6/shape_one_way = false
6/shape_one_way_margin = 0.0
6/shapes = [  ]
6/z_index = 0
7/name = "chess_sprite_sheet.png 7"
7/texture = ExtResource( 3 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 192, 0, 64, 64 )
7/tile_mode = 0
7/occluder_offset = Vector2( 0, 0 )
7/navigation_offset = Vector2( 0, 0 )
7/shape_offset = Vector2( 0, 0 )
7/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
7/shape_one_way = false
7/shape_one_way_margin = 0.0
7/shapes = [  ]
7/z_index = 0
8/name = "chess_sprite_sheet.png 8"
8/texture = ExtResource( 3 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 192, 0, 64, 64 )
8/tile_mode = 0
8/occluder_offset = Vector2( 0, 0 )
8/navigation_offset = Vector2( 0, 0 )
8/shape_offset = Vector2( 0, 0 )
8/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
8/shape_one_way = false
8/shape_one_way_margin = 0.0
8/shapes = [  ]
8/z_index = 0
9/name = "chess_sprite_sheet.png 9"
9/texture = ExtResource( 3 )
9/tex_offset = Vector2( 0, 0 )
9/modulate = Color( 1, 1, 1, 1 )
9/region = Rect2( 320, 0, 64, 64 )
9/tile_mode = 0
9/occluder_offset = Vector2( 0, 0 )
9/navigation_offset = Vector2( 0, 0 )
9/shape_offset = Vector2( 0, 0 )
9/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
9/shape_one_way = false
9/shape_one_way_margin = 0.0
9/shapes = [  ]
9/z_index = 0
10/name = "chess_sprite_sheet.png 10"
10/texture = ExtResource( 3 )
10/tex_offset = Vector2( 0, 0 )
10/modulate = Color( 1, 1, 1, 1 )
10/region = Rect2( 0, 64, 64, 64 )
10/tile_mode = 0
10/occluder_offset = Vector2( 0, 0 )
10/navigation_offset = Vector2( 0, 0 )
10/shape_offset = Vector2( 0, 0 )
10/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
10/shape_one_way = false
10/shape_one_way_margin = 0.0
10/shapes = [  ]
10/z_index = 0
11/name = "chess_sprite_sheet.png 11"
11/texture = ExtResource( 3 )
11/tex_offset = Vector2( 0, 0 )
11/modulate = Color( 1, 1, 1, 1 )
11/region = Rect2( 64, 64, 64, 64 )
11/tile_mode = 0
11/occluder_offset = Vector2( 0, 0 )
11/navigation_offset = Vector2( 0, 0 )
11/shape_offset = Vector2( 0, 0 )
11/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
11/shape_one_way = false
11/shape_one_way_margin = 0.0
11/shapes = [  ]
11/z_index = 0
12/name = "chess_sprite_sheet.png 12"
12/texture = ExtResource( 3 )
12/tex_offset = Vector2( 0, 0 )
12/modulate = Color( 1, 1, 1, 1 )
12/region = Rect2( 128, 64, 64, 64 )
12/tile_mode = 0
12/occluder_offset = Vector2( 0, 0 )
12/navigation_offset = Vector2( 0, 0 )
12/shape_offset = Vector2( 0, 0 )
12/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
12/shape_one_way = false
12/shape_one_way_margin = 0.0
12/shapes = [  ]
12/z_index = 0
13/name = "chess_sprite_sheet.png 13"
13/texture = ExtResource( 3 )
13/tex_offset = Vector2( 0, 0 )
13/modulate = Color( 1, 1, 1, 1 )
13/region = Rect2( 192, 64, 64, 64 )
13/tile_mode = 0
13/occluder_offset = Vector2( 0, 0 )
13/navigation_offset = Vector2( 0, 0 )
13/shape_offset = Vector2( 0, 0 )
13/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
13/shape_one_way = false
13/shape_one_way_margin = 0.0
13/shapes = [  ]
13/z_index = 0
14/name = "chess_sprite_sheet.png 14"
14/texture = ExtResource( 3 )
14/tex_offset = Vector2( 0, 0 )
14/modulate = Color( 1, 1, 1, 1 )
14/region = Rect2( 256, 64, 64, 64 )
14/tile_mode = 0
14/occluder_offset = Vector2( 0, 0 )
14/navigation_offset = Vector2( 0, 0 )
14/shape_offset = Vector2( 0, 0 )
14/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
14/shape_one_way = false
14/shape_one_way_margin = 0.0
14/shapes = [  ]
14/z_index = 0
15/name = "chess_sprite_sheet.png 15"
15/texture = ExtResource( 3 )
15/tex_offset = Vector2( 0, 0 )
15/modulate = Color( 1, 1, 1, 1 )
15/region = Rect2( 320, 64, 64, 64 )
15/tile_mode = 0
15/occluder_offset = Vector2( 0, 0 )
15/navigation_offset = Vector2( 0, 0 )
15/shape_offset = Vector2( 0, 0 )
15/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
15/shape_one_way = false
15/shape_one_way_margin = 0.0
15/shapes = [  ]
15/z_index = 0
16/name = "selected_cell.png 16"
16/texture = ExtResource( 4 )
16/tex_offset = Vector2( 0, 0 )
16/modulate = Color( 1, 1, 1, 1 )
16/region = Rect2( 0, 0, 64, 64 )
16/tile_mode = 0
16/occluder_offset = Vector2( 0, 0 )
16/navigation_offset = Vector2( 0, 0 )
16/shape_offset = Vector2( 0, 0 )
16/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
16/shape_one_way = false
16/shape_one_way_margin = 0.0
16/shapes = [  ]
16/z_index = 0
             GDSTp   i            �  PNG �PNG

   IHDR   p   i   �9�   sRGB ���  DIDATx���kM�?iVJ[R�xZEPJ=�K�O/��{���\T����=H�*}O/ry�y�5G�")����myъ���n�}f�N7���ٙ��f>�6ɓ��������!Dt]w�������V��x���Ǜ��S��q�ʕ�����(^�f��R,I�EdGޞdGN{�_������4�M��o��(�ɐ�ǼmۆeY���0M34No0���ہ_�~��ϟ@x#�;�'E} �ϣ�������ss2ǣ�@��@>��m�~�;�\˲�P ����i��mKKK|Ʋy�&/b�ٔʣ�w������4�M���(T��,t:t�] ��i���B�P@�P  ,..����֜��K�ǁ�z�m�8::��y�t�]�?���L������5����1����8n�6��:�={ N�k1����a���v��W�^����x��)VVV�P����*��Ѓl�t:�~�������fff�������9�<M��˗  �����>�<�w����v�ݿ�ʙ3gp��LNN�8k�t:���޽{���m6p�x�x lnnboo���C��/_���������������?~�x F�>Σ{������t]g���&�����="�GmP�<�G'�u{j~�Ƕm����6����\Ǣ���0������hD�y�Q<�0��j�������go0�V�}:��'O������W<WȌ|��fg$�<��BU�&�����S`��O��Bz"�1�H8�eNn��\3�5�;Qy����j%Wjr72k<w���!�NLK��HMi���5�)׌D���J8t��
yK?~!lY<�����=hmeV��:PRS�yJjJ1���&/�˗/��1�ض��߿�Ç0M���X__G�f �<৸,��݉�%���k���/PRS�yҤ��KF���4 x��/ ~�< ��Y5�M�:ujh�JϏ-� ���C,�ϥ�7��E��H8~�|�/Q�J�����QR�+�ק�}Jj�B�ih_��&��7뼻w�*�iy�z`�����<:k�Ց�JM>q�h�cUj���vv�x,;/ۗ���s���TUj�z�ӗ�<�?�'2Qy��%Vj
��Q)���@�O�'���-%5��ݨ�x�b	�b)���D񨍚^B�E�!7_5M�ٳg1;;������}0vX+5�3�w�<z�Z��4P��x���{�$JjJo�0?Z��7K�zC�L	�+�d������JM�Y����T���ۀa����5�Uy W��
����@O]<q����4f/O_�U�)�J\�0l?��v�l�м0� ^/'xd'f�R�(^oc&�������;O���TJM���8��Q��*� ��5�jr�&/޹�o�y"6bO��Gf�C}0�̈�~�x�6�������ź�s6���8�A4�G�F��g硖��x�HNԡ.�<�8�z�Ij
�~����ja�,��d�W8�c�y�8�i&�G��_?����,N��湓W�I�NL�d4*W��O�q�Q�bɩK�x���£�}����<�p���Ǐ'Tj"yMoHT<N<@�ԴZ�ǣ÷R��q�	���h���?9 pD��6�< 杘 h�����N_�)��p��[^���2ϓ&5ٷ���Ҥ��u@�d4*�p��oFYO�lE�x�`��oRR���UjrOJ��Nŋ�#���}��*���<۸�H�JM~C�������Ry�ܾ�<:ܤ&Q���I��F��"5��p���e�褁Ijr�e-����W5�RSP�d��W��\�J���{=�m��@?�Q�����ĸ�~˥y���%�U���2x�ü��JM"���D&�<��UjQn?���"�8c���l�'땡F���l�ǯR�l�+Ry�����l�y�rp�?�ͣ���<R���xY<�uJj��3MS:Oz��q��d�ܕ��JM� �⭬��@j�Hocc���JMY��d��*�bIIMqx�a��v{�������#�9*���u���P��&:I�~� w^��za��ě�
�ɏ�W�G6����KM~��W�
�c���V�x��fff�7nO��_�����ϑ�����2T�y��Qx'͎�l�HI�0�2�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow_sheet.png-f1daab1cd439684b87f06b3161a6fa25.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/arrow_sheet.png"
dest_files=[ "res://.import/arrow_sheet.png-f1daab1cd439684b87f06b3161a6fa25.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST@   @           l   PNG �PNG

   IHDR   @   @   %�   sRGB ���   "IDATh���    �Om           �n0@ ���     IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/black_cell.png-f8461d86bd1f00c6ec812dd990a2efe1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/black_cell.png"
dest_files=[ "res://.import/black_cell.png-f8461d86bd1f00c6ec812dd990a2efe1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  �           ��  PNG �PNG

   IHDR  �   �   ��   sRGB ���    IDATx��{x\�y.�����F��h,K��ea��c�oSB(�JSB�\LH�IZ�N��iȅ�G�B.?N�4��P�1�����_dY�ݒ<�F���hf��߬�=ɺ��i����̞ٷ����~�����7��K�Q��)�=�m�|��|�֍)�:�������8�?��,�?���+S�2�"u�<;��K}��g������~r#J��B~*00��̿�~��G<t�f������
 60J�R�£O�~+���Ky�wDC����KԺ?+t����P��@q����@��Cwo��7q6
�3�o���,e��lD8*���d
``�n�΁����V{��������l)�}��of򐲊��� )J`�
 b��xWV�1[��;׃��g>S
@���@F�ff���J`&�,���=�]�0�ci=+�� ���s�*|��M)��t�& G���߹6�����s�((t�i=�)!� �W�����R��J`ο��_��gj8p4 x# byv��\��奞i6�^V 07%p.��oO�l'CN���G��4J�Z ���4�W���'ݞ�/�@�k����ǔ���A�0 6]���F] �p=��s�K�(�_� �>b������P~f3�0}%0N� &���ں��V�
_��r~�AG��3��}��>C��kOg~���bH;�Z ��0��u����+��k=�k=���Ȼ�ϣ2�1�c'�=��~���z������v �d�����;S���nۀ/ܶ�C$r��=06�e攟�46M�Cwo���5:��{����6�� � � �Z�m�y����n���&�� \��e�;I��0�����{i��vc�՟	���y[u���^�=_�O�O���O�j�0�m�ul���}f#&�%/��r�F�@�u��hk�*�X� �s`�)��3���L��J���\�lY�S�yb�`��zce���& S��� :'�PY��A)����F"���%Br�y�˦�� T�Ov���Q��U� ~>���<�b;+��n �'p�{]�S��X��g�h?.�q�# *�Dh<�4��z���Z�s��U�f � �c(y�������3��Ǐ�0䌼 K�V��kg,iҕ3��NTc���)��g}A��M��X^�xCt2���C �~�����H S2����vs4����4���������(O�`w���)q�f,��Xf�]Zز˗hM Z���ę���>%��,�^���	��0�l	�^� ���eH�6����<�f�ߪq� � ����� x@L���m
�����=���-6R�A,V�9Īj���aV �	�t�?��Jr���<� ��Y-���n��~ ���`�_dbe��xf���a�hM�y+�m' ��فO�2Q��s�c�Q��� ��T*B��LܱC�x�7Y	�� ����  ���*=����-����eN�MKXC�p/��]���c8A2�@I����kȳ�hXH�����1�<� BO����i=�����I��� �p�� x�7��N|lOgMe2&���7�I�y�ހ�H�{|�) _0�m� L#%L1a2�h	���gH~�w�U�cM�����B�� γ���U�-�oN�*��E.<౩~Cʉi�S&q��`�@���B p� g�D��螗I�0����m�����' �4G�,.ך�9a�;l@s5���`�y�:�a,�n�my��������Jh�uK�2�X�����(�s�0��v��+#؊@��@�X�_V�����O �˖�0�x(V�@7&2U�^$ym�08��ܻ��@�3������Ͻ��YJ
g&��6��*l���v���ӁE	�w�ÿ5<���<����*�% O���ż���~/��
�c���:���O���74�b)���\s��{ �d[�+�S \ ��6�o�^ ,}���HT�� ����k"�D2 �a%=#��+W>R_��x���;��h�zD�i�I�`���s�c����8��fXU+��R��8���[�q���4M�6E�K:�2rf�4������Dc�]�R��	�#���yѕdH\��# �(�g�S^g@�	w>P�#��K~x��c����Y����u~%�` �CS��f�I -��K�0C�{�ϻFL��c���r��;_⥃$�^&��Q�Ó�`����}&9ӻ�G��J������f>4���K�9ɾWW"q��0�s�����k���gE��&�æԕ�WR(�{N���DSs��C�yv)4��=�	p���^��T�l���5��0�������_���l�<Z�%���mg��c!h Y�k�yl�8�5ĭ=�ó��v+�:_�P7���l���<�qg���w8����72��S:c���\`�~u�������Y.0<��6Hk�� ���-�5|���w V�Q^ �y�F��ŏ�
�i)�n �BB"&�8gc �390��R'�h�Gcr(Ǜi<���0#q�Ţ��$��R���"�����i
��3��^�������}RU�?�ⷥZ�.P�����6DC=
����� -��#��ý�@�q�-H�p����> )�1{��� ͩJ�3c)��r��iX(q�Z�ܺ	�K�	�	��D "Q�@~��s�j��[����{4��E�)D�?����x�#?�0(��BfUŴ!��q�աq�+��q�;'���>�n,��%q�%&��c64e�z��-��!��Y�D�sW���RMe��G�٥{N��K9q[Fv<D�|hZ,��A�l��rF�MAH������[u�-Ӹ&b�W\Rz���z�3m��*yL«�\��#}qp�4��g��� G~����#l��U�i� �#���z�ܟ����<�{�k(���)U�wx��_:��e���P喸{�	��3{��L6�qR@�(�,���2�{���EF��.�Η��� �/ Oח�]��֮�a�)�`�����ֱ�!���� V�5dm�[�@�[v�j鿍h���}���s��K50k+\��W��9l������a�����6 w>��Car��1A� &���1>��Y��4a��n��t7�4QU,,<�H�o�uq@�m����&��R(���2� \Z/
��JTjKI,]dbx��{8��L���4g�/�n|̞�	|�`'���~k��ˋ$�Zg���`2���J� /�fi�S¿���-}���D���ȡ��hlI9�|��|�Ǝ�����fA�xn( �:�fy��vx���&��������\;=ˁh���޹��c�lt�}�1O�A!���*���W[���3°�8�u�+������7��b���z�`Y�i���N���1�m\y��!�9ű�����><���al���H�,@��M��~�����2���:���Yn��:':�(vv��jNy������� v%��1W�9r�?J�U	�Ӗ��F�{EY	�է� {�9^ka�^�6*ȉ-�V�-�𰄰�ڇ]�ng5{��dZ�V��e8��>$�u�=LFU1���qf�ۮ}/�sgn�W�Ηp���s8�Y���lF8���+���uj�h��D�f��4�VԸ��rM��K5��=��'�]��� �g�y�D᯼������0D6�D$�� 8 	;=-Eyy�X��g��	O�S�j���*�h�;_��s�� �<�W�͐A�-T�u�t� � J&����D�����+\t��q�f�gg5,J�ˇ��?FL0�N�tE��;���d���0�FYB2p�"�5�Un	!(�������g��z��f�0YZ.Qr'&� R:��Or�eN�;WT�_�t���WN�-�ν<=�a$ �Rn�o{F؟�����WS��g��:
sē����'��o�d�����q�Mû/��ٖ�M�����r�\I�x6����r6��46�??��xq�[�$t�����L8w+����K5�z����s�1�n�a"�rlQ��ˎ�6^�0���$n��L��yv���L�r�c��8s��� 6ח�� ������MY)z�:�'(!H	�#������0��|��RR�a��}^���(<��K%
r$�ʇ�3�ޓ��\%��o��?��n�e˫��wN���ӡ�J`O{\�5.L���D�*z���F"����ju�� �_W"q��f�"����P(-��pIT�kM}�����0���"+�-'��.�k-<v1V��k	�_�à�Kv��CU�Ċj��*�~���������_Uo� Z�3]���A%��1�c�rID�l�] /odU����@�萠�u @D�ι b,��ʈ$�˵Ksx��OlOr�+� �������­�؈_�:�J`]�@�yF����PU<�%��R���Ď�q��"�����Q ������m�#��D0d ���8s�H\�?���!Z��%~����$$�;�X�e��^+8�N�H:Xsji����{�V]n����E������ڇ���l\(baC�9�n��N���j�
 ����?͵/UL%įZ&�9�0��$�-������L��"@�0�'���[א��ۏjh�,�g$Я\Jn�+/��ܸҜ4Ѓ3�a�XLxt3��!G�H�Eq�Q���\m��n�8�˿�\MU8 ��Gt��0������P"���j���fe�N��B��{�0���  D�ر/L�=}��b�����������-uQ�<*��
y�Dx��cѼ��l�w�=%����0;aTR@	�s����˛cJ�(W~��N~ \{��g�ᩝZ���X:��]�8|�Z$B�p� ��a���S���E	�w�C�Z� �Xk�D�J$�bc��y�=��&K�˿z�@��*?��>���|��d��m���?�*�4h�9	�>/�U�%C�k2��$/
��MQ �QW6!7��-��`'����"�.��gw����.�()�E(�����_�5�J�� 5:M%�u3&æ�Zz�cE����!$Y�M�N���8C� 	�g�a�Z5n���у�:��g��? .XX0=��R�Ġ�M[	X��w��q���wE�#}:<c�V V�4x�By@bL���6b��p0f�} �:�B'/���@'��!~�6L��G	��³n�q�'(�78�� �H*�yA����+Q��L�'��_oY���D_Q>=Bv����ۼ��ްPb�	� ���+ +s��z�~ÁN�-=����Z��u���C[�Ð�!(S��l�ۛw�������Wy2�<{<t]�@A��8)�{6Ŀ�\%18&��Ǳ~��e�� ���\D�� ��B�N�2���RKa'�!�c���;_��ځb
 �f��3@��X��j��~�G�7@��O^j� '�=!�='9�<���a���*��� CK/ê:��ya?)���	1^د��C�e�р+����Am�l���Sp�$#�x�� �=�_ �M� ����p�`�2�a���#�ru���PC�� ��� 0L��ܹ�� �k���w���Rλ�k7n$k>(����ǂԕ�i�?�OrXG�e:<<�L�O��Fk�n�DS�LI����X5L��OS_��I&cR2������c!�9l��
��UD�V�O/�s��a��ص���ĠOC�C�k�g�y��ы��FD����n���>V�!�8�� ��	ƕ��ڇ<V(�?ʰ�^�J��Σ^��=��p�rY\�]�T�m���ټ��l ���ly��B0D�(Na��ӣ��������J@H�W���,+����ga]�Po>�����:���3T�$��M� 	���w�3�ūU��KF�0�	���l?�`ׁ�֙X]�z�����kL�����x41Z@�!��0n��٠�w�w�ߥ}�D~e�d�V�^'�R��v д�B}N�@�H�7VTDL�����a�a��(HNd+o l�6 s�"�` ������ep���1`È�k�[���ckƂ8�1᯳���\i����5�8��{Oq<�K÷�K�K5꞉�OE(B���#O���ohx���]'8�ک�?�H�9;�9���)��)��S]�z�Ο1��Ё���Y��i=��ӰP�6�c��{6��y���� á88n�X��3.�6(��k>�ւ�B���T��+�k.�c-=�����,i`��@�!?y�o8y��쳠V���W����g�wɠ�ABҹ?�K��M�.�= ~��L� "��v�?RK(�TI��EJE�.�k/4�� �GYZ�7v�qtxXl�X��V�S&uN�/�h8�Ou�:���k�a<�� <2���G�S~y�)^հP⓫H�xa��{����������hޅ��wf�9c�/��~Ə� ��� x^e�g�a��YV��� ��TN �[H���g�s�O}���de�|�_��L�7�W�U�~�?[��;�s�8���:)��B
8d���������E���c��n���8�TM��8��V����'g��rypA��	ƴ����ۈ�MU��&u�Z<����uz�!0�<
e�}^���(�J
$65	�~��u�[��n�� �@g@�0��W/;���)��k���q����\VA%�]Ì������!�>?�n:��S;��-�� 5��~!�r��;�gX}� C� �*a+�*��<]Y��B��I��2���6h���e P������XU,cu�S��JƄ��i�b�q�ﾮcwG��hT�X}���Bc)]�P$�].�`K�&��tgɯ[Zбj(\���B��?��?�����qD%|�xi�i/s7��R �Iȧ{@�: ����"��{�թ�9 �'��\���\��\	��g�} ++ݱ�"�9�����| ��cKi!b���|�M瑵��?2p�7\l���檊�0�j�rF׫�)�ʣ���k���1p�&�5'�J1~Y���J ���|C��̥,N�9O๣}|3@���G9��=w��5�b�s2V�ƽ�A+L��L��%��p+j�bs��������`Y��c������q��n	+v=yX� ���kŏ��� ��?z��P �i�W�h�%ߡs{Fz���� �Hy9 b1�­f��o�U瓧�5�R�x���o����2*-��O�ͤ�O�ԅT!'S ����*�by9�T�M	cӔŦ)a�6��xH$4k*�0�hH�?�3���^?�M"fZ0�
���#&����?��r�|/�˔�c�|HYyF,|o��&@\�%J	4W��+I퐞-J����E���J �<z �l(�\;]�4J���O	I��$���;�gEWgy��3��� `� {�K�T�(?����>�� K~����r��fp�����"\Y#6R�啴�zFXI�[��95�(ݔ��DE	�"&%������T�#b��-(�C(y��i��3>�O"U	��"�Q���6%�ч� K|u����Z�B���Đx�J����a��F;kX(Qꔱ2�tq�L����:	 �� Zz��9G�s
�lv�l��	�������|L� X:�X�C�EL�ǀ�1|ʮ#��e�^� �0G~��C���
V��u�i���Y�"���k2$0���C@r��?�gJ	Xg��Q;Zz�Ǆ��Xk�7_:���@i�i� &=�����s��X_@v&HԤ���a${]$���xv��gwk	FQAU���u'.��;�߷�y�aX_�||�|�����~�*$)�.1S��k�X�":�� 0000p�K75]^yKf�@���SaL=���xYW:Ie�{N�X,~�b��u{NR���iXU'���\}!��ab�<��)�t���V��'��@�D��)}�Q���RV9:|ӹ��ς�9��7�q6��
n�� p�);228�H�X    IDAT��VY���Y����Wk\�ʾN-m�<���g���%�*���Q�����9̽ �P�� �c���(!~��!G�,t�I�����i�R}ؗ�b���C����7:-]� �;CdU�8��QIhc����A�R���"Q�jR�xUH�] ��짇��F��U�(<��2��p��M+���/�G}��D�����V�ĭ���.�1�!fGW�i�����X
����Ӯ#!,,$�$��n���M�����_��t��
E�N3"��b��G�2����\�DD�#}d,�:��u;l�-�	l{[C LJ��
���
�V�?-�l� ����� �?7W��=#�d�o��u�#�8mT����a�AG��`�	�]'&?���*o���~k�q�>/K(�T1S�Q��͞+�u�"|�؀���\?����K��mW�D� n]^-_�|�40<,(D�3���ߤuK���.��� ��M!Me{OG��o��̬�x� Y�u�A (ȕ 4���u���U��~�h"�$s�Er����Ġ8W�t��)
S��1��jh��!'�l
 �vv��!�@��$N[>Щce-Y���fD�O��C�]ܰ ����:�*N� 1\bZJ��[S�{�ۏEʍ+cy�+ �O�܅���O�+\�(/}��ӑJ��o���kO@rh�|PI�L[ޫ¼����	d�`��;9Ht � LE
�Χ"�_�!:��}lM}�<༰IJ ��HV ��� ^{�ʣ�?��3�HN�(����=��H�x�EU����կ�tg.q�����@L�[g��"�jL�(���PU_�j��u�=����!��n0�k���y�]��J7�xv��v���\-k<�K��1!��3°,�7))�rٗr�3��J	kY�Bc���F�='��rQb��7-�͕1���a�w�O�vĄ����!���4�\����WN�'x#R���-��.��g6bu=��'b�ˀD���u%�I�k�ͺ���E"����3��2a�ݝ+��_z�8p��3�#CPx��&����Rgz�Ps��5�["R<H+���,���O�9���*����LƦN��L_�`���l��T�})���Ph�X?C�(�͗�7�ڇ� �+��)]���bK��J��!�&�zz�9Rj7�L��u%$/�{���)��,�� ;sS��g��Ȧ�?c?CI1�eh�+��Q���YY+c.Κj��a(ȡ�.���d M�O팗H���� ]�
C�}�,+�ڢ$rV��#Q`�/���X;D��'bsK/������<�-����;�w�}��
�	 /ȑ��:�>��R����g�_�L�m/�q��<������{!v'N����W <�آ$3��X�D���Ie�|�M:9VT�~�B	����{����	�r8N�uES���P^���bev���uNt��ɓ�*���u�7,�f6w>��R�z�[u��w�"f89s�k���OPZY�:�"
E��6��u~%ۏ�������O{2�+@!\��Pϊj����;����J�;s�/&��\�bɇ"��*y��
�������>�B�'��3}�*��3 ���C~k?CI#1s�l��q\�L�X?��*v�<�ee�@sY�?xC�5�$kCCP�X����Pg���h?��~FÆ&ZH*A�B+�	���]�b&�*��l���">���?�{��uKD�����G�ؚ
�<6�g&��	BQ���4�E}^�jX(q�
B�%�Ηa�\:Т�_������"��f�w��?A�;_�~��N�&,G��X0孛`iy\��:%t2��MU`B&&��!�������z8?��B�W?�uM�Q�<� gؘ�|�BKM��F���i�k��_D��	�]md$sF���BrG+�McՏK�\*p�j3��{G�*Ǟ�h�AUG�����C=k)>�Χ���v����<�k/h��1fKg.	n�S��6��A�啉��k(^5T�C|�Me��U�C�u�R;���.Z L�Q!��^ReN��7�C PQ4�����o��;3�J�Gѹ�T��H[w��cu=��ݳ�XLuq�!�*)�h�ʼu�����c�|���Vj��=dI6W��0(^��F$D��7��m�l�A�1�|2��Y�Kƽ)k�����4��j 1WCP�~��aem��k?C��g(ȑ�z������\j�
�?W���ܮS�w��*��^ܭa]cj�qHћ����]� X������ӏ~�|A���|�B]�����9$s��"W�wr���:���54nŮ�{xB8�0�L �G��S�y��A��ʋ$V�K���b4�W/�pL�B3%yc
�l����~e-U'~7�`9��U"�Z<���]'�Ǜ�D�wE]زB�����צ�A>�,�<p���/A�OW.��3m��S��h�뜺��kήK�!���P7�M�,r�Ǔ?t35@\�)�^�ZJv]�z)�I�tPI�t���00Db���	��3?��!M�r@ɡ.�s����{:Ɨj��<�����#�0 �����8���i�UX���x�GA��5�i"�"Bt��C�VX��]���?�m^�Z��2<<����lZ�S!lP�X��@�Fg�紓ca�#���r�t�^(�|o���?^��Y���?AyP_8�7:E-�HX�=�vl���ʠg����d��Yby���#<��Q7����)�TUL��Ϣ.�ϔh,i�P]��/$�C�����4�� H�,5<���xx�1�o��E���e�c�gV�M����R�
 m�O��?�~D����Ȃ�{"��ن���2|�u}RJ�l�4u��7����A�Y������_$�����b�;�=hJ.��10T��ݙ�RÒ�{7p���?�AcS]y�Q�O�>�1W��H� ����()ı�q4ꞻP�D�+���aU٧�6��di&~ݦ1��As)�n�H���樄*'�*<W���eN�+�g�اt+��EQ{ƴ�?�ña	ii*���kB#]rW��$B�7�i1d���
n�%�ʒ�D�(k��5��XJ�B!�g]���A�F��Z���v�h0:���H�����boǲ�������y����ȱX���@�
���\���b*/��nd���
������ȅ����&��,�$l��V��ٟ��f�`wEK����]}���`�!�C�1���X�@!�&˳S"�����~S�MeTm4�ꗶv٪zq-��)HI�������/us\�t�j��@�{�"��H���~� ���F޻������	lX���<�%�2�#��J������ց��F*W�W\��Ao��v�����;M�����.[ؠz��a���0���S-DEtPx�����U�z����Pq��ȡ6�x�O����M<�u}L�[���yO��qo`�qoV�
�>/���q��<;�6�Z�
��R�Z�RwrI���V���r��0N��nc�Zs��U�)UJ����c�q��4���2l?�c3��@1{�v�?���k�;ٷ/Wh
ܢ"q��h4.L����?�������P7Ǳ~����-��V|�RrΧ���<_�O����7�q\{a�=V�t��V(
�d���=\y����y8s�%�=+T���ae����aV��S5�٨B���)s���s�ifhg
g��j�T�B�K�ԁN���ɺkX(�6Ȱ��ㆋ�V��P7G�p� 5%̙+�g򢝴BPÙ���%�3� �\
���1J�7P���#dn��H����CF+qB���hִ��p���p��fӤ���L0R|�+$��Ŕ`����N�3��yY��� cj���I��4�G^�a@09M�;w�C���c���;��(7Q��պŗ � E�h�2v[����=�7���]'kpu�̎��l-)�?X֓��>���&VW�z�����~����k�rg�'�a�����Rg��@���D�?���x��T=����hH%/�AH��C
4WQ�}�<�^_"�7jD�u��Cwo�5h�)
��m;q���Ӎ���%?��e�]m�_db�b�r��aM�ཧx̲-ȡ���uRk_S���AC�C���&� u+�  �F�l�9�eE�`�X�@a���Og��Ə��n� =�vX���M���OP"�@g�ZT�HQ�K��w��#��P3���{��sV��8V�
�],�z�b!ǆ��=3z50|��ft��A$uY0?�:
�W7���FY@y�/��@�F��8 �0\ �T�Z72ũǏ�sxCDGN�i�Ҙ�6��í���W9�Xk�B]ӝ���1��ٝ��j����X���o ��"��⎈I�#azTx��WCS������A��x��+?����|����ʷu1���ܙ�R�~�VT�Ek�WT�����I�p���uԇ{9����C�]h �-��X �)��B���P܄� wRŔ!(�����:5í�N�� $=/p(�U���f8���U��;8�6�v�����&����r�2��` �9�>JƲ�n����q��)J�O��1�H˵�@��xG���Ĵ�{g��T��(�
�ˮ\
���j��.++�gFY��5ܲڜ����a8v��������K�@9R,��>�2[��\��L#7ǆ�^����{�a?+J
d�a�m�%z�a����X�~���?}�e}L�[��c�X�~�ax<N�sb)\]/S����m}!�x��)nj��5rM�բt�țXYk��a�	�#}Ԅ��1R�IY�8�Cc��&lZf$�î�s� �O��>=#/��1�#7�ʥb����D�����!ׯH,\�Hb�"3:���v��8��q�%q���2��Z8|!v Ժ�/�ӄ�J  �.q������\@����$�u�<;Y�+����3�P�s�:��o(Ѡ:b�	>�p�m���wi>����	X�o����-�!:21��涝	ՂC~�� B%�"6���0���ڴ�5�۝/�0bR痋G -�ei�|���7 ��O����R}:O�u��=+kHn�'��!VUV$� �i�����4'
�i�"�qE4�� [��(�� �.���8�]� *��34�ɗ�U9�7ԝ/QWB��K����""M�I��:�=Qr�*K�p,l�?�L%L��y�I�]WWt��h�!&O�Z��a*�q�9�fp�RE2��4e�b�7�s;M�H��X���BQ/�d��g��Z��I��������dѴ�)i���%o�Χ��+�����߾~�a����#�K�e�i]\W����a� O�ƋŔ�9����q4�;��Ա0P�9�Q�C �����i�P;{@{��*�o8�B@V#�{��ۊ
��@���"e�u2��K�:A�1%�����V��m�� b��.�k`�	L� ������=�1��ɏ[�� ��P��L������p���p?k�sy�DS���A4��{�\Ay:5�u��X�����%n��g���9b�FM�*wbN��0RNd���N�C��}$�6���fڱ�V�n�8���\M����Ұ����Wեw�K��z�����i6n� �ͫMT�(i1�?���(�n	U��yi��k'��U��ٶYQMa��^�_�ʳ�����V��[n؈�����	��VH��a%@tF�j3�� baP XV!w����%=ݶ�ܼ[�����8���f��\+Xus�fA3D�J$)�Ǟɼ	TV��.����<&��Z7�{_�f�]'�!��)c�5w��g�����8���x>��F>�̕���L_U'���h!�%����Ը)GP�8r�GK?��!y~jS�	!i ��E�j<~��i�
�=�{Oq,���zY��+� ��P>�z�s�P��"��Dw�:�ax��I��hj����ۏ�Xs�Z��1�w4�r�Ù+�lxZV!Q���/�j�fxj��.lv�U���m  � �$�7�~] 5�Y�]2�K������G����J��nۀ�e��K���t#"I����=1(>c� %�����M\��/�Vȱ� 1g�m<�˷�k"����ι����!���4H��3;�!�p؀^�C�S�w]����_� b��׏p4,��1�;(�24��@MI��^S.���R$��0,.�?hJ��G8~�[�j���J���H3]74MDse�!]^1���~X]G�Y� p�e&�ʈ'	I��'��@'��bc������!�x��P=~��YQ-q�e�o�4�S;5<�.y2w�5R�J!<���'��b�9D���V� ������b�����=�������P�-l"'l&
�t�k2���iv68y�^
����7[��Z���~Ev�?�J����?�k�5ggo3��M�2�ȅ��I��� �t�k=~��,�dt.@k�9Z-4�P���#�XXS���"g�iy i��>�ʕ[�Af�6� 4,�h���4
��7�4�͙KI�<;���gx��x�QC�؊h�ed��^3���W.)5?���Η)�[��ގ�W��+����x��>��9�o��8%��%�ԧ�*sFL��>�^h,�w���B�4����}z# [jvD�Bq��v-������{x�:L��p�"ZTۨ<�g��^Zk~�Wh��yn6:� <�u=FC@�C�b�i@�$%`�����t�DʈL#y�gq�2s~TP�>7���|����]��QW8���I��� S�.��Fڹ��FR����r�M祗gC�B��$���Ab]�@��	���o ������t$U����3o�T�N����9v����
E�v�5w�i�+Im���K
h�L�(C�[� x^}���L)��s�9���u�0 vSb����yC�+ɣ�i�J	�i�x�C�~�c-���0��J�c�54�RL��r������V�L)���^��Pb�#a覄�7�{��K�͞��g:����S�91��h}	)>��x�Y��d%��5y���bE����
�th(1�� ���s���(����c*�U�m�H��YQႯ�G�]���Qi�!*�8��lPU,c%�J�ՕH4��8�3c,�,�g����*���wO�E5n�;� M��nJ�z��i]��~g+O�C;|��3���7t�]LI_eE(%Sኳ)�r��P��ri)0̝�<"�,�{@����G�|J����GZ�H���aWp���MI_Ψ���)���x^��D��Ą��x��GoiX�H3��QJSy�'�8g�H��0[9���q��.���n~ո�|מ�JԞ������j�$���e�T\�(��Cl^i)��f7��̝�  8�R�{oi�8k(�Z*N=0�+���ժ�T0��J�8�x��x�-�9@��li����}WEX��WZH
 ݤ���܈�2�P��Tip"�l�\H��W'Z��Ȭ^���Vw>�5�ȃ��]yT3nM��D��祲Ѱm�j�h,�1Z 	�@K�%�w �H����O3�/%ñ����U�����CiS�ĵ�� j�xv��{[ULy�t	#WUS���x�0��2_����H/��g/��Y����@D0��`@y�W��Ǝ�:��˽Tt��n_^�?�hy��?���a/�R͏���ن��7p��_}i�֌��ͦѰf�ߦ� �k%��C@�ڗ��� ൳_��q�,�a7J�Oo�ٖW�� �'���k��a�再g=ƚ�T�9[RH+�	y!�ς;��J)�1�ُ���� �F�>k���*���r��I௮'�
QALG3
I��vCKojy�%��l�d0X�H|n�)�m:�,qW.y!�7]2����\`��&��N<w\q�daI��kM�:�c-�I��/ok�a6ȇ��Xd�RUn�kK/���[2���BS�Ī:���8|A�{�#�ؔ��������(��#�6�=�m�L�Q@�d(EL0���9��:������7~<?咕��m��g/U��SPE�2�#}�����tqY���3�(�}^��fx���2Q��� r��H�Up    IDAT/�@&`Z
 �d�6 tQ��/�b,~ Y����g�
qF�M*��~�� +K�m���5$�D�F4β� �S�Z��jU	�'Wͬ�Sy�h��[B�7�N�c����"�V��S����l����E{O��'���j����ݛ�BH�T��ϕ;>�xo&��N�<ɶ�|��C��'�sH�&{����ege�<���!��	܁��N<�Q��D�$������'@��p�J�%�&FQ�]�1 �239�i)��Ԥ��
r�;[�ƫ��\y�u�go��)Ҵ��a��?���Ь�kZʹ�B;o��T�=[%�)��B��ǮœF��q������� &�ѐ�/ ��³���ny�;m|���7@cH�iK�̚B�>�] ��8��U�ě1i~C���$�4]^{��=a}/I\��@K�����&5��M�w^\�5G��Ρq� ����Sɟ�T��7��#7��?����*�t�lE�>�K�q��7��'�T��@���"�32N����)����j��⿡iq�D4��7�y4[�a��Ij~$�R�z �1t��<���|��� ���?UB���a�����:{�c������<��M�G� �M�k3�9����	@JpU��wx�s�Cb��O�Et��1�4eϊ�l���&E�P�z��7�:09��?v��G� 8%���M:᥋dl $������O�(��7��R���U�TQ�b}�Np	,c��a�iE`��|��ǹ�u��֪�UA�0�����sJ���zT�V8l�0/) �-J�5,$���9�18s��D�U�_����1�TU,����:g!�����`YɁX�ʷ��i .��>�
o���.67#:�`xަ�۝C����g�"�ٮ����6��$G��L��H� �b�G05�$zK 2ή� ;��kR�c,�ʃ5[L[ă������BD ����E��G)��,�<;��-) ˶ ���v->�D��<��1�~)�A�v�/�U�SYh�B"O:�e��Q������Z���W.��x?�g��ˋ$>yi\��cx�����JJ�������2!�o=�@�\ܞh�S�8ܣ��Kᵦ(����M<�;js����rq���;�Aa���,X���q�H;n>�g1r`~r �-���������N�Ue��u*��/T�4 b
@�RE��l���*M�mi�d�!�y��g�Q�k��K���:���%������L`�p�Æ9�_L���ڜ�V 2U��4V_����f,uJ\y��f��*����a���������3°�V&$�~�˽�Qf���~^�SV$�BV�U��ʓ��B�eSO�RH>��J��w�s�j�q�K:���X/�`2|T���E4S��5��.l��늙�72�+�����n*���Wr��W�n&��K.Ji��%�4H���̬��Q*ɶi��1� TOOf��;�u����7��	�WA��	��G^� �|�J䌆AL�NU�U�������Ö�xQ��ާBc� ���J�	f�7�q�R�"!�(�RUlbC�@o?�����/���U["�q�{�=��!���l�L5����N���։;_�̜��J����'���������OE�g��v���@��{����b�钹�f+ڙ�9��e^`r/#�E��6��og�т
�J�����w#�s��Yf�C�u�U&���%�������Y��=�6ܺ>�=3�����Rn����𣷨1�� ;�9�|��Rb��[���R�� ]�G3Q�-&�� ृVՉy�(
�g����5�e(Zac�\� �h���h �����vˁ�b���� ����c������GoiXV!q]��)�UA^�{ިrt�ʌ4�M��
�s3R "�zbU�1t�_�6<�b�����u,-����-ȡʖ�y*���%V<k-l�z�,��XB�+C�E�#� ��K�ėw����1������EƬ_��A� `���V|w�����v�6��\��aa��?�,6��#�������=7v!R��f=5<r`Ϭ�BR�áni�P�E��8��Pu�PV� �\Zk~�؀��>����h���R��F˪c�������aNA��q~�_/�3�gw�P�`����f�L� G��b���/�z�z`����fʒ~ஸ'�p+�#+�|�������^���jȳG��t�(Y�,J[븩TT5x��>4B��W/���<��q8G& Y	̖d�ط�H�fS��M:`��o��l��ݶ�~*���܎��ǴPe��C��/�]UŸ�¾�4y#w� ��,�����1�m����:5�pL]m�7��N!%��O3Hc�}$��b�
���v&@-N��ť2J�< �/6ol]0�U&�E����\Q�&#G�̱I�2׎��o��!�8r�-����|�t�-��PV$	� *ޫ �V7�w�C�OG�X6胫�3�^�ҝ/��[$�:��Gz���.����)�lAM�j(As^��=��\�����_��������{o�a������a�qD6E%�ܢ1{����z�1�֛�6M�^�Z��$6M���M��M�z�\���lF%ADEY��>,�0�,���s�aDc~�|^�y�g�>�<��yp�{@�^J�{��Dii�����x�Ro=G.Y�0�<P��b��U�T �G��
]���\��c��.b]���1�*=\c����Uy ���>(F<U,	��ԤO��á܍>�G�����9<�=�|j��1)��""+��xs�g�]�-�<"�^�zb��<ؽ��}�����gN�z:����,�۝x��џ�5h�!���~�kD_����H{���|8{���F9�<�>��-��8&�%%��~�@��'�����8��W� Ą��i"ƾ�<ؿo�\�^�|׵���?�o6��������Ħ�S���xŹ��^jڜ����;*��ro��%0�8(�oqu� (=N�_�u�i��W�x��Gx��G�
��kA��l�|ס1�^y��w]ȵ5Ǉ^^�z{y����Oc�O��]�\�J��x8	�oq�q��7��2ɱ��O���Ql��R���e�������ׇ�����>���~�1�`�b��_ә\����g�Í�T����Pr�`�W�@�A�Ӑ� /���}x*�P��e�����;���w�� \���x�o�-�ŷ���[|��p��e˳.˺�����h�]�۶�E�e�⛁��)�e!!�3B7o���8�o�-�Ę*�_�첬��/^�nw�����#<<�e�/�bL��zaÆ�DEE�,N466�?�*����ر�g��w�,wT ��=���\�۶��1=����ͮ�|SS=.4�R����9}<0װ�Հ�f��GMX�k�ɷF��c���-[��r�W� @�/|3��'�x�UL�VC)��Fq짧�';w���9�1�s���e�Jj�keٳ���sK��!^�`%0R`�+ر�s��x!�"e�@__۷3�͍�Q _==J�J��p��^#��UX�6����z�p� [�l��­[��,����j�������Ha6l޼	��5��e��J�:,BB|�z����//غu \�u�7��U(��*�kE��xSl޼�eY{{/^�����___�� BC�	
rm(K�7�
 �U	ܸ���g\���6�j���N�V	�|P>,�#"Do��~*���%3*��� W�x�c�����#R�xy]���6[���w�1���xh��s/�v^nZK�n}���l�$W��T	��݀���9
�m۞�������1pm�R)n�}�x��?��(���1F}�n�t�� � ww��=�ڍ*�]5�p�Z��Я|����TU}�(Ԃ.OJJ��===/�_��Y?�6=�K/�<�u�W�p75�q��1��o�����v�/��q������Q�&N?��������@�(������K;(�5��@��r��l���e����q�?9u��g�O����C���nݺխ�}-�.
 ��G�VTTt�h4w���j�ϝ;��(ql߾����.I.�� β��V}q�Li�NǼy7�T*9r�(��U�'���%�%�tI��+�q�0����ʠ_	��Y�|�($�B��]����-[ ضm�0�;�l.��A��o��V�z{�9�6����\Z�M!2�EWW�|M����o8(��m%�_��[���������š׷*Ξ=7k�])0!&&����MW����¢���R*��|sƿ{`�+�ѱa�zl���v��C��ý� Y����C��+V �����X��9���.Č�����0mZ�ӗyy��އ��v���?c�p�(2���%.������DA��+�� ((�'N��<��z�J��O�����딕��.\87�����"$��톼4ல�n�y�C���},`����tUU����5a��i  **ZZ�4��(�_���й�͛7_�d�3�lt���6���؄�����k# L�K��'O�5k�4x#��~����+�!�(P(�(/�
�l���ￏ����L&^{�O|�Um���7�UVV���ϗ5k��.�Çs����)+�x���ɓ,_����=�SZZ�P���*�~<�E���"�@7P��3��qG�q�y�ߌ�9�Hl�4�pw����!TT�w\���>��ϗ��D ��kؿ� AAA�f�S�Z,V�s�p�� `0	8�7��gϸ���\���Y�(�J&MJ���A�X@�p��C5��e��������0� ,+>>N�����ڟ������v�Ͽ�8�+**���Z������j��'OI��b�x���
�K�m���]��XcӦg��^�V���j�����7�������#'��K+/Z4�>ƀI�z#%eBrv�1?�ڇ3���hX�t1��.���v͘��xN�q�=��ABB< �/�ԩ�47��o�eA&�0��z#""t(%����t��Hww����ۿ��y����~7aB�w�����%� �msN:HBv�t�
��K�Ң�7vs�=w�P(ط�c22f���ěo�z����Wt\ooQ�Ha�ю�I��WO��U����!g}}}��>��� ��T��ׯ��߀�'��Q(����eeUhmm�M^�L�~����c-�%�S@ 𫲲�5�� @�܆z���P���w��Bcc��2�E6�< .\��p�������
lF���:���m�c�XQ(�3��#�G �������=Ι3%̙3�i��ػ����������3`���
�0s6%C�z�|F7I� ��NƎV+&}���� ]]�� �G���e�6[�T�A
 \�@�^�^&y}
���x��!h4<�y���;����h4r�|m��d:2uj��@WW���� -iw���#..n�﫪ꉊ����9d�۹��[			f�q��=����v�����h�����}"����mݰ�͛�aǎ�Q��ճ>�ۄ�	��>�R�����w�ݫ8u���g͚����JJ ?<<�|�p�Z�Gj�D *+�(((���WP(<:C��J���{]�V{l��0II�������{<���_X��������/��U���4y�h�.X0�����e�=	��5��9|���;o���S���^'N����>�;�(�:���?�no% ���h���~f�23���_��n��:(/��s��g���꼼Tg�z��5t�6�@Dd��u����1�A�:����NAp������T*�A4 a2]���>�;����J ���*���o%3s���㈒�R�{�C��;Tg��&����R)�?����h��<��YC�GBb��ܐ��.�F#Ǐ��������HJJpwz���<���Iֿ��1T��J���8��?��
V�~@�r��y�u�n��'��&��M��]��]$$L���n��7w��߾ʫ��d׮��ZmL�2�u��?�	��������c���r�L�����!--m�ZZ�p��5zzz�>|8�����N�gll�W?���o��[o�c�t��̜�l��l��k׮&5u"�Eq��Y999��v��Q9�U@���~H�N��}EEe�p�*
��6��� P]][Tt��'
���>h����m��6'���*��[�\��}-��������@qq�����o����j�j�
G��j�a��)((D�oE����9x�7�=�����ǫ��JX�f��z��𯮮a��_�q�f^}u':]?���x{�ho�PM�0���<�!= )��&�b��㹹ǣ�Y]!!�6�Fc �JLL:RUU	@e�W���h4��766�?����u����w`���$kS� ����uk�E����l�rM��.�/���Ƹ��R��j���C�����[�Zm����׷�������c%��|��.S�U_Ј����� V�Z�N�d�IV��n��T*�Q�������CR�f��w���Lg���c��֝2%�)SRikk��~���v@pɶ�5~�Ӎ��J��]��	<���	����?�~���x��TWEoo/ǎ���5� �٬��c��$�se�����͛��b6w�V�?�T2i��g��~�g��gΜE�o������P𷖖6��"����.VW�>���y�MSw�l� *�h��l�;��s?���
1�S_�,-�$Ӧ���6��6{���I|�kk�8p �+�e��trs�S[[��톣����%�����?��[��u���@�P���M[[;���������k������եdWw0L&�~�9 6��;**��ٳ�nnkkWK��RIdd�4�.���NUU�����bb�7&%%�,����<��0	��M��'% 
$P*��[��#'c ��v9���˾}�`����V���HV Q��5Na�*��%�&�����mll"//����I��`�tq�����ޡ��=����K�cG��������zb˖MX��Ə�Xr�؉�v����xV����pW�G����{9o������SZZ����%::*F���x����"8���]�[�l�n����-+�B�ϼ��J-z}���hmm�Z�m��5�N��lԁhD���	�b颷�Fo��X||�wmǎ��p} ����:Ub���n# ��׷��#����e�Q�e�����'On��z<��U̟�Ɍ�	u6��v;M\�p�3g�R[[GSS�S2pʔT�ͻ�.��^���*�ͣ��
 ��U�׷.�&�'O"::�.�)�b���sedg���1�����Y�/ [�	�_�<,��;�������BC]�_\�P�������C�Q*�������J��6�Ui�K�d9�I.�oQ��l=1Ҳ�P��ިRy��އ6<LPP��M��/o���'u뭷�V�0~�k����ڐ�>Z��׹$tA��/��ӵ;b���g��n�S�L��Vx{+1�DŮшֹRi�(*���b�x��O���.>>,��|y��5|��?8v���m>��mK�%��	�tCY�c�,4�J���^
O�V믊������[BJJ����l=TWE}}�gg�)D�>qb�������w���=��>�7��>W�.r]0}�����c� JC!=}:99������C�c��r��[�l�l��lc�j��Q�����+�n��x$$ĳj�J�"3���c6���� ..�.�.���31���^*+�P*�|���{#��r��߷��fdf��[8Y~��u47�`4��V1~�xt�8f�L'=}{���c�Nx;���ܹ��pF�u�����&t�8l6�Gy0!!~nyyE�M��:>>>}���SS�]�WFB�Z����֮������M7M=���z��k�|p��}G��[nY@mm��V���h4��
Ӧ�ŁY�ed�2��    IDAT2]��ϗ[nY0��|%���C���[��j�d��`0d��������r�}�L&�0�.a4�X�,[v׈��bŽ8%տ��f���r��#<<�8���(�]E뼼��]��)S\� ��5���1��M�F����0��n������q�x�Of�J���F�n�*�\p�]��P(�X��x�B �@r�1�`6[9�<�{��#!!���B�Tb4���)**vjTP(L������JxxAAA�[�j��!ca ˖�EWW��Ee�XSS��Jmm��6AAA�^� :]+V܋J�Mvv��g~��>#�����m��z�����÷!�TJl6;F�E7~�����ڈ��"##P(yX,�g�M� \b����c���#�2��FeF�Lz{��k0���ҥn��}��u��(
�g����/�r���Z��'�|���c��F��FO>�}}�9I	iu�x~
�����׷�߽��~��$_���ġ��{�\� ����������������_��hx��u.			���G?�����ރ�����d�J%��s�ё���>'O��̜��,�G�1jQ�T*�����7��!]�`�׋�\@�����Q���9"Q�?��'N�
��J������gJ��)SR	�l6S^^Iqq	��e,[v7���FRS'+�

�鱳t�b�������l����;� h4RSS����s��0�ܹ�!>^�=��Akk+��e����w�ɱ�C��:"<<�����wr�����g�`��L�f��%�������io��/8ǴE+���.�F��:�?� 1g����{�}H^^��oI+H��� 	�˱��L&��-47���m��E#&�%�vQi)�h�h���#((�������8|2�ظ���l=xx(0ĺ� ���V&�:U�@j�D�����vi�OIId$hnn�s%��shjj"/� ����OHH�Y�Z	T\o�m���l=����*y�J�*����==�_�V�R�L����|m+V܋��?d���{����KO�FK����lΞ=�ڌ��ɠ���� #"�;Μ9˭��2�g�n�s�l) aa����QĐ�Z�KEE9���̟�Ihh� �k�[��u�Y�
�FNX"99�|��A>���9u�dw����a���3̝;[��ٽ�*+����ܹ��nbWW7�w�����|���G? ((��ﾃ��
***S/��cn��p��,C�]�dv�i6[�s���--��{�NG]]}̂�u@��q��4B?�����^پ	�ԩ3>���x�7oh��R�Kc��]���t�p��h��/���[���s	�Hy����c���>�Ǐg�L�4�%���؄^?�e� O=�$0���P��'`0t��y	�pg��S����;Ųθ��"
D�0��u(�:u���I�]��^�~�l=�Ε������={�B���$�Z�������΅� v���g��&�%Ųew9%����X.�hll"3s����ݶ���
���??��*zo��V��*hll�ji��,����z�fs0���jhh|����}�>fٲ�/�A��wޕfdd���%'������r6++�����6lx�%)�P(X�p>		x��7�
wS�q��Y�i4����TVV�������m���ϗ����Icc���|���0t�8jjj�겯���A	�UW��z{�������ɿ���'7�4up� x�P��M�T��c�j��t��k<�F�vD�)��?��Iހ�bu�J�>}���<Ō9���&���z��l�pq<W�.���&ř3�sƍ��⢢"�������Vk7��W_��ҥ��ȘII�9N�.���nTȫ�f��e�����G�´iiL�~%%�����3�<=cf)���? ���//O%��S\|6B�T�n�C�pKJJ�?�1��V5b+����ɓ��s�P(���.���kr|���[��gՏ�� �3!�#"��=6.66ƭ����v��%w�:b���PYYMii���U(,Y��ݻߡ��j8uj������D�mhh��=N[[f2n�8'��/+� +�K9ԝ�_��t�Dv����� N��G����.����1,_��y�]@�\��?������TW%?8�����w�M*�J��6v�z��gK����JLL�W ]�r�
  <<��c��b��Y�fj�v��ݻ����3K233� �����k.FD�w����v;J����
---� $&�H�^RՏ#��|1��j�3&q��`��S���������E�4칖���fd��%��+�����ٓc:>-+��~�@d�����",,�����+�h��������/� �L&�f��G�J^�����[����v���� Dᐚ:�Ttt�}6�Ƚ�+�ƍ?�j���-n���ӧ��S*�nsAAAn�|\����8�����X�t1}� ���ZpHWT�vҏ5T*/��3 ӻ\)�j�/��ݻ�!'�(�V���KK�B|����Z�Y��G�A�Վi��a�֭<��@	�4�#5u|�����ʪ���
�^*a����	��	�f"�-����rQ 0��Q]]CWW7:]���3$�ӧq��YJJJ)++�3�>��_|q�ݎV�e��L9^,m?\�@BJJ2Z���Hss��1r�����>�2.a��HS!��+�J�9۷���k�4��e^��s��������%SVV�hѢY@�Y�1U�{AT*oz{UƏ����?qb��|��J�V���^C��AL��?W�3��5���H�;w���?J�!��!L�~		�8$�w�\�P��j�j��|W�������Z�=.?��]		����T*��r��֭����-�q��v�d��%K�駟�׷��+���������E ̞=���Zm47������x����0fn߾��>炊���%��GB���\(>�iiS

���R�ޚ3ҩ������.���aIe�6���L�={�������b� јq׿�Ry�M�6��������*;mE�$��w�� 0PQ���0~����;oC�TRSS�Rţ�j���HO����k�j�9rL\I�_h�ȡ/iQ)/a�۽�v;�w��� .֛d���� i4�N��'� /6^�h�ҥK\�tI�D���l��4����졳�g���㑚:P�.M���:����� :8F�R�~rP�= 

Q	�FFFtL�~�ݶ����a9O���̝;[�#�+����F���VĢ�����N�,Z%���8|�z}�K�����Q�n��2靐�� ,�G~~�������ꓡ���1�� �t�Ty���v94���`�8d~h��X�6Ν+sZ>mZj�.ԅ&'�s�>��c��ر�gn�����B�^/�����t�b��d�l=v�d<R�����=>�z��}D���f9\=�#���v;��arhg��wd #c&�>��U�VAee_~��������j��b����rs�9�WT$rr)����������}�B!�o���*
����ljj�f��f��p'56[�������LSS�*oo�����$����t����ƿpQ�����[���j�(���⸂ XA�n�:� (A���١j���� u��,*:}� L��*[���:֮�����������UL�.:n]]�r�ܹ��~C�ͦ��l8~`lXpAlRwT �'��>��Ν�عs��Q��h(((����/tڷ����s8��[EB� �f����.}n$���im����KZ����h� ��>�^� �ݶ��n�C��?�C���47_��F���O\]��`8���6nX`�NJn����Jٿ� ��"��,�$33���\�F#���:s�f0k�������:


),,�-��Ks��>|�قR��[YN%�J�f�����gD<�R9��i4����?����aѢN���g�Z-�!��=��-��V���>���B��̌m&����9q�H��23�>�TzV��MK��t���F""�;����E���d���@d��a0���,
������h_��e�v���JJJ��rQ��5466b6[���v�><��W_���q��??�Z�CPP'&;囬Vq �t�)S�Ä*�^���+�����/\��jll�j����,w�K(..QS��h���� K�.��Ͽ��}f͚!���h�4i�l���j�T�������Ϝ�2�/�� @,�B/�>��%$�z�r���khhJ��m�OLL4%%��l�;f����.��Z=��~�l����]�J%?��ۜ�Z������Ww���Maa��SS����Vw�(W'����*bb�\��d���������/��Z�����ʦ�G���^,dee���=�Ii4Ξ=Gv��DGG���΁Y444:����qH�4�~_��W*�W˕S1mڔ'����.++[��_Ț5�HK��_����{ӧ��	��n����JhhHmU�W�F�Q��n�eEE�;��|`�v��I).�4)E����֣ �F��h������	��{���7������ʧ��*�z�m�V!!��ɓ'=�_�=�!q�H��N�<9xO��={��Oyy��	�6Y���I֟���V�Ӄz��If��hN���=^^����|�9r�A�Sz}+mm��tq.�B9#Q��5��4�~�9U�뿮tZ�����
�d�����C�KX�hѬ��,�Z���766�K� Ǟ���!�A��ar�#��r����升������*9&�����;KBhhk���v���Ι3�sʁ�M�1��) 7N	X�AAADGG���Dmm��v7�;����/O>�8AAA2ə#ׅ��S[['��Z-S�L������bL&�,�g������Q^^�TQ$N�������s���q5%F�~n�׀�23�>u���_���_7>����s�.ŉ'ߙ1c��en�L����:���*<<������v�i�Ҝ�0$��$�p�|rrr=�j�eS�dAk4������ԙ3%�����\�n-&����zOO�0w��-���v�ˌѫŎ;ؾ};7�,*��,YP{ NԿ3g���?d̾}b��;�L&>��s,3U��"%� -Z$�?V!���^v��v��Y��>�{�"##X��U���\����/t� QXXľ}��ՍF������_���-ǿ1qb���6���̹O�5�¿��eL�,p-�0!��g�q��9�X��{$$ĳo��tt\$88���m��T�6��F78"���+@Tj�V�t��		�l��o��W�fUU��ƍ�i �Z����^�n�J�����C�o%<<��ԉ466q�t�� �8p ��BF�L���??���*.\��F�A�oE�oe��g�ơ�;��,44�Ն��/�#U≋������lQ�HJ�����	��G����w�7�q�C�U�_))IKN�:}ϱc'���%l������Gn�NM����_��38���g.�a~�=w�mho�����Nc ��ss���X��!������CX�6�Ν�xёXj4��#/^LVV�,�BCCX�d'N�
`(HBm�u�=�B������	��E�]�z��ss�Ex{�X�fJ��'�|�V;�`	���9v,���D���		��W��EϹse����jy��h�Z�p�j�,[v&�	AdP$�ʖrYY��S��0�)l��f�۬�m����9s����t��/zO�Z��U�V����n������@K�l����B`` ��:|o�������S��~
����
0����
������w�\��aL�<��������ﾓ�gKٳ�}9v?a���<{���o"%%��_�5f��s��\��8��R����©S��։��������**+����[X�t1yyb�c�D1�b2���[%B�����(���Z;���?��������/�9�w�~�3gJ�����X��1kK�/!�d2�5�7��7&%%��+�j����S�			�!�E �Ľ���3���*y��		�^f���d��V@hh˖�ů�{ -Z4�1vn���`��TY�GFF��W@F�L��A��ԌD�R�Ǌ��V���8�7`6[ػ�#֯_�]dd�� l6ۈ�{_+�J�0q\?������#�V�\NBB<YY�|��a�f
���̹,Y��RɁY����2t���~��<���y�p���!�<4R�֡�����eaA�).�Oll��!������ˡC_����PTt�E�i�Zbb�P*�̞=�����+]@M�y�jH�Ѡ�hd�.��ߟ��(n��V��?���_ ]]�rI)T�DGG4744X bb��[ض�%�{�N�$�ߏ���������
�̜CxxO>�8��}L~~a��n��`�&fΜAyy%%����L�QXXD[[;����a���"w^��ne��k������PT�W��ށc9Z�}}����\��5xQ�S���;�Ku�W.
�����{?B�oE��Əw�`0N��o�y�cccHO����X�����Va0x�ͿR[[Gtt=�������=,Z������]�81ycl��p�&�hmmu;��j`4v����!RJ�����<��d�z�x>{�~�T�/��8������ɓEN!`w��G.;
r��%�������&���������D�����;HII&))�%y�8z���dg�p�kX^���紭��*��Y�J����n9�<c�4�w%'G,݌������T����I�/�K �o��MHH�V�Bq�����U*��Xq/+V�;�~Gj���舂�BT*���� �O��d��;�� �}R\�j�9%�AJ��-�h4�1a���ޛ|r�'?B�4q�	��/��Ϗ��2����v;{��/ ���Bz����� !!����UhhO<񨓰<v��)��e��b��2bhh��w9G�I}*�wQO�X�w=��@EHH����C���4���`����0��H}0j�O�˗_#""\f3\�f�����u�8ƍ�O�_&R
����6��DQQ1F�����R��Q��ر�%y�>	3������O�bŽL���'�|.'j��/�B��s�Bu�8�j��VL&��]W'�Q))In��>=M޿T�&aΜY �T�4p�,5���/��Y�8u���!����J��RSMJJrCT�����:"R�c�ޏ���@WW�SO�p��0���&^|�e&MQS�� 2���yM��?��v�� .N��i4�=�"##�""���m���-�`0J�*�6���0<<����h�ZJK������h$((����K���i��epp�K��XA��d���e��i�׬ $O��~.\� �R���2�p���������@IF.^�P&	��9*V����)N
/88H6l
QQ��II\��w߽�s���j铒&��׷>_XXĒ%��j���N�c����pMFR��H�|���/�?��h��������Ü^G��jHII&(H�)8t�K tuY.����W;G��K��GGG�_}}ãG��a���A�{�J��k�������^#�%.--��BJ$::J&+(8�	�� �H�uvv���y��^�u���]�f͈�xѸ���*Mz�ϟK�?��s��	.]��B���'�.������@7�??_⩮��}GV�������#�~)/�̘;7�.��+���'��aa���yy���


������.4��u��4���I9��>���^`�ܹ3��=�߂ PRR��ŋd�Df��A�e!�̙����м~�Nԭ���m��0x:�%+V�˒%�())E���ݺlV���gK9����r�A��������@���D����NGRR���D!��}||�BC��}�zf��-�g����m�˂�?�h�7TW�(È���
���zZ[���ꦫK�����R�?��B    IDATE�Gll̈�u%�fF,[���hA
�9@���O㮻ns�I������j\�kll�O>�ɴ�w�9{c��A�//fd�z://�e��.�+�8...��"qK�����ĉ�x�D�'��r[�6


9{�/^�ԩ��Ț������P���q�'66���B��?����qYA
���wDYY9�:8��I�Itܸ��;;�⯀���\��� ^7.����k#��V.\�pY����*9ޯ�~3v3<.�X��^����0���+`��yDGG���Hyy�})�wI����S�Ԝw!M	��뫖���^��ҥK��m466���Mmm�|C�Z-s��b���R">^GBB<]]�|�8T>5u�{\����?�n?~܉3gJ�:U�Bp缾���"Μ)�":�BAttӦM%=}ڰ`uu� }�d��F3�,�}�|T��qdqMDGG�~�Z6mڂ�n�����lC�_�r��/322�jk��^r�cb�;'L�����$��jer~���>'8���[Ef���p�:�&MJ~��޶�%�~����9>^���������̞=S&�����{�j�!�-�����U�޿���n��G�P����7D����������A��w?$))���i��N������URR�J��c�gǎ����v�ض�E6o~�݈��������!��/s����pa&��1�͔��r��q��W�ѐ�1�	�IH���.�����k��yF#�����,�ͼ�f�9t�KL&QQ���;:�	v�;v\Y(d˖�<��F����K>��9�n�L&G�#//_���1$$L`��q���¦M[�f,77������uTW�P_�@}}�}v����,\8ϭ�!Y�j��)i��.Jh�҃����y$p�Ȣ��4�h4�u�u�ާD*:�C��^�x�������n�}��*�Ƀ����"���Ǖn|���������s����y�]}t���di����ѧ�T�S�`៧��H_�c���Y�
z�f���C�Rx����I�&��:��R����,����ƗJu��#��J����X}bb�w�Fcv~~�bѢ$%%���Lyy���H7#�4Ϙ1݅��J!���̜#�Q�:U���/
V����B��?����u��҈L �E��F	v���d.$oo��g2s�t'�pz��h�j��� [��UZZFn�q�;��E�]:J%.���.�I$<|t��c�L\��@��)$e��'�i��/��M��q������4__����*�#���j2����� ����Y���?;Z�d�����֦�f�ݻ���?8�k�����������ʨ���),,B����C�1���3�m۶m4/嚡Vkhh���Jˆ3~���d����
�^�����'6v�J-�C(�;^f��˂�Gbbb����S++�ioo�i"�J%s�fp��.����v���ihh�����}��)���j��R�V�N�dQ��>dd�$#c&��M:�%��%���>�}v��"Mʒ��~~�X��x{]�y%��񥦦
`5�T�R[[�{�}Hssj�w�q��Ax��=�����\y�S~cʔT�LI����C��������l��Y���{655�}�>��E�d�><�n<�PC|��׷��ڸqd��z~~����0cF�lUZ���z�H��fС���I�==V���Q(e��� �+W�'����o}}C`Zڔ���8�ؾ}�S��^�Fxx�%<<"���|���F��ui
Ǐ�#��!r�Uoo/��Rii�_�!�����7�ly��*�Ow0�,K����T*/;!ObX���f֬�h4L&��5�QQ��@&P<X�oݺ��(PF|�����[��~��~9�?eJ*˖�%�(�VgΔPYYMuu�S��J ���L���ɩ�5Ś5�hkkg����u�]55b��?	���o~sU�.��OL���	NH��]vv�}v��>d�|���k��סRySPPH`���o���=x���p�<��?HII)���K�.f��2[fYYE��?�l޼��VW�.9���y������(/7K� ����넆��P(�������p��7?s�a��`ǎ�d��X�(�����k�W_�F��ɮZ�r��H^���Q=����GLL�e�JOʓ�%%�N��Μ)�<}z���`! G���444� 9Dxxk׮v��1�'O"++�����By�s�@��9455��l�����̌�T ����n݊�\��/�=},1�-x{���w�f֬t$.�'
(,,�l�sڴ4&MJA��b�Z9u�,�%HSs��
��V1{�,�ϟ++���V�~ �BAaa*�R�}���11Q�$��:xѼ��+f�����_��kP�}x��n�^:";;������X��{��>����<�̝;��v�Xqq	��!�������k�GLL4��eX��w��}X�x!�/������
}t�
6���r�̜��̙���;�"V���2�9��~�{�INN!99A ������B��u�@����z�48� ��&���m�^��u�C��J{{�
��t���j$�����i��3H����5��Z�V��H�Y|bbb~{�D�,�|È~���-�OVV6}����s�xz*��ʦ��Cu����t��*\���_Z���Ѩ�3'��������駟�e���u$''Ù3g��ϴ�).�SSS'"��%L��ʜ9���[������
�V99���#-m
��s�́#���������P*]b�� ��2�WJJ2+W.�l�����O>�\n��u���������V@j��O�|Է�z���Z~���d����gL����	�����I�{����tqN�.�U���i�����466!����t-O?�c~��ߌ�9HX��a�F�%%�+)�:+�ǜ93�����F���]���-��X��)?�+#����iD$��T^}J�jd\�_�jo��� dJ�+�"�?o�\9��G�����ҥ�9v,��Bkk�� ��_�=uİO�֭[�&#I�@JJ�['N�;qBl:��=&w+�J�LI�[8��J��� G�9Bj����9�<~&F���������v;EEŜ;W�w�s7/^�`0Hc]ژ%z�Q�!�3ė|p����S��9s�,��Mx{�x�u.�����W~˛o�&<<��n�ʬY�n+4�?��>�yy�ຶ����J�~�ܨ�.��pLv���	������ZQ3�q���Op��%��UTT�����"_� x�:}��d�ff�aٲ�G��$WBQQѿϝ{���C$�'M�8�ܹ�Q�C=}��W���mX���ݕ�_�0��;h4f̘F^^��-Hl�ƍ��������3f�c�}Gd�H��?z�������`A�[+�Q 455������\c�Z���U�o���h��x���"99q��?�ў��MLZ'%%��^����А!�uuG���"���ڇ��nN�8��/..�l�ȝ�dq�З��Nd޼�],)�B����Gss��uL���� �X��\'�]+~��'��gA�IJJ|*7���*()�+���ŀG�d6[��o�ב�@z}�:33c�E</19�Վ���ض�y::����J�j�QQQ��n����F�A�V;QF�6�F�����g����Vk�ל;Wvz߾���
V(<�9s:� PXx�]s! ���uy�b�����y8�������}o�m�U)���$�Pnnn!-m
�ܲ���*L�K��ʊ��Q+���V���Y�::QR�N"�sd-�n�s��	��~Aee�ƍ�����Jee���u��Q�]*h���a(�J�����{�蘿�h)I�;`7�W�J�XSS������A�P0mZ7�4���1������rrr����j�<��:����������PRRJJJ2��s�Aޠʂ=�Ea8Z���7���<X������u>�lj�K�]��g$�466���>w�b�Rbb|���a�⋛G},dpp�;%�T*k����{��4������rg \k��H 	~�УcA�}!�{��W����������}�(7SˢAbz�:F`�.N.!�"(		�N���������^V�#�����+'�hT|��G]�B�`��]TWנ׷ʉPQ�q�З����;��u���oX�`��g�V�t�cccd6�>��������.0�!��-�S >�?���x�5�w�?e~��瓙��	

�?�����)*����φ��1Ä�yn#'������o_eѢ�,]����w�#+��^�)�`��}4I�BB�e% �H?>��'
�,`|��q����?c��e:�������������7J�����k�$0���vi���T���N��~\6�2P*~��Yww���6�ͩ��-ϒ���Q �Ǐ�����k�ܣ�<�<��͝B�������rS*����L=�t{���n�8=��tO��{Z�����Yǲ�t{:��:]��ڞ�����ť0�X�D)R��\�'/�Ǜ�%!Ayz��_���Ob���<����~�R)�~�MX,V��^||n����v��[N��k`6����&I����j%fu��WP*oA.���=���O�s�d2�������0���!�lv����ʕ�X�:&��Q�ʚ���]���VX,؂������2rP�$�[��� ���(++A[�|��gp8���t���Ʈ]?�U#H*���W_����{�P$c߾��M�d2���JK����_���==�0�̰�mغ�mm7�ե��߮__2�,:8.�TB ?�Ϟ�M���}t$I�������s�]75�ӡ�:A�Rg�2�n~�#R�:y�Ӊ�����6�ý��ө�P<�h�޽7��T�{P(RP;��5 ̩��٩DZZ*,�gC���
ם�ld��n���?���9���,~�������I��Z�cR��'(�=��k�+ �)�T��<@��骜�~��pl�\�U�(;G�T:��H�����.::�|����P�e��|��B@nn�k��-��۷⩧�!**
����޽����)�J��>;v��1x�տ��R��w���L���1���$u|0�|B�"���N@��-�2jNN6�ʊ��t����L�P9����C��:��5=�� :Z����� `۶�%�8�p8������Ӝ�..�[<���p��EOBBҋMMM	��e��}�O<��.��T���'6-���|y�	��#��W�����U�p�+<����T�56^f�!V���OH^e^�
}J!� �hk���0�������l�T����m�����Y̹�w��Acc�R���e��J�ȅ��$�G�� ��H�`��➀�<��DЏd��
�l6��7��!�&)4ry��ʕo'wO��"/o-��� z{�l)/��&��귽�I����������AYY1���}�7˖-�V����g? ��0<<:���\�֜$I�h4���{l��1KOOI:�Z=�o 5i���!>>.�J0�a��%!a�/��'�y"#}�=�Y"�����C:4��!����s;�l�
���dff��_�����J�K@CR#L�w{�����fj���cN'u=����}�j�2guu���sBŽ{̟�Vk������4 H���KNN~���
S������5g�(�T�$I�㚓 ���}�&��ne�1��ɣ4�����V��c���Qb����_��rj��� ����R�������� U�k׳>�On=�����d���$�F�WBC$B(!::
��1HLLDVV��YzZ���~ /^bsRS�U�ҟ����b����I8�أR"33j�A��Wzb�X���LLa6���O7�h�z\���H��p*G"��@BWx� x<ν >�H�2(�] �U�����b��׷@T(r |>���0=N�����S�پ�- f�	�� >�������"�*��������8�N�9�	s���r��hv�����x�?����h�gb�H�Յ�����l&�ʛǰ�����l6���h? ������?3ޖ��b��b�B��yՅ���!''��E��d ��3��oI:y�A�p� �v �F.�~������s��C��%��P*o��_�V�7{P�G����H�\������z�eee@"������R��QH���/ohh`��B���۷z�b�t�������ɐ�@<���DGG/ � z�ju��}o�6�}	���@�?��׿ �5�8%%E��F�����K/�EC�e\���� Z_'WN �8�́�� �8۹��/`�?���Ą�uK ,^
�6 x�Ȇ��cş�t--י�X���|���@,�D"�D���d��N'�F#�3�`dd}}w1:����QR�����DBdee���j�H�ZM�WVV��<�8(//g�R�}N����t4]]7q��W��t�Π� II��ɢ)a������&�	���P���.��!ܸ��T��h'rr���r��>|��)�T����9rs�p����a���O�FϿ����~���X�Ȑ��)(Ȋ���V&����a�꬐��>�˅�7��j��vG� tQRR�O����H�&��լR��!fu>#­-5���l;v:��ɉ�q8����f;���A�_�F0V��1� ��9������_��D���8����<�\.d2s�C'Sm6;n����+W166���V�T�(--f��<ihh @��? �y�Z ���x��b� �y�B':Z�]��E~~�LRf~~����C�v�7nt���3س�y&�h��g������@0K5�We���;�@����p8�?$7f ���$�;�`�]&/Ii0z��]���g�֊r��o�ƍ�Y�J�N��ϛe�	`�[��@�3� p�P��:�Ii4N��#��=�<�����l|��c���9�	n�������,�ʕ	!�{�٫����-�>�_x��q��%�������R�E�d(�ض��N�Ɨ_�RR��:���U�S�7&�9$J��v��ts�T8���-��P��+�� ��ǰR�t�h��: ����������@j�B���̃������aW�^�޽����LLL�qppH ����W���v ��6���+L}~~�ߵ�]?I۞���
���7�DFJ\��i>� l� VW�;�xwB;̤PSP�_��ѵ���}�$�HT�͊rdgg���55��f���`�E��A$9��^���N� ���;�J�|���PRR�`q�3i	�d�Ϗ�ɋFC��=�߇DyJO��dFm�y��'5U�IKS���W�/ ��oPh.����x�����6`%MO���8�)��S��e�4����
�G��f*�h������==��;-�P�nǎ��ڵk����\�����������&�Z�jܺ��UK��ꤤ� �EU���a�#QRRt���������8{�**�g=�����W[���0b�����j�s�/��s�y�������XjbjQgd�z葸�I�d�
�O.c<ؑ$	�V�o�iGSS3,+�B�T~~���=x�5-M�P���7�T)����nr��{�aCJK�Т��@��Р��R�1��������������h�$���1�:l �D�III7��c�t'�8 �+	������vO����hII�z�����*;:�8]��_c�<"�|>���H"�vJ.	�q���?�^�����C II�����S���%�a��13��$�-1q��B*2BId��%�[��j��TU��~����_o�ݻ���t�3=�����_NN��bc}�F11r 8\X������{{���\GK�up�\wy��vZ-u*F�T0�%�gq�$G��2� p�H���鏚��i�l9
 ��廬V���  
IDAT[��l�h�Z�VK��b��\��AВ�3
�S����S"��"��|>�X��D_��w~w�JJ2���̘��� %��$��͛�^6'����9##�����ec�B�\m�������R���@��A T��Wk֤����fK�}y�@��LNN��d�.o�it:ӕ;\.��GRR�F*�j�������� ""�09���4	��:f�Xh19�>Z_YY�����\������IZ�V0:�	�����/�������|�n�fذ� ��dX�I/,\��qϣ�)�$��}��>�7��[ >�?C^�Z=(UN�+���"��o%I2��r����$�tye��|>o������y���V�R���<LLL'�����e�C���po�Y�P�8x<v�qE"����͛�X�ۈD��Y|�J6�$%eZ����' �ʕr������+ f� ���>���,pPUU���������?��=gEEE ��p������w����<�l��>��"�@��� � ����y�З./3M��vuu5���A�N���R@S �)TUU�|�9~�]���iiA_++k���C6��YQ�X8˓��@DD������$����2�Y&j\.���v���j:��	=N'�\q����� X)�]&4�\X=:��£���]�!�£�Tyl9|���cN�$I��r�nw�x��������� ������4�&&�e�U?�Oނu{�e�Yf�e�Y�1�� |%���*?    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/chess_sprite_sheet.png-1822301c2610a206dac8ed04bb2f59ca.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/chess_sprite_sheet.png"
dest_files=[ "res://.import/chess_sprite_sheet.png-1822301c2610a206dac8ed04bb2f59ca.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST@   @           �   PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   �IDATx���A�  �0�&���!#�5
z���o���Zt�� �5@h�Zt�� �5@h�Zt�� �5@h�Zt�� �5@h�Zt�� �5@h�Zt�� �5@h�Zt�� �5@h�Zt�� �5@h=�)�[�@    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/selected_cell.png-6aaa8713db7d9e7c65531d59d5662c86.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/selected_cell.png"
dest_files=[ "res://.import/selected_cell.png-6aaa8713db7d9e7c65531d59d5662c86.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST@   @           �   PNG �PNG

   IHDR   @   @   %�   sRGB ���   `IDATh���A  �0���C��dU��Y?;:�UZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ�r�}�/V    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/white_cell.png-bd4672068141ab935015d8c9f178bc44.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/white_cell.png"
dest_files=[ "res://.import/white_cell.png-bd4672068141ab935015d8c9f178bc44.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://docs/favicon.png"
dest_files=[ "res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST   X          �\  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y�\U���Ϲ��Iw��+���-!�EqEP�U@t��}��~*���8 �""(:�	!d���I��=�?��������Nޯ�']�n�{n�ͭ�g�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        L�  �ڌ�7&����� `t�j �L� ���7 ��qu�����L�b( �xqE�Q.�X� �T @q*-t  �sP�/�t��E��JzR�_$��f��'�,I'K�'�)IOK��4��c'�ч+7 �"9���Hz���%-�T���Α��A��~��5H�?��h�
>�J�{�;I�@   p�Z��c���Bk�m��f���'�/�2�>�}7��za��3   �dQ	���^l�����7͊��2��')��Y��7|���@   ȧ*��Z��Z{��v_�5��m=���;����c_z*�g����>����C�w��m=�ӆ���1�+�� 
�N� P�ҨD�Iz���tb���w�kņf=�y�^غO;��H��M�׵���p��;��o����H���v�>s�J���M�4qL�L�c�7��Y���*Ku��OI7H�URo� ŉ�3 �$�zI��IIӒ�c��Z߬�^k�?��Ӡ���q�N�sHt�I�P�O3 �����Y���^٣o��R����_�E�6i�aM�=�.�aI�I?�t����<���b�� �T����$�\����t��ѵ����]zuW{Z��4�J7}�D��x�ɟ�tm����}� �3��y2�[}�Ok[kwZ��T�7͟�79Q5��6m�t��{� P\�:@�
�ܟ(�q��^�[��������S�nl�������p�w���I�+`Z�H��W%5F�]�U?y�Ռ����g6�-GM�)���*�%�"iEP Ņ�3 ������.�N���l�nݱ|���v崿��R��E���|Sҗ3����y��;�+��ں�s*߄�J����:k�$U��ľ�IG'� @q�� E*  yQґ�'�[�Ew�؜s�>څ'Mו���O�%g`���
��.I���t�ӛ]Q�Ue���i������/I:*:�  ���z @��<�f���C��]�M���9V��2��_|�u��U����<Y�;69�� #�  F�a#��!嬷PX�56�Ӓ�b�<ŷ�W+43א{�ݪ��A�e�����N  yA  �ǰ �*�$�q�6u�kP�P��m
L�4�P�L8m����J���t�sn[?"��	@ `�" ��cX%�*��Dg�������C%MVh��Ҩ��pڔ�6C�[�=6�q&�$��� G  �ǰ $]�"�yv�zs�:�7���Uq]���./�M" �Q�  F�a��nH�����_^ܙ�ukm�E��;��ٗ��I�*��~�� �D�-$ @���� D�~�b����hw{�v��hO{�z��7�A?|�xFU�%�(-�!u__��uzdm�,UNU� � �����U�-�����^��-I���:zԡ5w�j͎t��Mme������  Ň.X 0z�~�T[^�rܸڊؤ���  E� �Q����Z�;A�æ�j���4���i����~�I��: �  r�M6�}����[T��@�=. �����J'� $F, �R.���<"���߰J����VcM��hџ��� � �BPO���I�BICV������kȮ�(�]�J:6��2�(�o$A d�  2���Y/�I���>+�2�]�K����$��s0v�j�?f#��~&�.��+%��B�Y���A��?A d�  2���Y+�AI�����G�+�ޯ̯��Iz^ҕ�	>�w���q0�}���M6��R�:-�,=���W$}O��L
}�S�;�M�f� ���  M)*�e��(�ټ ����b�rIߔ��-V�C�w�G֫-�"~P��(�eKf�܅S���%}_җ%�Z��m��#iA���t���D00 ��� Ґ"�0�~!�}��IR)}X��$=��tIwIZ��ƽ����v��+vs'��So9B3������$��x���J:#�	��_(�ʒ�d ��� ���b��u��u���u�ӛ�7���
U�o����o���b�+�+��_o{��#ʚm��۞�]Oo�$.��R�[���J����
>}�������=�9@��\� Vܪ�R�~|@�-�	;�u��w�Ҿ�P�����┙:sބDw�wH���i
ݕvshW[���5za��� �`�X���s5�>n������풮�4)vk�\�K���F�n�$��.�u�,Ԥ�U���_ҭ��A+ $�U �H|��PW��i�ں���;Vi[kW��ӛjt���:u�!i���ך��֨���둩��R}�#�tv���M��٣�~wG�k��T��K��zغ#=
��<�(O� H�+$ $�"��"i������s�yN��jO�������5��:�6�������͉ ��t�I���������ڥ=�N�mnM�ߜ�u�ޅǪb��#�G�pD� �� H�TIZ�P4���o߿Z��ݝV�奞.<i�.:i��J�����7�{I�6%�#��3��w�ژ��}������S��?8>'��G���ϙ������j�C  ��:@��7I�Pt��7���7d���c���7��q3$I����=/vB�f4����/�����ӏ���6��w�K�K�E���&�(��D�!�x\ F�������|}������ztFҙ�'�MGN��X����2B���
���s���]z�Ywi3F����Цؗ�#����� �qU�I���V)4��$ikK�>q�Ju�%\����R���ij��;��J�� �u@  J��T��
>�}}�O�	>"]}��91k�4(�*V��-j p�! ���/KZ��e�S����qo�ny���$}>�{B �u  ��|I_�NX��Y\��@�A�ݻr��|uol�$�+@q `T! ��<�f:Z����O�{`�sĬ���o�Z;���+$�"~[ ).� �܇%-�N���ש����vm�������&/��� F Hl���D'��Ь�^�S���<�ʞ��X��й @  �}JҘȓ��A]�`�o�h�:{�̈́6V�s �  6�կߨ]m=�*�TsG�nrcl��-  $����*����b�:�� � @2�F?9s��|��B�E��Y�z㼸!�m   �dn��|t��Ϝ�ڊ�Ŧ��T�x����+t�  � @b����44¸��BW�vh�J������!u�I
�3�� 	� @r�J��脳����3
T������GO�M��B�   H�I�#O��O�i�*�J
V VEY�>��#d�'����� F 3�$z�W�n5���Ic���3�b�]}��4�*:�Wh��y���[ p�! ��,�tCt�ێ��7��~�ܩs��GO�M����8 0�pK bXk�T�P���i�����۞ն֮�(
lҘ*]��>�I'(���~ �p�� @�$�NI+��MUy�����TZ���@W�}�m�b��I�� ��/& d�9I��0gB�޿tV������Sռ���ɟ��� F- ������Nx�	�t��Ƽ�	�s��F���i�ɿ���D�� �� @)*�WJ�8�������� 1wR}��-�>�h{� H�4�& � �$�������<ct�1Z|X��O���r5Ԕ�o�WsG�v��hņ-_߬�m�3��Z��+���&�8�Q�+�X[��RO-�}j����������Z��M~�	\������ H@  	cL�Y��^�5���9DW�v�&���{���SME��7���YM��gkզV��ȫڸ7p\��1��Z�;e���9$p�����__�y�����iO{��X�Iya�H"	w@� $G  )�B�f|}����#5gb]F�[8�A7\~��|j�n{bc��$ǌ��O���N��/���!u�ě��&�|I{�{�W�>  5ƀ @F�b9or�~���2>"J<���<S_9�(U��8.]�T���+��K��(��v��z����X�R\\G� �! �"3��Z_?�h5T��ג���o���P76�>{�\-�=.�j���w�M5� �]� ���V��޵@��/�]]]Z��)�Z�J�{��[_���Z��(-Y�Dcƌ��ɇ��Kf���7��9�b�,�:琸�}���'�ԋ/����y�SӸ&w�qZ��$UWW�WU^���w�>��g��3��� �D  E��%�4yl�`sI�o�;���_���#���<�UTT���ߥ+�w�***�^�h�t-[��h�Oo�օ'N���ӣ_��+�s���?��O��Iuuu���Kt�������4T齋g��G^�[� �� ��c*���'���٩/|����ƛ�����^�qǝ�Ŀ~R{��J���N=�I9�K=͙P���T^��g䃧6l��޽{��O|Rw�����#���]7�x����/���+p�w;Y�u ��G  E�܅SUVY�}_��Ʒ��3Ϥ�׺u���Q==��	���&Mic�K��o>z�~x����e��7=E�,����)�:�Ц�������|A�֥�j�b�
]��������JK<����� � �%����������3�o������K;��[�v婇�Sf����Y���K�����ٷ����7ݬ�^{-�|�y����{_;ev�� @a� @��X��c*�һ��u�m�g��}�O�v�z~Ҭ��1Ue:��i	_?��i��*�*�g5��s�N�����G�n���a�>�+5�1�� �;  P�Qx�����ޞu�Z�Ȳ��AAN:�7�$]���3�9.�)o��?��2d?cU[[��~���� Ł  �@SmE`�s�=�s��y4�Vd5^��$���Ư�b�4����N�w|�њjs_W �; (e���={��wt���*PȗR�SiTˊ��ݛ �Ѵ"< Ȋ�W b-�}��V6缭���n��W߀�d��?諣��"�����t� ��E  E Q�xܸ���2�G�@��Z:^_�cܸ�g����Ϭ� F  P^���2q��r���c�����m9����;^/ӂ���9���������� �! �"��?���K_�x�����>��<�v�iCϟ|uo����W���>����y��4UWWkѢ���WmjUw_�"� ��G  E�5���jjjt�Ef��Yg�US�L�$���תͭY�/+7�hw�$i��)z�[ߒu^_rq`��Ț�Y�	 p�  ���/��ƽ�q�\zI`��T�N���\����?����G�����MC�?�ѫ5uꔌ�9��#���{;	@ ��� @����]7�Uii���j���i�5m�4}翿���:I�֖.���;�֭?=�]�Z�$Iuuu��w���S�����G��׿�5��_��J�y�z�6���  n� @Y��E�yjS\�رcu�u��%�^����E%���D�s�n����<y�$��oP߸�%_�G����k��:�S�N�2E7��z������$���������رc�^�s�&=��%o� d���  w��4yl�N;b�����r}�CԻ�}�{�1�Z���6�����ƍ��ҩ���I�&��o�׷�_ص��li��w����r�*/�TWW��~�3���K��ez�ŗ�w�^���h\�8w�B-=u��[�v�~�Ć>
 @*  Pd���}�jmn��{O�)�zcc��;�<�w�yI���ݯo��%��5~v��˔�6�9��Ь�����z�Qj�)�$M�4Q]|�.� �{Wn�OyU����C  E�J�퉍zuW�>x�a�ژ�T��Z���ݺ�����_.�w��ܦ5�mұfG����gu�i��s�˘�,�--]�y�z=�Zs� A  El��f��Т79Qo�7AGM�/�B���_����Wm���N˱aO�6����q5��o�۩�{�����W���˺��-:o�T-:�Ic�����^غO�٭_کA�f (f  P�}����C}a��*�4wR�k*4��B�}j��ӎ}=Z��=o�=Y���}�=G��v� ��^}���iu��������k����4il�k�UU^����j��՚�j�q�� �? E�{��bCafu��ܩ��r�޺`��O��$��ަ���C�٫�ŷVkw�i�ζ�� �  ��u���g���B 0j�   �C    `��    1   ���J$ �T@    �f� GfO���ه���O-��Go�`���,T�����\�5�j�.���
]$ 8`� �#��Ň���7ૹ�W-}j�PK���>5w����է<�!�(奞�j*�X
.k+�TS���r�V��)*�nW �  �G奞&��Ҥ1UI�����_{;z���O�}j�|=PY���վS��,Ӽ��W[j��)WSm��V����B�e*-��1  ��O��*4��"����}��/h���#\��a��1���TS�� ;n�(PSQ�˗�,t1���Kf| �(�� yd�n�������5�W[�1�e[]��)ɻqe�o������3�N%^~F>�Vkw���Y�m�]��w��XI����?����/4^��O�&�댹�s/( �  \ymO��]�5�뵕�j���������T��*UU^���ʲ����g�y���wD�g4�}�G�w�r�me⟳�A_�����;�����I�;������O{�{4��P�h�� �@  ��j;��PGπ67w&ݮ��L����[���I�U�%*-�40�;(mHy��y��|D�?�^奞��C�gTU>��l��6]���j��S[w��sb�3� G�qSIm��צ�N�n�{���8��c���;�M�+Y]eY\x�k�65w:	>$)O=� �D 8���3�VWY�֮>g���P����K{�{��?��B���cJC�6�M�
�����W��].F2H� do�2�p��QW�vH���_�c���n���O�}��r��Ҧ:L���w�@J�[���,� �7l:��R��Ԏ- .M�:��*hƫ�}�"�3q�hcEY�� �p � C  ��~�z��������e���}���߾�[��Yj���n_��L���嶏� ��� � B  ���d|}���G�$�֞�^�3T��q�I�4�����vK�v �� ���dF��;�Aw��M������3���~�����_�	֯H���Tc�ˇ�mku�����{X���\5���b�x�gT_Y���R�U���7d%    IDATyL�v�[@�7�}���  "  ���
������
5�V����RAw�O�s�N�sH\zW��PP��3���Pp��ӯ���硿'��o����U���.7�aXڌ����=,���,=�"����ڦ�<��-�- ��+�P3,P됴�� � C  �����S"	�7���;�d��]���P�|B������*(��������eHl�$�Y1 d�1  ���E?Yr�8g�t�:ː�֖<t�jq�$��ݯ�Nwk�,:�)6�Ag��A�  rs_��E�59�n�t���
O%- [�0�$��_�?�N��|LL���r����$s 8H� �d���RV�JI�H:A
�>w��l�z'�\�v���آ��jT?l������_�]�fEZ��tiGƀ��׭--]q+����ph�J{O�ڢ���wÞά�'�c&�.B��B��a�t HWL �@@ "IWH�5�w@������
3L���T"��c��mi��M��筻Դ�j}���5��J]��q�D[�@��G�(Zuy�n�Т�uF>%���� @��b@ �
M�:)����[�Ӈ_�R!>~�l�s��fI��! ��1  ��>I�G'��p����>F�������L�M�N�� 9# �$��}��W���ԛ�Py)��Ѧ��D�=kn�w�F������ 2�/# ��-����,Lm��ϙ/�
�a���g�Ք���d_҇$��T p`! �%������6N�r�켗	n\}��Z:;n��J�G���~ @�r@F��ZIOHZ�x�?6莧6�X��e'��eKf�&?��J��A�! ��q��,%	B&+�̈N��?�놇�i�w�H�����o8\�.���VIK$m	z� d��' d)I "I�%=&�1:�ٍ-�����.���U������ע��Λ%-Uh�y  �WO �A� d��?K6��N}��/k��|)̞P�?{��7�ľ�O�ْ�'z/� d�+( �(Er���%͌N���~f�~��Ƃ��}�*���?a��X2S�%qs�l�t��Չ�O� ��*
 9J�H�I�JZ�������W����|1��2F�r�lzHm��OJz�����  ��p �B�Z-�ʠWmj�M��k��e�ô�j]q�,-�sH���K��R��A� ��J
 ���H��%ݤ�LY����o/��oWl�֖.��;(Mk��'Nכ���hA�m
-2�@��> ��� �P�AH��H�<�/mۯ?�ܪ��핟^�3F:vz��[8U�kJ�Cw��O)4�<E��\�+\Q��4�I:U�w�-+��}���;��=ڱ��E�X��V�#��-GMԤ�U�6}\���M�� ��
 y�A r��o)�vHBkw�iٚ=z�����ޛk���+u�Ct��5gb]��_��EIL'o ��� �G!%��#�J�"�c�VmjժM�Z����Yذ��D�'�k��-�Ѡ�'ԥ�C���J�[�`:�!� ���
 # �@D�J�Z�e��Sm<0���mZ��Mkw��]��ݖt2�Qc|}���X�#&�k�z͝T�vG�^�Z:�Shzݴx @�q���a"I�j�X��"iռ%���O��lצ����ڥ��]��ڥ���l)��,Ӕ�*Mo��Ԇj�W�9��P]�I6��e�~#�w��3y3� ��� 0²D�д���겕������ڥ�>�m�՞�^�t��m��WG�:z��hu��RO5���(U}U���PSm���Vh\]��j�5��Zc�ʲ�ŀ��~~��4 Y\u�@�D$i��7HzS�1�U�"��P0�;���а�H�o���Bi��%C�k�V�J
�Ө�i7�db��Ï�%��& (�� P`9"��~b�q���\3-�VJzZ�
��sl�%C (,�� P$"%
M�{�����P���I�v�X�B-���]#�yI/+͙��!� ��� ���`$�'i�B-&�%M�45��$�I��]c%e4�;�>�VߧР�풶I��{K��I�A�Nx @��� �@��d�%5(�T����z�Ƅ�ޯ����=
����^�( P��R�(S�`��t ���U  KPB� �Wr 8�����@ \\� ���T                                                                                                                                    �S� 8�Xks�Ø�|�r\�x<�\�O�K H��$��JT��}_��e���6���]LvLƘ��o�Mx,��#Y�s���X��r�秵6�qf{�A����ʗ�8�J]  -���4����8
��D*�A�/T��E6�e��@�� p&�
S�;�.�~��;��'��e�w.�Q��|���/���,�zN�&��pp  ��t*_)����4ER��Z���F2m��"i��}Y�UE(Ǌ�XI�%Uk�1��%i���L�9�*��R)����:7�+�=�)�]�I�P��&i0�<��k4|� ���dXI7�HZ*�dI�ZkU����nI�ÏJzF�S�veR�TRS@�r��7*tL�%Ͷ�6���ݒ�Jz2�����t�888����t6M�0I�J��Cݒz$�*(n��C҆�kä��;:�!Y��I:U���8k�I�)��/i��U
}����B��)˘Ar��%�n<�z$ݢ��  Iq�@���{����c.�4�q1��笵x�w��W�m�������I�Zk/�t�$��^I5��!�n�*�)eyL�[k���|���y���!鯒^�dpw�-��s}���1�B�;?�Xk�y�/$��jc���^	��S���*�*S�VI:.�{��@,�
 ����P%)I%�k�Hz�F�zc%���9I�m�N������Ic�G%5eS�4m6��@�OՒ����qͲ־�P�������6��n��%��l�+�4��S���ە�J�U(����G�6��je�*��6h��[�1W䩜NcN��<&�@�P���.
�"]a�~e���>k�Ò�����0��b�}V�g2yc�G���Yk�c����4�Z�}k�K��)%ﾔaW�K4���$n���Z��Z{������587�"�4�ϩ���a����w(���F�Y��e�ڻ$MK�����󼡩��1�籜���2(0 ���T�>�4�3��$\y���iT�gZk��� �1��ef������T�l�dkZ�<�磠�$�o�}���_*�g9�2	��8?/�־l��8�2�p��v���F�)�� �1��4cʘ����=�  ��%�� U���+k폔���2�T��&���y��U�9)T��1c�U�� ���>�����c�g��X#��.I��8?+}߿�Z�+�f�*�Zk�m���,�<��IƘq�-�ƘCb�7 �E  -�+��7�<d��|D�Z��?�*4�Ea8<<��Dd�e�L���+�sR|��,I����1�NJ�1�Ƙ?( XOp�̪VFK9��b��T��%�EI*�2 ig�RT���Z�S���ʥk���*6P�.<��g��o�� %8'��9V���ਜ.��������$��h�؏�r(  ���*4]l����Z۟�B���~����*ޙk���H�I���Ϥ�^��1��<韛^O\Ŝ��~/�xw%t�TI�*�IJ|��NX$FK9�����wA��J��Hz�)-��G��Cә��</�Ӭ�?S�M�����uA]�Fi+�$�Z�_�.Ls۸����fg�G���_��������d��@� Ȋ�yc>Y�r$�y޽�iL#���Jk$=�n�k��*����bv��fԷ|Ĳ��D����|��y���ь1_�<�$�����f��@X�X �JR�g��~$˒�.I�ML4#O��k%M�g�\3�|�������DR����t��T��g�Rk�-��D'��hi�7Z�	��@ d$�e�ZI�]�D��w��ߝ���TL�$e�Xk�g�-�.c�x�1fq&o����ȯ��$��nI�#Y�lXk�F�>F � @F<�;���B�#	�y��c�]�P!
W��������Ƙs]�|��~-�w�󼹣��U,k����1i���Hz�@�J��y�$�� \ JRQ������'I�3y�1f��t0}��נ��Ʃ7c�Hg�p��WT|S'gbFl�՚�B*M��
] ů�+ ��1f��w�Ic��B����X��_�����IƘ�.D���L4�Y4���c�3B��k�U�%�?V�+VQ���\ҖB�@�+-t ���߇�v�S��Ƙ�KڪPEkP�8I�}�_l�9U��Dc�&�D�Ƕx�'km��w�^�@+���y���B����1�|���+��? �3R�g���Y�E���1�RI�7ƤjιB�����Z{��yO+tnVK�a�=G�Iy��c�I�Ĥo�4�3;�L���H:'��Xk�y�-il�c�]} �E �@ ���WH�<��6�|�Z{���$��P��1'���1�*EU⭵7c���΍1��Vf\��^6�\e�}2���b��Oç�%�s����1H��-�Ш�N�t���K�1�4����c���b����e��k��?5�|I��;}�s\�����kZ%�|6ƴIz6�L��͹���mOw���� H�+�8A��1g���B�t��c��2H�Ӓ>a��m����Ƙ/J�����;�A���~�g�r ~/�IO&��Yk�$}��v%�25%�MnĄ�q�Bco� i�1�c����-)�1In��~c��>f��Z6|�+%-
���Xkߜ�,R�� �R��: ��@Q�#"�����Z�#I�Kj��%�[}G5��vI�Sh��ogZ�	�Lҙ��<�e�.U��UtY���b��XҀ�2��a^3��I��1�dI-���.M1��[�n3k�����ӹ�o��t��{�_�K�ͦ�Е����#�`" (2��y��0��%}�Z;(���)(IV2Ɯ ���Υc�Ƙ^cL�c����^ �	k��#�CЪ�a�c>�pW�D����1r�b�ٰ��,����dAH�\3�(�Eq��b�g�Jty
��<������ �����Ii|MC�1�j��lxlI��fs�4û�κ�c�*iO��m��Ƈ+�_������e(���J��(�Y�ꢏ'&@^�h?-��})61z|C��2�c��Q9���2`_q��
>��!� �� H�s�uo���L����H%2r�>��Me&�6�[�1	���vI?z!�����pKS�1�:Ge9LR�HV �����k��w9ڍ	��(I���I�k�ޠ�"�Ut�K���r��u.������s� X� @ ��UE}���`�M��%�kIII�]�K�vN�Ͱ�����`���c�-W��ޡ�����1�
q7:j��f;%(�3W��<9�<��D�E��@$ZT��0�Lc��U��� @������~F	���/;�!�#��J�����;#�T�t��.�q�Q��R�%I�8�U�SH4��4G�?��A��}G]�uT���� ��� @���'<k�S������ú�$0"���������I�"W"i����U��Uc���c\�<��u8�{��ϾU�.���?1:0��2�)k��tV\O�E�	�J< h@ ��I���m)�7c�x�Y��%km� '-QwΟwP��?9�k$}�e]�$��\�����)fR�<|쾤:(RI�<�J�k F�:G���kA� Y�mȵ,�}����ce�ee��cs�Ek�$%Z�����c[ꬵk���� Pp.��8�U9�glB�53T+4�QY�\m��IJ�I$���Չ*���j��ǽ/��Hr�}e,��NG�':.W�e܊�9tr�]�:6 (  ��B�n��PI�)������MQ�O|E���C�FIk��WI�'>$w����9TZ��R0"��NG��ڻ:޶lޔ �ls4e.��t�D��y��+�1_ʰ�Z+�(IGc�m����e��f��
ؾ"���<�U� ����c���:�(���'Q燓�R�>�y�5 �1  ���(�zG���tc��	^sU)v���$Yk]#;�<��ԛ�eX 5���wY�(�]��bm (*�� HGo�M�2V�fGy�+Q?'������2�Ի�c��ki��\L��* I�
�k�`�d"Ĩs����hF  A]��166!A�ͥDw�]U��km�~W���
�+�.2�<o�$Q�M޾��j�+�� rF, ���(�#哉D����bnLG���Y.ʤ�5�\,�(I����ekzlB�-R��C�΃��|  '`U��.��}Q�K4>`������]�β+�1.
�yޮ����c����.���z���p���LߐdJ'ߥ�" ń @:� Ƙ�Ƙ��ǵ����ne��G���d��*�����-�r�}e*(�2�L���dU�]�Gș�ƘC$MrP�nk�>G��@�  '���y�e}�1�DGy�kX S�sQq5Ƙ��^Hw��p�R)�M�#( I�X�y�K���E�Ƙ7cJ����(������`T" ��\e����c�0<��^�yl�r�ɦ1]�e��Xk/JT9L��h�y��1.ʣЂ�#jpp��iI�}?08��vk����ZG�g�	�m	
�8*�G� @Q! ���hm	c̅��͍<O0&����~�+��V3�0�|�y�:�3#ы��i���/���!i}l�#-< �c��(ˡ`1�x��Q����#�Z�"�al���<IotT��c�c��t� �O  �
W|:$��(�Jk�����t��+]�N�l�:WH�����vp�1�rTi������`2|\�\�o�}6(��z��|�1����J�E+\��$��(��y�,�� �5�f E*�Q���f���G
_��U����f�$���ܵ�\�y޻�x�$k�\�A���+#��H�8{W>|�x�گ�ڇ�y�UģZ��t�/k폭�cS�8�~�Ƙ+%��U9$=�0/ (  ���?��c>,�V%	,b*��UN�어*�|ck�풖��k�k���D�<�{�Pwͣ�e�����e�Kz<�6u�/I�+�^IU�6�
B�n���avHZ�0? (  �$�����~�������#�^b����r7�HT�ˊk���o�>-)Ug�S$���Y�$��a~�M�0��D�׍1�r���ږ�ʞ���p��)�B�jj�R������Aٷ�ű����};�k� ��  �R���*�<d���ik�]��%�.��&I��^�e��c@�Z~�e��TZk��־$��NThM�1
�������G%�xߏ'�)ʥzIu�ǙƘ'�1_v�3c�]�V��~8pi���k�=��#i�B�>Y�ɒ�1Ƽb��O9>$����@��	��U������<�D������+t7��Zېc�ɺ`I�~��T�;ݙ�g����<�2��:B�*��IO(�2�Z�X��<��J�m��*�Xk�r��2I�־3��<�HժP0 8 � �ğ��b��d��њ��A)ye��s���M�]#��%Ƙ%#��$mIs�'$�,i^�����_[k�%���m� %���c�;�e�р�r%�_H�;b%�k�/}�����@%r�s]��Dۏ��3��y�O�~�@��@�nT�d�H�K��Gyŵ�����֕���=�Iz%e��;%�T�r @>P�T FD�1�K�.D�VBO�I��^�<��ޠ���c>���Lc�������	za��d@4 	%���R��uA�(�I�2�|P�Wx�5I_��u4WZ�����h�k��Jr|w�����[��� �o  �a�	�� )�
X�<I��o�ڛ�Z"�|c��=���<oDV=![=���\20�|L��&G����q }� ����T�7c.���	K��C�Ъ֟R�U��Bx���"���ƘK�`R���1�����nI�NK�{�1{��H��, r@�Z(���1W�v[J��V�|ߏ,L�c�y����.\.��7J
��U  �IDAT\g����Zi��1WI�����a��R�{~J�1U�*���H@B\� ���2{S��K1�I�$�ҷ��Ik���k�/%}<Qw����-�#�1�jI�J�A��w����p�Qk��0ƼSғA/��@ �" ��O�1WH�)tAb${��l��c�i
��^4��ߔt���v�����ߜ��i��PRw���Ʈp��p2�QH@J  ҒƝ�ۍ1K%m��+�]���ݒ�Zk�U1�ľ�/+�KQt2
�?m�Y$�d�:�4���Ƙ�U�L-3Ɯ �B 
� @�Ҩ�=+�xk��U]�r�vc������蝹)+3�+�w��$�Y>�Q--�{'+EW�t��4�{^�	ဲ�gWx��3%mM��($ m  2��bd�m���pkH`���a���1Fя ��#-�J����Zk��Fnf�W�]��"iS$1(I֒Y!=��\>
����gH��1&i �iE<��M��r���ۻ�(�������oQ,�h�@�A��A1$.�e�� �h��I�G�'1:=��L�br��f��n<"h4e=&����N�]����?�ŭ[�[�vuUu����9��~�����������Wv��+Wf�ƈ�Y�FĒ��ɇ�ig"i�M��ňx:p��	�.��2�0�͓�8���~f����̷��Tiǻ<"6 �>>�l�r����X�Y���]���w/��J�	�W O��g�amjD���wG�c�����a����H�w�~]����Y$�X���M��lGm6d����
E�)��̼�(�K2�+T�H��a� o8�r���t�צ��>�,7Dį _�ul���O�3�����h�s�Z��k��� f&/��S �s����C���(����7g�/����>N��O�_�io��/EqAf~:3�Lz�;{�#��C˲|UD<x�?���#�|����,�$�WD�N��SI��88�,�#��"�!�,p���ws�y+UmÏ�������w3���͹�`r��'��^�ߛ��p���QeY��w�l��[�k����ff~�[��F㮥}kL6�w����Y��s&"����GԿ�}���Mo�z�������W3���q��^�k��[ϸW'Y�J�f�}�j~T��{��3��e"ig�WDҪ�ڮ�45K5�cw���c�Z�e�$xd.�)�{�������!Y�Z�k���ۛ4�Z�+�T��ߌ	�������4��d�@o�����(�\�y{�޲�_���')���4 _o�̮��sW����L2$�%I�j�@o=�V�>ή��iw������4<�i�I��	��5�T�2�k�8�Gp���Z\���B���ܕ5;����J�$I�$I�$I�$I�$I�$I�$I�$I�ơ-$I{���;o��N?��5.�$�]v~|>I��0�&����< ����矿h�p8�(��y��q�aÆ5-�$I{+IS�y�=��z��$&�6m��N[��I��w�	�����Mk�DDS��������HҴ3�4�����4�]��+<;"���s#��G���l�%ijL�(�D�����p�%�b����I��2& ���̿��3"�h'���p�f��@��Ur�p�S�n������ �4�L@$M�%j?g��=����e�M�^o��px4�x.��1�KҪ���E�G���l�*i*�J@"b�k��2����qT��^o�H��l������=^�/I��'"�m����,�E� ��g��cv�$���r�g �u���a�!�7nܸhY����V��۷o_�}ff��,�#�،N��5FEQuw����������=�ߣ������5ۼy�ueY�{��n͛�ic"i*��ymD�9pcf�
�{M�
_���n����M@����|������-�	TН�K?|�y�<�z& ͺq�i/��Lr�nY�2j}s�Q&M@"��%MG��4�"�P}]D�ڬt��~��S�a�y��v�������yP��DoG�VٝE1�i'K%�;r���>�M�41�4���À{����o��s;�E��(�m���	�Ӹ�c�rw˼\�]��t��Z��v�ҲM��K��4& ��B;Y�?O�W}��l�\��?� �"`SY�?)˒��h���|�j�ہ� �o���xQ�}�l��T#q� �'���~�����r;p����`q�1"h=x����|xЛ$������aT#�]]�F������;ʹIu/^Y/� �
��)�y�y흖���g����\�3�=xt}�������^?�\�������g���������U�1���|���n���;�������G>�Ŗ�=�}@$M���� ��p6}6o޼l��16Dć���jY�*I �Nf�|��99">��~f^O��w�}�ޕ�O�
L�.���m��e wE����p���}�;?^/�ا� \����lڴi�}yNDl����\KD|xaf`��=>"����t��ܗ�͵�U���n��ֱ���`P�a[D��73?F�L��S�DĹ�7��j1-��F�Z���T��rF�����w�z��Cf����6����]��Fj�m0p�Yg!I{:k@$M����q@f��m�_����K�4�yZ���3�U�}�����GGą1�Dꃁ�GD?3�N��f�Q�nX���x|f��*�ٿ(��3�*��ܘ���cx��xf1/��#������zp"Um�"\p�����Ԉ�U����a�����wf�2���#����[�a��`08��� o��_��X�g�:�;�63�G�O�����_u�pPD��*����γ�yhD���/~��ck������|��pPD<:3/�z6�����`�`0�ɢK���D�T�&�ټ}t���n_��&�h%!� 3�n�����a�#f}~0<��)��c�O��"�8�YT�=�YEq2P���x!���9W��k�s�jJ]��)���æ���e��T��w�{0>�J�D�d������]��}뚠}���8����3sUm�+#���~w��̓��7��\S_����W5Ϸ3r�+�� ��_>���"b�����g����D��Ts���N,n�JJ��,˳��{���� n�O.��a�<�l�̋���E�����d"i��D��d��������zGEıT���t��kn����uҸ�����E���u��u�b��<'3� >5bhݛ����>��De��3��D�>�fA�{���֋^�.������
�_�]Y'	� �����1�Kݟ*��bwH^ #����K��4�Uӷ����\�"x�������_Jռig�#����u����xjDܿy^�s��(^W��u����EY�ò,Ϯ���}���dy%i�d"I�ؾ}{���K��MӮ~�OQ����%3�P����N�-�Q�F���C2�_��zumP%��%u��o ���&�o�����m#��L�}�OQM��Ӛr�2�����ߓ�s����z�A��e��#����&��l۶��dnn������������T��^�����Yfgg盡���5���z4�����j�?"����?G<���I��X�d�C�3�eٮ��w��ffffN�������i�x�(I�{�{�7�β�j25�(
ʲ��t@D�,����̜���(���)���}"��;M�n���F�넺�g�'o��:��f��A�^��#�{���M��KF]g+@�f�����N���e�����֩G5J�[�b}�o��=;;�֭[�g��>�������~&	�(3���5��s�P������������E��q��w�����1��W��F|xИM7K94���6�~���#������n��vޘ��
Ї��� ����F�'�kS�R������;�	��|`D4��]=j�ֽ��.�AM�m��R��R��`q|@D\��z4ϥ�x�����xxD����6Ww����^QՒ�_��K�.d"i��	����^�4�*Pn%�[�é�Q���V򦽓X�Zc��>���H���o?����l�ۿ�j�����w����;n����K�SKm�����[�&�<l�k������|_��Y-��g�l��n9�!�O�j�̑�k|L��mv�v��'3��7{ֈeo��Cd)� ��/�tW�̧�ߢ�4�;������]�����!���z$�uWߏ&Hߺ+�0���Q��=2"��L.�
��$i�f"iZ� ��Ӄmt�G���?rդvWR7���?���b�Pŉ�M�l������E1�o���aQ�׈�s"�]�o	eYޱ�V���1�4��v��FĸQ��T�n5|�*���(��˲\ؗe�e5�i��>���z?�d�X8k��Q�㶚�}G
��G�7|�y[DLt��$iژ�H�V?h�F��1jD<?3G5���7w��ݨ�̐���~eYP���ø�JBF�{W}ݳeY����`�����疺�����w@]�� "�Vg�e��H�F�"i*�g3�?_�W=���m'�hX0��3 "bps�&��i7J>7�z�G6ssLj� �7���P͗��լ���4� 3ڝewQ����G63�O�{1s�$����&iZ]I�����xN������cB���&�m&lO��,w�ur@D�rS�n��LLX����4��,ٰaâ���f�U �~�i�$��}G}� 1h��x"P���%&�\Wu�{E��D��%ضm۶m[�O�Yd&��v��Z�֐	���S��"���7df�3�߼^��NB�]�J,�=�Y��	�3���W��%�� ��[���ٱ ᚴF΢~~}����h��u�}��&)�b�L�͵����^ςu\F5G�C#��o������"Q���b"ij���177���ۛ�_PM�w<�״��5o��2�D�e��/��7���E�̎�+QE�x\�߾;���"�j�ЈxK]&2�;�H oa�����8>3�FN���� �Y�{Q7��-".�o��Q�5.eY�if>v�N���m+��z�_���=&�$����\LIZ7& ��ٍEQ�E���T����}�����Q��D\��|�����=�7_813?��g�j@�������"`[f�23��}en\�&"��Ӕl~�SO=u�i~Ju_3"��'2���ˁWe���\;a04���F�S��gG��LD�="���j��Wf~%3933������:�P��kʲ�$"�Ũg!I{:ISaT�\Ϧ}iD<#"��^��eeY��2pYY��/��x#����R��\��� 3_����EĖ��7�	EQ�|�������x΋+2���0����U��px�p8��\���Wp�M��RuH+pU������
�<�A༝����gsqRY��-��z�Z����7Eħ�����pU��cʲ��eY^|�ճypwf�(3�V��.+�$�6��4���	ܮ �����Z�-F�ՙy�p8|w�׻z�1�D�̼�������T#Bm.��TA�pI�/�!�eY6�E~���F�u��w�E�Yť���]����̼�9D�����3���g�����Dē���>��s1����n8^���_��'�X����<xoD\2���u����g�w3�'��L�Fē3��s��ہ�#�/2�yNw�V��-�s���sou�;�7���m�͂�5G�m�/��6pp4��� 3�A=��$M#�t%M��7���Z��f��"b���}B����9|lD�R%w7��}m���V��i���x�sE1r�Iކ��h�[�P͙�k�=������6m�4���d� P%3[:��������
��9���g�J|�O���G���!�}};S�q�Rպ��?�Q��O?���吤=�M�$M�3�<s��cp�7ڰ8�\" ��do��]7�踗�^I?�1ǿ���.��͈n�j6�֤�?�� ��|n�{[R�d��!i��N�T9��SW%����6V�J��(��w��l%�_�$�;�H��D�߈�G���n�g�cK�V�M�$M�͛7/Z6* n��
��8��;ot���[�ݩ	֨㵚`-0��& l;��s-k5���҄cg���o�Y��F����1���{��ι
M��]�ܳ��=�	�$i�3")|��_�& �"�b���f�u�u���I��p,I�gDm�ˁ���oQM"y�O=RٯQp���c8ĭ$�/I�4��x<��κ!�w�ٙ��I�$i�2�$M������=~0�BDN5�Ե����~�c�a���ͯ$i}��H��B=˷����`A'�Q�%I��ax%I{��䑣tf�'3aJ�vI�^�����J�v�%I{�.�`Ѳ�`��yU����3�\�rI�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��5������/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://docs/index.png"
dest_files=[ "res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Figures.gdc"
      [remap]

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/Player.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         ScribbleJam    application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png     autoload/PluginSettingsD      :   *res://addons/github-integration/scripts/PluginSettings.gd     autoload/IconLoaderGithubD      <   *res://addons/github-integration/scripts/IconLoaderGithub.gd   autoload/UserData@      5   *res://addons/github-integration/scripts/user_data.gd      autoload/RestHandler@      8   *res://addons/github-integration/scenes/RestHandler.tscn   display/window/stretch/mode         viewport   display/window/stretch/aspect         keep_height    editor_plugins/enabled          $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres       