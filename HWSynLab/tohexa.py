# def to_hexadecimal(number, bit_width=10):    
#     number = number % (16 ** bit_width)
#     if(number == 0):
#     return binary_representation

def to_binary(number, bit_width=10):    
    number = number % (2 ** bit_width)
    binary_representation = format(number, f'0{bit_width}b')
    return binary_representation

n = 16
print(2**n)
w = ["0000000000000000"] * (2**17)
print(len(w))
for i in range(2**n) :
    if (i > 999999) : 
        continue
    
    else :
        b0 = i % 10
        b1 = int(i / 10) % 10
        b2 = int(i / 100) % 10
        b3 = int(i / 1000) % 10
        
        num0 = i % 16
        num1 = int(i / 16) % 16
        num2 = int(i / 16**2) % 16
        num3 = int(i / 16**3) % 16
        
        output2 = to_binary(b3, bit_width=4) + to_binary(b2, bit_width=4) + to_binary(b1, bit_width=4) + to_binary(b0, bit_width=4)
        output = to_binary(num3, bit_width=4) + to_binary(num2, bit_width=4) + to_binary(num1, bit_width=4) + to_binary(num0, bit_width=4)
        print(int(output))
        # print(int(output2))
    w[int(output)] = output2
    

    
with open('resulthexreal.txt', 'w') as file:
    for l in w : 
        file.write(l + '\n')
        