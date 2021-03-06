GDPC                                                                               <   res://.import/cat.png-047113ce720c9dcc3947f037201718de.stex �C            gZ�J�gpqv��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexPc      U      -��`�0��x�5�[@   res://.import/shoot1.png-9dcf1d10b6e0fce1024ce6689c03a6cd.stex  `M            ,�e�+��6�����V@   res://.import/shoot2.png-50bdfb64bd760d3339b9c0c53a61f001.stex   W            ) )���/(�ᰙDA�   res://Assets/Bullet.tscn�      F      �@��P2w� 4#h���   res://Assets/Cat.tscn   @	      �      ��UԮi8���#c(��   res://Assets/Menu.tscn  0      �      "�g{��"�v9ADj�   res://Assets/Space.tscn       �      ���`BC��������m   res://Assets/bullet.gd.remap0s      (        SOC���q�FZ$   res://Assets/bullet.gdc �      �      �����1Hr[qBj;�o�   res://Assets/cat.gd.remap   `s      %       ���Ғ~�i��~���;   res://Assets/cat.gdcp      ~	      =0�ӕ��g1t���׉    res://Assets/gamestate.gd.remap �s      +       �;t.n�{�۫.�q   res://Assets/gamestate.gdc  �&      �      @����bnچt���   res://Assets/menu.gd.remap  �s      &       l�y!ם��=Er�m�9�   res://Assets/menu.gdc   �;      �      ��AG��L�-�ſ   res://Sprites/cat.png   �s      �      */���v�lrԥ��
D�   res://Sprites/cat.png.import�J      �      H�IW~~��ҏe���    res://Sprites/shoot1.png.import pT      �      #h���k@\[$}db    res://Sprites/shoot2.png.import ^      �       ����6�,Y���&m�   res://default_env.tres  �`      �       um�`�N��<*ỳ�8   res://git_api.gdnlibPa      �       �=%��PbZe'8%N�   res://git_api.gdns  Pb      �       ���'�B�rH���2U�   res://icon.png.import   �p      �      �����%��(#AB�   res://project.binary�{      �      ��٦L��,ua���_Q        [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Assets/bullet.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 3.98274, 3.94757 )

[node name="Bullet" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.125, 0.125 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
[connection signal="body_entered" from="." to="." method="_on_Bullet_body_entered"]
          [gd_scene load_steps=6 format=2]

[ext_resource path="res://Assets/cat.gd" type="Script" id=2]
[ext_resource path="res://Sprites/cat.png" type="Texture" id=3]
[ext_resource path="res://Sprites/shoot2.png" type="Texture" id=4]
[ext_resource path="res://Sprites/shoot1.png" type="Texture" id=5]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 3 ) ],
"loop": true,
"name": "default",
"speed": 5.0
}, {
"frames": [ ExtResource( 3 ), ExtResource( 5 ), ExtResource( 4 ), ExtResource( 5 ), ExtResource( 3 ) ],
"loop": false,
"name": "shoot",
"speed": 20.0
} ]

[node name="Cat" type="KinematicBody2D" groups=[
"Player1",
]]
position = Vector2( 456, 304 )
scale = Vector2( 49226.5, -7081.01 )
script = ExtResource( 2 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 2.03143e-05, -0.000141223 )
frames = SubResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
position = Vector2( 0.00111728, -0.0200536 )
scale = Vector2( -3.58869e+07, 2.35639e+10 )
polygon = PoolVector2Array( 5.3776e-11, 1.09076e-12, 4.92475e-11, 1.09076e-12, 3.5662e-11, 9.94868e-13, 2.6605e-11, 9.94868e-13, 1.30195e-11, 1.09076e-12, 8.49099e-12, 1.09076e-12, 8.49099e-12, 8.51032e-13, 1.30195e-11, 7.07195e-13, 1.7548e-11, 6.5925e-13, 2.20765e-11, 6.11305e-13, 4.01905e-11, 6.11305e-13, 4.4719e-11, 6.5925e-13, 4.92475e-11, 7.07195e-13, 5.3776e-11, 8.51032e-13 )

[node name="Mouth" type="Position2D" parent="."]
position = Vector2( 0, -0.00567998 )
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Assets/menu.gd" type="Script" id=1]

