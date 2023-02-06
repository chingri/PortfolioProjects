
print("Welcome to the Love Calculator!")
name1 = input("What is your name? \n")
name2 = input("What is their name? \n")

#Code for first name
name1=name1.lower()
name2=name2.lower()
#Counting TRUE occurrence
t_count=name1.count('t')
r_count=name1.count('r')
u_count=name1.count('u')
e_count=name1.count('e')

t_count2=name2.count('t')
r_count2=name2.count('r')
u_count2=name2.count('u')
e_count2=name2.count('e')
#Calculating True Points
total_true_point_name1 = t_count+r_count+u_count+e_count
total_true_point_name2=t_count2+r_count2+u_count2+r_count2
total_true = total_true_point_name1+total_true_point_name2
 
#Calculating Love points
l_count=name1.count('l')
o_count=name1.count('o')
v_count=name1.count('v')
e_count=name1.count('e')

l_count2=name2.count('l')
o_count2=name2.count('o')
v_count2=name2.count('v')
e_count2=name2.count('e') 

#Calculating Love Points
total_love_point_name1 = l_count+o_count+v_count+e_count
total_love_point_name2 = l_count2+o_count2+v_count2+e_count2
total_love = total_love_point_name1+total_love_point_name2


#putting the points together
str_true = str(total_true)
str_love = str(total_love)
str_total_points = str_true+str_love
final_score = int(str_total_points)

#checking the final statement
if final_score>90 or final_score<10:
    print(f"Your score is {final_score}, you go together like coke and mentos.")
elif final_score>40 and final_score<=50:
    print(f"Your score is {final_score}, you are alright together.")
else:
    print(f"Your score is {final_score}.")
