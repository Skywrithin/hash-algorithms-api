primes =  [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311]
roots = [];constants = [];hexs = [];
primes.each do |prime|
    root = prime ** (1/3.0)
    roots << root
    fractional = root - root.floor
    hex = ""
    8.times do
        product = fractional * 16
        carry = product.floor
        fractional = product - product.floor
        hex << carry.to_s(16)
    end
    hexs << hex
    constants << hex.to_i(16)
end

# Create a table with any of the following seed templates
    # Constant.create( root_value: "" value: "", binary_value: "", hex_value: "" )
    # Operations.create( operation: "", operator: "" )
    # Algorithm.create (name: "", output_length: integer, block_length: integer, word_length: integer )
    # AlgorithmsConstants.create( algorithm_id: integer, constants_id: integer )
    # AlgorithmsOperations.create( algorithm_id: integer, constants_id: integer )


puts "🌱 Seeding... EVERYTHING"

puts "🌱 Seeding Algorithoms..."
    aa = Algorithm.create( name: "Sha256", output_length: 256, block_length: 512, word_length: 32 )

puts "🌱 Seeding messages..."
    ma = Message.create(message: "test", digest: "0x67452301", algorithm_id: aa.id)
    mb = Message.create(message: "Another Test", digest: "0xEFCDAB89", algorithm_id: aa.id)

puts "🌱 Seeding Constants..."
    cf = Constant.create( root_value: "null", value: "1779033703", binary_value: "01101010000010011110011001100111", hex_value: "6a09e667")
    cg = Constant.create( root_value: "null", value: "3144134277", binary_value: "10111011011001111010111010000101", hex_value: "bb67ae85")
    ch = Constant.create( root_value: "null", value: "1013904242", binary_value: "00111100011011101111001101110010", hex_value: "3c6ef372")
    ci = Constant.create( root_value: "null", value: "2773480762", binary_value: "10100101010011111111010100111010", hex_value: "a54ff53a")
    cj = Constant.create( root_value: "null", value: "1359893119", binary_value: "01010001000011100101001001111111", hex_value: "510e527f")
    ck = Constant.create( root_value: "null", value: "2600822924", binary_value: "10011011000001010110100010001100", hex_value: "9b05688c")
    cl = Constant.create( root_value: "null", value: "528734635",  binary_value: "00011111100000111101100110101011", hex_value: "1f83d9ab")
    cm = Constant.create( root_value: "null", value: "1541459225", binary_value: "01011011111000001100110100011001", hex_value: "5be0cd19")

    hexs.each_with_index do |hexValue, index|
        index = Constant.create( root_value: "null", value: hexValue.hex , binary_value: hexValue.hex.to_s(2).rjust(hexValue.size*4, '0') , hex_value: hexValue)
    end

puts "🌱 Generating Operations..."
    oa = Operation.create( operation: "add", operator: "test" )
    ob = Operation.create( operation: "and", operator: "&" )
    oc = Operation.create( operation: "or", operator: "|" )
    od = Operation.create( operation: "xor", operator: "^" )
    de = Operation.create( operation: "rot", operator: "nil" )
    df = Operation.create( operation: "shr", operator: ">>>" )
    dg = Operation.create( operation: "not", operator: "~" )

puts "🌱 Generating join tables..."
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: cf.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: cg.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: ch.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: ci.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: cj.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: ck.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: cl.id )
    JoinAlgorithmsConstant.create( algorithm_id: aa.id, constant_id: cm.id )

puts "✅ Done seeding!"