[node name="Menu" type="Control"]
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Connect" type="Panel" parent="."]
margin_left = 328.0
margin_top = 248.0
margin_right = 648.0
margin_bottom = 384.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Name" type="LineEdit" parent="Connect"]
margin_left = 16.0
margin_top = 40.0
margin_right = 144.0
margin_bottom = 64.0
text = "Name"
caret_blink = true
caret_blink_speed = 0.5
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Host" type="Button" parent="Connect"]
margin_left = 200.0
margin_top = 40.0
margin_right = 296.0
margin_bottom = 60.0
text = "Host"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="IPText" type="LineEdit" parent="Connect"]
margin_left = 16.0
margin_top = 88.0
margin_right = 144.0
margin_bottom = 112.0
text = "127.0.0.1"
caret_blink = true
caret_blink_speed = 0.5

[node name="Join" type="Button" parent="Connect"]
margin_left = 200.0
margin_top = 88.0
margin_right = 296.0
margin_bottom = 108.0
text = "Join"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="NameLabel" type="Label" parent="Connect"]
margin_left = 8.0
margin_top = 24.0
margin_right = 48.0
margin_bottom = 38.0
text = "Name:"

[node name="IPLabel" type="Label" parent="Connect"]
margin_left = 8.0
margin_top = 72.0
margin_right = 48.0
margin_bottom = 86.0
text = "IP:"

[node name="Players" type="Panel" parent="."]
visible = false
margin_left = 424.0
margin_top = 240.0
margin_right = 536.0
margin_bottom = 392.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Start" type="Button" parent="Players"]
margin_left = 24.0
margin_top = 128.0
margin_right = 88.0
margin_bottom = 148.0
text = "Start"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="List" type="ItemList" parent="Players"]
margin_left = 8.0
margin_top = 8.0
margin_right = 104.0
margin_bottom = 120.0
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Connect/Host" to="." method="_on_host_pressed"]
[connection signal="pressed" from="Connect/Join" to="." method="_on_join_pressed"]
[connection signal="pressed" from="Players/Start" to="." method="_on_start_pressed"]
 [gd_scene format=2]

[node name="Space" type="Node2D"]

[node name="TileMap" type="TileMap" parent="."]
format = 1

[node name="Players" type="Node2D" parent="."]

[node name="SpawnPoints" type="Node2D" parent="."]

[node name="0" type="Position2D" parent="SpawnPoints"]
position = Vector2( 960, 64 )

[node name="1" type="Position2D" parent="SpawnPoints"]
position = Vector2( 64, 520 )

