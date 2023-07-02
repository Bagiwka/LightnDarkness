extends Node2D
 
func _process(delta):
	$HPLabel.set_text(str("HP: ", HP))
	for i in range(4):
		if Ens[i][0] == 0:
			print(i)
			match i:
				0:
					self.find_child("E1").position.x=123123
					break;
				1:
					self.find_child("E2").position.x=123123
					break;
				2:
					self.find_child("E3").position.x=123123
					break;
				3:
					self.find_child("E4").position.x=123123
					break;
	if turn == 1:
		print(Ens[0][0], Ens[1][0], Ens[2][0], Ens[3][0])
		for i in range(4):
			if Ens[i][0] != 0:
				HP -=1
				if HP <= 0:
					get_tree().quit()
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
var Colour = 0;

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


"func _on_e_1_pressed():
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
	

func _on_e_2_pressed():
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
	

func _on_e_3_pressed():
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
	

func _on_e_4_pressed():
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

func _on_hw_1_pressed():
	self.get_child(9).position.x = 123123
	Hand[0] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 1:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_hw_2_pressed():
	self.get_child(10).position.x = 123123
	Hand[1] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 1:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_hw_3_pressed():
	self.get_child(11).position.x = 123123
	Hand[2] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 1:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_hb_1_pressed():
	self.get_child(12).position.x = 123123
	Hand[0] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 0:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_hb_2_pressed():
	self.get_child(13).position.x = 123123
	Hand[1] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 0:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_hb_3_pressed():
	self.get_child(14).position.x = 123123
	Hand[2] = 0
	for i in range(4):
		if Ens[i][0] != 0:
			if Ens[i][2] == 0:
				Ens[i][0] = Ens[i][0]-1
				print(Ens[i][0])
				break
	turn = 1


func _on_colour_pressed():
	if Colour == 0:
		self.find_child("DefaultBg").position.x = 1231231
		Colour = 1
	else:
		self.find_child("DefaultBg").position.x = 0
		Colour = 0
	turn = 1

func _Heal():
	HP = HP+3

func _on_h_1_pressed():
	_Heal()


func _on_h_2_pressed():
	_Heal()


func _on_h_3_pressed():
	_Heal()
