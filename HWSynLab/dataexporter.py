def to_binary(number, bit_width=10):    
    number = number % (2 ** bit_width)
    binary_representation = format(number, f'0{bit_width}b')
    return binary_representation

n = 14

w = []

for i in range(2**n) : 
    binary = str(to_binary(i,n));
    
    if (i > 9999) : 
        continue
    
    else :
        num0 = i % 10
        num1 = int(i / 10) % 10
        num2 = int(i / 100) % 10
        num3 = int(i / 1000) % 10
        
        output = to_binary(num3, bit_width=4) + to_binary(num2, bit_width=4) + to_binary(num1, bit_width=4) + to_binary(num0, bit_width=4)
        # print(to_binary(num3, bit_width=4))
    w.append(output)
    

    
with open('result.txt', 'w') as file:
    for l in w : 
        file.write(l + '\n')
        
'''
always @ (posedge targetClk) begin
    if (sw > 14'd9999) begin
        num3 = 4'd10;
        num2 = 4'd10;
        num1 = 4'd10;
        num0 = 4'd10;
    end
    else begin
       num0 = sw % 10;
       num1 = (sw / 10) % 10;
       num2 = (sw / 100) % 10;
       num3 = (sw / 1000) % 10;
    end
end
'''