[node name="Border" type="StaticBody2D" parent="."]

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Border"]
polygon = PoolVector2Array( 0, 0, 1016, 0, 1016, 8, 8, 8, 8, 592, 1016, 592, 1016, 0, 1024, 0, 1024, 592, 1024, 600, 8, 600, 0, 600 )
      GDSC            i      ���ׄ�   ����Ҷ��   �����¶�   ��������ض��   ���¶���   ƶ��   ��Ķ   ���������������Ŷ���   ����׶��   �������ض���   ϶��   ����������������������Ҷ   ���϶���   �������Ӷ���   �������Ӷ���   ��������Ӷ��   ������Ŷ   �������Ӷ���   ��������������������Ҷ��   ���������Ӷ�   �                     	      
                           	      
   "      #      *      4      5      <      E      c      g      3YY8;�  YY;�  Y;�  YY0�  P�  R�  QV�  �  �  �  �  �  YY0�  P�  QV�  �	  T�
  �  �  �  YY0�  P�  QV�  ;�  �  T�  PQ�  &�  �  P�  P�  Q�  T�  �  P�  Q�  PQT�  PQQV�  �  PQY`              GDSC   4      A   v     ������������τ�   �����¶�   ����򶶶   �涶   ��������   ���������Ŷ�   ��������������϶   ����¶��   ��������   �������϶���   �������������������Ӷ���   ���������������Ӷ���   �����¶�   ����������Ӷ   ���¶���   ����   �����Ӷ�   ��������������Ӷ   �������Ӷ���   ���������Ŷ�   �����Ҷ�   �������Ӷ���   ���������������Ŷ���   ����׶��   ����   �嶶   �������������ն�   ��ն   ����������������Ķ��   ζ��   ����¶��   ������������������޶   ϶��   ���������Ҷ�   ����������������Ҷ��   ����޶��   ��������������ض   ���¶���   �������ض���   �������������Ӷ�   ��������۶��   ��������Ӷ��   �����Ӷ�   �������������Ӷ�   ���϶���   ����¶��   ��Ŷ   ��������ض��   �����¶�   �������Ӷ���   �������Ӷ���   ��������Ҷ��      res://Assets/Bullet.tscn   �           �             	   play_anim         default       ui_right      ui_left       ui_down       ui_up         shoot         puppet_velocity    
   puppet_pos        ../..                                                       	   %   
   -      .      5      <      A      F      I      L      M      T      Y      ^      b      c      j      n      y      z      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /   
  0     1     2     3     4     5   (  6   0  7   1  8   =  9   B  :   G  ;   K  <   T  =   ]  >   c  ?   m  @   t  A   3YY;�  ?PQYY:�  �  Y:�  �  Y:�  �  YYH;�  �  PQYH;�  �  PQYY;�  �  T�  Y;�	  �  T�  Y;�
  �  Y;�  �  Y;�  Y;�  YY0�  P�  QV�  &�  V�  �  PZQ�  �  �  YY0�  P�  QV�  �  �  �  �  PQT�  P�  PQQYY0�  P�  QV�  ;�  �  T�  PQ�  &�  �  V�  �  P�  R�  Q�  �  &�  PQV�  �  T�  �  T�  P�  Q�  T�  P�  Q�  �  T�   �  T�  P�	  Q�  T�  P�
  Q�  �	  �  T�!  PQ�  �  &�  �  V�  &�  T�"  P�  QV�  �  �  �
  �  �  P�  R�  PQRW�#  T�$  R�  Q�  �  �%  P�  R�	  Q�  �%  P�  R�&  Q�  (V�  �	  �  �  �&  �  Y�  �'  P�	  �  Q�  &�  PQV�  �  �&  YYE0�(  P�)  R�*  QV�  W�+  T�,  P�)  QYYE0�-  P�*  R�.  R�  QV�  ;�/  �  �  &�  V�  �/  �  �  ;�0  �  T�1  PQ�  �0  T�  P�*  R�/  Q�  �0  T�$  �.  �  �2  P�  QT�3  P�0  Q�  �  P�  R�  QY`  GDSC   I   "   �   r     ���Ӷ���   ����Ӷ��   �����������ⶶ��   ��������嶶�   ����������Ӷ   ������Ŷ   ������������϶��   ������������������Ҷ   ����������������Ҷ��   �������������������Ҷ���   ���������Ҷ�   ���������Ķ�   ���¶���   ����������������Ҷ��   �Ҷ�   �����Ҷ�   �������������������Ҷ���   �������Ӷ���   �������Ӷ���   ����������������Ķ��   ����������ڶ   �������Ӷ���   ����������������Ķ��   ������������ݶ��   �������������������Ҷ���   ��������������ڶ   ���������������Ķ���   ��������������Ķ   ��������������Ӷ   ����������������Ҷ��   ����Ӷ��   �������������Ӷ�   �����������Ŷ���   ����Ҷ��   �������Ӷ���   �������¶���   ��������Ҷ��   �������Ӷ���   ���Ӷ���   �����������Ӷ���   ���Ҷ���   ��������Ŷ��   �������ض���   �����Ķ�   �������Ӷ���   �����������������Ķ�   ��������������������Ҷ��   ��������������Ӷ   ���¶���   ���Ӷ���   ��������������Ӷ   ��������Ӷ��   �������������¶�   �����Ҷ�   ƶ��   ��������Ӷ��   ���¶���   �����������������������¶���   ����   ������������Ķ��   ��������Ӷ��   �ƶ�   �����¶�   ������������¶��   ��������������¶   �����Ŷ�   ��������������Ӷ   ���������Ӷ�   ��������������ζ   ���������Ӷ�   ����Ķ��   �����϶�   ������¶      /root/Space    G)              The Warrior       register_player    
   game_error        Player         disconnected         connection_succeeded      Server disconnected           connection_failed         player_list_changed       res://Assets/Space.tscn       Menu      res://Assets/Cat.tscn         SpawnPoints/      Players             ready_to_start                      post_start_game       pre_start_game     
   game_ended        network_peer_connected        _player_connected         network_peer_disconnected         _player_disconnected      connected_to_server       _connected_ok         _connected_fail       server_disconnected       _server_disconnected                         	      
                     	      
                                 %      +      ,      -      2      7      <      A      G      H      I      P      Q      Z      [      \      c       j   !   t   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B     C     D     E     F     G     H   &  I   '  J   8  K   9  L   A  M   B  N   H  O   \  P   e  Q   f  R   p  S   v  T   }  U   ~  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i     j     k     l     m     n     o   !  p   (  q   )  r   7  s   =  t   D  u   H  v   I  w   J  x   Q  y   U  z   ^  {   g  |   p  }   q  ~   r     {  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   
  �     �     �     �     �   !  �   '  �   (  �   )  �   /  �   <  �   I  �   V  �   c  �   p  �   3YY:�  YYY:�  �  YYY:�  �  YYY;�  �  YYY;�  NOY;�  LMYYYB�  PQYB�  PQYB�	  PQYB�
  PQYB�  P�  QYYY0�  P�  QV�  �  �  P�  R�  R�  QYYY0�  P�  QV�  &�  P�  QV�  &�  PQT�  PQV�  �  P�  R�  �  L�  M�  Q�  �  PQ�  (V�  �  �  P�  QYYY0�  PQV�  �  �  P�  QYYY0�  PQV�  �  P�  R�	  Q�  �  PQYYY0�  PQV�  �  PQT�  P�
  Q�  �  P�  QYYYYD0�  P�  QV�  ;�  �  PQT�  PQ�  �?  P�  Q�  �  L�  M�  �  �  P�  QYYY0�  P�  QV�  �  T�  P�  Q�  �  P�  QYYYD0�  P�   QV�  �  ;�!  �L  P�  QT�"  PQ�  �  PQT�#  PQT�$  P�!  QY�  �  PQT�#  PQT�%  P�  QT�&  PQY�  ;�'  �L  P�  QY�  )�(  �   V�  ;�)  �!  T�%  P�  �>  P�   L�(  MQQT�*  �  ;�+  �'  T�"  PQY�  �+  T�,  P�>  P�(  QQ�  �+  T�*  �)  �  �+  T�-  P�(  QY�  &�(  �  PQT�.  PQV�  �  �+  T�/  P�  Q�  �+  T�0  P�  PQT�  PQQ�  (V�  �  �+  T�/  P�  L�(  MQ�  �+  T�0  P�  PQT�  PQQY�  �!  T�%  P�  QT�$  P�+  QY�  &�  PQT�  PQV�  �  �  P�  R�  R�  PQT�.  PQQ�  '�  T�1  PQ�  V�  �2  PQYYYD0�2  PQV�  �  PQT�3  P�  QYYYD0�4  P�  QV�  @P�  PQT�  PQQY�  &�  �  V�  �  T�5  P�  QY�  &�  T�1  PQ�  T�1  PQV�  )�6  �  V�  �  P�6  R�  Q�  �2  PQYYY0�7  P�  QV�  �  �  �  ;�8  �9  T�:  PQ�  �8  T�;  P�  R�  Q�  �  PQT�  P�8  QYYY0�<  P�=  R�  QV�  �  �  �  ;�>  �9  T�:  PQ�  �>  T�?  P�=  R�  Q�  �  PQT�  P�>  QYYY0�@  PQV�  .�  T�A  PQYYY0�B  PQV�  .�  YYY0�C  PQV�  @P�  PQT�  PQQY�  �  ;�   NO�  �   L�  M�  �  ;�D  �  �  )�6  �  V�  �   L�6  M�D  �  �D  �  �  �  )�6  �  V�  �  P�6  R�  R�   QY�  �  P�   QYYY0�  PQV�  &�  P�  QV�  �  �%  P�  QT�E  PQY�  �  P�  Q�  �  T�F  PQYYY0�G  PQV�  �  PQT�H  P�  RR�  Q�  �  PQT�H  P�  RR�  Q�  �  PQT�H  P�  RR�  Q�  �  PQT�H  P�  RR�  Q�  �  PQT�H  P�   RR�!  QY`        GDSC   ,      3   P     ������ڶ   �����϶�   ��������Ӷ��   ������¶   �嶶   ��������������¶   ������¶   ���Ӷ���   ���¶���   ��������������¶   �����������޶���   �������������Ķ�   ������Ӷ   ����¶��   ���Ӷ���   ���������������Ҷ���   ������Ŷ   ������Ӷ   ���Ӷ���   ��������   ����������Ӷ   ��������Ӷ��   ������������϶��   ���������������Ҷ���   �ƶ�   �����¶�   ������������������Ŷ   ���¶���   �������Ҷ���   ���ض���   ����¶��   ��������Ӷ��   ����������������Ҷ��   ���������Ӷ�   ������Ŷ   ��������������¶   ���¶���   ���¶���   ����Ķ��   �������۶���   ��������������Ӷ   ƶ��   �������Ӷ���   ����������������Ķ��      player_list_changed       refresh_lobby         USERNAME             \         /                            Invalid IP address!        (You)                     	                  +      .      D   	   V   
   W      ]      d      k      l      s      z      {      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .   -  /   3  0   =  1   >  2   N  3   3YY0�  PQV�  �  T�  PRR�  Q�  &�  T�  P�  QV�  W�  �  T�  �  T�	  P�  Q�  (V�  ;�
  �  T�  P�  QT�  P�  R�  QT�  P�  Q�  W�  �  T�  �
  L�
  T�  PQ�  MYY0�  PQV�  W�  T�  �  �  W�  T�  �  �  �  W�  T�  PQ�  W�  T�  PQY�  ;�  W�  �  T�  �  �  T�  P�  Q�  �  PQYYY0�  PQV�  ;�  W�  �  T�  �  &�  T�  PQV�  �?  P�	  Q�  .Y�  W�  �  T�  �  �  W�  �  T�  �  �  W�  �  T�  �  �  �  W�  T�  PQ�  W�  T�  PQY�  ;�  W�  �  T�  �  �  T�  P�  R�  QYY0�   PQV�  �  T�!  PQYY0�  PQV�  ;�"  �  T�#  PQ�  �"  T�$  PQ�  W�  �%  T�&  PQ�  W�  �%  T�'  P�  T�(  PQ�
  Q�  )�)  �"  V�  W�  �%  T�'  P�)  QY�  W�  �  T�  �*  PQT�+  PQY`GDSTL   K            �  PNG �PNG

   IHDR   L   K   ڒa�   sRGB ���  �IDATx��\1k\G��1)b��!�
B�B@���F�T]����c�W:7��rc�q� � WV�&��� �,q�
!�4A8�S\��]3;�o߽�ƺ�};3ߛ��������L1�Bh���;�t�9Crp��feu��k8�ӁX�v7�4Y%�  B�����A��s7GY;�0���2�d@��s�1&��d���`eu�Sox�;�Vxj=K�QnH�;4w��Y��â�L�i��MysR=�rs$�5�&��ɱ�gBR��`c(<�	�"<+9oMQ��(��߷�>���ㄦQL$?g���L��V�!L{1�`�nlA��s��}k���b*��.q� �A�^�x��m���΄�n>��t����H�)�5�(����S�9��np��VƦz֔���9;�h��a>����΂"������_J���Я
j�B��.����N����9��O�����>)d�:�޹�{a�>}v����"�T�z�����t}@�M��>�~B�"d������a��,a9�:O�mCr8�G'�r�׆Lʋ��g��C�����o)�І׺h���am�Q�Ǵ�]��V=,���fN��K4��z]n��a���d�i��V̅a�P"u�z]]PNZI�9䴥�ܔm�#c}T�ō�� ����K�9�~���K�MA-��"w�ܖ��| q�rs���b������K��՟�駟G�p�Q�͢[�I�QꂆPh���
�̰��J�!���o���yr�dplY!��d���%,���Q\2��n5�"S	�M�����n�� gG�3p�k{�ˇZK����񀙲������.Rf+�\If�\ii�4KJ
p�KpC0%%�5n�� 'a��hH��ЙN+7E�9"`>W*���.v����K�������L9o����,9��6�����q�ɨ����_�2�T8�%M��ue���K�}�U}�F#�����ur`�`ˊ�-W!���� L��P!-��j�fP �p�O�T���]�"瘚󸡤_ (r�3ΰ���:�J���l4�3N�%F�vO��lA�9+*�uyg'x�����!�^G_�ʡ ��츄eH� &y�����z��Ծ���d�[�
N��.�aq�3�c��^�R�������훘�n>��G|J���b51�	����|������G�����v�Ê�]���1�ⰻi�RCw%/��qd�f��'�V��\�f��j�
��\e��b]9$|����a�Yup�������A��aQ/�\�:���>��4�.�Wz0�&yAj���RH:�Fp��n��f�k :���v�	鑙�^�-��x�&�����\D%}���*`]��0|:j��7K�w������`y�W�|���:�!ﰻY��2`	3͖S�Y�7Dom��_?8 ��823���@�E���_�]���%�{�*��;�_�]	wwB^��
���=3`BB�s^���}*�(���RM I?�����8�-)���w����du��
Zd9�j�r=.w"7�K���ȁؤ��;�"�Ol������{ �^� |y�* �����5SҼy���ym��� B��[{G�{�H3� �+�`w#��l�~%�H�>��4�qd9���?���~��.���[ѳ4c���v�����w���i��v��,��1�a�#�$���K!hބ�*��������E    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cat.png-047113ce720c9dcc3947f037201718de.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/cat.png"
dest_files=[ "res://.import/cat.png-047113ce720c9dcc3947f037201718de.stex" ]

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
          GDSTL   K            �  PNG �PNG

   IHDR   L   K   ڒa�   sRGB ���  �IDATx��\�k\G��qR�$jR���˪$�(��FHՁE����^��>�Ƹ� C����cH�1w�Y�PBi�vq)t�<o����w�D��v����ffg��]q���)&�Q8�Jl�k���F�\�W�W�j�Fþ=�H����ܑ� �B�� �%�h�+k� ���4GY��,a�ʤk@'i�O�dX!����S6<͓m+<����(4$U��4w��Y%7�Â�L�i��M�pb=���������&Ƕ'<��p�@�M�Y�yk�zf�������g���4�9��Y���!�&Kc+ ��Y�Q��7� ���y����~��b*�uWJ�4��h�/�'���X�BgB���Ԟ��	?��D�S{
1�٬u������5eGf'v�N)��z�zZ�,��0��{4�W�`�� ���D��r��9;}��ג�3'����,m���CV�# ��[�����/|�)r+�.��䪟*�{��l�6s�&��:L��W{��6�^�Iv���$�"�gw��a?8Q��{�6dڼ+�yk:�Z�[ �=�&�mx-E��]DTk#�B<��9i��bP[��`�q^����r��֚.�M[�Z1*��B��eL�}��9i%��Ӗ�sSV���A�Q�;O^ ��]��/����\[�$f`y���췑A��9P��B��ΓW^�m���UP	�^��c0~X�{�a�T�!��)��}a�%7II��]�=~�^��Z18��pɕdrrc@	˺�cw`#�����Dɍ��� �n���Ύ�Of@�k{�C�����ull��{�*�)bf+�\��X���Q�,�R@R��1�蒙��̒���iR�����#7�J?洋yr��Z��jJn(�U0g�;�r�`��ks7K�;X��q:�5$��07jp������u*ܞ%M��ue���+�}�/U}��c�����u"0\��� 	[<T!���� ���FZ�9� x=̠ �Ѱ��()�:w��cj����~�ȕ�$���c,t:X�tjm���x4f(H��2�~1�łVsV�E���]��Www��Gb{�\�*� ���P�2$T �y8�KK;=���y�}����A��/��!�]>��B�3�c��[�PW���"TK���O671ٺqv�W|*�N&�jb�	��i7�������xO�l�.zXQ|j�6Pu�ʰԐ =E��ڤIdq�c��[�V��(b+�p5J��L�2�B1U�����a��R�I�rG�>}���a���~Y�eT*cg�?��7�����u�j'y��}r>���B����Ԓ��� t��Ȧ�땙cLM�n
M� ��^AI��\,E��q�t�z�6K8'�V�X��`i�W��䠛u|C�Qw��e f��-��~�o�z��]��~x /q��(fG�5�=ʟ�K;�������5�/֮ݝP��z�B��g��P�|?ڧv���.��!�� /i=�xK��'� o�t*u�7��r�Հ��;���]�rz�@h� >��&�O�<�"���� ?�y ���M ���=S��<d��jV� .�6���}_�"� �,V���f֯����H"-@��CӐ&�EBQ�}Kd��;P��������"��E%����_�V,��j���:a6L>"K⬿y��7���֒�ͯ�t�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/shoot1.png-9dcf1d10b6e0fce1024ce6689c03a6cd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/shoot1.png"
dest_files=[ "res://.import/shoot1.png-9dcf1d10b6e0fce1024ce6689c03a6cd.stex" ]

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
 GDSTL   K            �  PNG �PNG

   IHDR   L   K   ڒa�   sRGB ���  �IDATx��\�k\G��1)b��p��"aI����F����"��ܹP�s
