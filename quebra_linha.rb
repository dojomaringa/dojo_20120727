class QuebraLinha
  def self.quebrar(texto)
    return texto if texto.length <= 20

    resultado = ""
    contador = 0

    texto_array = texto.split(" ")
    espaco = textoArray.size - 1

    textoArray.each do |palavra|
      if (contador + palavra.length + 1) < 20
        resultado += palavra + " "
        contador += palavra.length + 1
      elsif contador + palavra.length == 20
        resultado += palavra + "\n "
        contador = 0
      else
        resultado += "\n"
        resultado += palavra + " "
        contador = 0
      end
    end

    resultado.chop
  end
end
