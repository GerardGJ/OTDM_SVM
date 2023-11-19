print("Write the nu:")
nu = input()
print("Write the output file name:")
input = input()
print("Write the output file name:")
name = input()

X = []
Y = []
with open(input,"r") as file:
    for row in file:
        obs = row.split()
        x = " ".join(obs[0:4])
        y = obs[-1]

        X.append(x)
        Y.append(y)
    n = len(obs[0:-1])

with open(name,"w") as file:
    m = len(X)

    file.write(f"param m := {m}"+";\n")
    file.write(f"param n := {n}"+";\n")

    file.write(f"param nu := {nu}"+";\n")

    file.write("\n"*2)
    file.write("param y :="+"\n")
    for i,y in enumerate(Y):
        y=y.replace("*","")
        if y[-1] == "*":
            file.write(str(i+1)+" "+y[:-1])
        else: 
            file.write(str(i+1)+" "+y)
        file.write("\n")

    file.write(";")    
    file.write("\n"*2)
    file.write("param x : 1 2 3 4 :="+"\n")
    for i,x in enumerate(X):
        file.write(str(i+1)+" "+x)
        file.write("\n")
    file.write(";")  