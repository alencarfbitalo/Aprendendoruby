def multi(valor1, valor2)
    array = []
    i = 0
    while array.length < valor1
      i += 1
      array << i * valor2
    end
    return array
  end
  
  puts multi(3, 7)