��w�����nbun�kW�d�"� ��Nq)��y޾����މ�!��������������psL!�p����i�-�F�ܤW66�j�ƣ�=�H����ґ� �B�� ��h�[� ���4GY��,aS�ʤk@'i�S�O�d
X!����S6<͓m+<����(4$U���t��Y%7�Â�L�i��M�pb=���������&Ƕ'<��p�B�M�Y�yk�zf������o�?b���4�9��Y���!�&Kc+ ��Y�Q��7� ���y����~��b.�uWJ�4��x4,�'���X�BgB���Ԟ��	?��D�s{
1�٬��v�����5eGf'v�N)��z�zZ�,��0��{<V�`�� ���D��r��9;}��ג�3'����,m���CV�# ��{����o�?*|�)r+�.��䪟*�{��l�6s�&��:L��W{��6�^�Iv���$�:�gw���08Q��{�6dڼ+�yk:�Z�[ �=�&�mx-E��]GTk#�B<��9i��bP[��`�q^����r��֚.�M[�Z1*�-B��eL�}��9i%��Ӗ�KSV���A�Q�O_ �=ܮ�/����\[�$f`9��T��E\��(�u�����+��6�8�.���_��!����	~X�{�a�T�OܷSµ��Jn���ϻ�9?g�^^V-+\r%���P²n��]�H��cd*Qr�=�(H��.)��#�S�P����␴4z�p�N�m�i}��"f���uɌ��ZE͒.$�]�!�.�	)�,i0�tDO����V�����U�1�]B�F�j���d\�*��V�L�n0P赥�%�,a�8�/�{���E���^�:nϒ�C�2�����?�'����W�	�}�g�:.�Wg��-����hY f}'��zN5 ^3( `<Fm*J���]�"瘚󸾤_ (r�3ɰ��+�.V��Z��~5��
Rs9�L��_�GC��՜u�u���{�����؞�W�J( �;;��	�,�������_/^T�W�]\�*�b!�B�M��+,�8s8����
u�).B�h��ds��g7}ŧ��t�&�� [јv��>�����߿����&���Ň&-aS �io�K	�Sty�M�D7;�x��m�z�"���'P������*)S�X���_��|1+� ���*w<җ��++�EYF��1v&�ܞm�ݚ����z1�N�l��|F�q�$�5���%ǻ�o�K�M�	�+3!��/-��x�&����(��>�e�
X�����. m�0#�^��X��`m�_��⸗u|C�io��e f��-��~�o�z��W��}r /q��(fG�5�=ʟ�k������j���kW��N��K�[!]��3f$T<G8tC���QB�ץ� �>�� ��o�1���m�N�����YθУA��r'rs�k\N�M� ħS��|�I�'\d}y� ��ׯ _߽ x��^�gN���}>�Vm����f������*��be��d�:��O�$��O94iY$U�gзD�O��;}����Y�1(r~;^T������bm�_K���	�a��X��K>h�	�U����)ۻH    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/shoot2.png-50bdfb64bd760d3339b9c0c53a61f001.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/shoot2.png"
dest_files=[ "res://.import/shoot2.png-50bdfb64bd760d3339b9c0c53a61f001.stex" ]

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
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [general]

singleton=true
load_once=true
symbol_prefix="godot_"
reloadable=false

[entry]

Windows.64="res://bin/win64/release/libgitapi.dll"
X11.64="res://bin/x11/release/libgitapi.so"

[dependencies]

Windows.64=[  ]
X11.64=[  ]
         [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://git_api.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "GitAPI"
class_name = "GitAPI"
library = ExtResource( 1 )
script_class_name = "GitAPI"
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

path="res://Assets/bullet.gdc"
        [remap]

path="res://Assets/cat.gdc"
           [remap]

path="res://Assets/gamestate.gdc"
     [remap]

path="res://Assets/menu.gdc"
          �PNG

   IHDR   L   K   ڒa�  �iCCPICC profile  (�}�=H�P�OSEъ�D2�NDE��E�P�
�:����4$).��k���Ū������ �����"%ޗZ�x��>λ���}�P/3�� T�2����ɮ�]��Cc@b�O-��Y_��Ku�Y�}V��3���nX��3���y�8Ȋ�B|N<n���.��ƹ��3�F:9O$m,�1+*�4qHQ5�2.+��8��*kޓ�0��VR\�5��G"dTQB"�k��H�y��?����U#�*P!9~�?�=[3?5�&�@�m�]�@�f��Ƕ�8������W���'鵖:�����&��;��.�#�i	�<�~Fߔo��5wn�s�> i���pp�����������Ӝ�c�r�C ��   bKGD � { E����   	pHYs     ��   tIME� "4Ͽ   tEXtComment Created with GIMPW�  �IDATx��\�oG�=�P`�4.J�,"$��q(V�?p���¡����B����T�snP,E��T�JA�)��R${̭�cfv��{��������o��n���6n_�!@��^8 D����<}����;�[���6�\�BX�R�>{��Hl�,W���Y���Ҭ�T}����e0ΖF�G�$6�3h�06�46�#hR��:V��u�MxUN �V�eK��I��[��4���|~���A�l&ٸ}��Z��zE� `��1Kǵx����J��Ow��x;�[��ҵ���-e >=�>`��q���6��QQ��t�rT +��m��k���3�M�V���͂T�R�p�4����ji�+�y=��R2'�1��iǄ@�k��5��K��`S�s�k>7��������fp��ms밐޽��RzW�丁��GE���iF��Ǖܲ��0]�Z�K� ��ȱ���bR��$T:�V]�(��H�}1��kƔ��rzš 6
!|.Eq3�<m�(�5����3eE�>�C���Kk�  ���\���q�D���;r�\�o=�w�*p\���K.�m&vi��o:w�?����f{�Q>�q](u��w=冚�=�"U<f]W�������-��eE�o���oV����
S@�����&yƵtYQ��p�'t�����/�����9�H��~�����(|c<s��>��Y2&@Hp�kJ�1�S�I����v��V���)V�f:._����3A��6�G����P��{��U��z���`n�:|��%���K�7��Ȏndbm�A�e��E�,i�oI�J�Ѩ��I865E�i0��'>]&��0h&�lJ-�zn�V4�9�3�.]�5�sW���rI��u=�vhX����` �ݼ	  �?o����  x��ڌ�eN�%,嬨�
&�& �b�Y� ��TXY�dn@��O�M���U�|��,���vחpC�E�AC��C�NǄ��e\�7�,=�Kvɺ�����Qw���������j�׍1F���kc��q�Bhc��˗9֏��,���Q�°�I���lcU�s��1T�bY@�Ŭ\|�q㖄��������� e��1������n�D-k�d�%��o�KR����-LS���LZ��� F�GVV��ɖ��?�%�� J�.�!���]_V]�[w���W��@m�Ϸ����Pgơ��E5�b`����]x��u����Y���5�Ů�����f�- N�=��S�h��P�C, �i��b_����r3��XYY2�9}/!hr;?��OR;���Nb�O���#  �[^�� h�d 6�;2�Z�*`8~&�%�f��D�N F5��X�G.�`�u�U���ҿ�U�z(a���k?-Zw]��N�9`J�    IEND�B`�            ECFG      _global_script_classes�                     class         GitAPI        language      NativeScript      path      res://git_api.gdns        base          _global_script_class_icons                GitAPI            application/config/name         SSSS   application/run/main_scene          res://Assets/Menu.tscn  &   application/config/use_custom_user_dir         '   application/config/custom_user_dir_name         Assets     application/config/icon          res://Sprites/cat.png      autoload/gamestate$         *res://Assets/gamestate.gd     gdnative/singletons$               res://git_api.gdnlib   input/ui_left(              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/shoot`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres           