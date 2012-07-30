require_relative "quebra_linha"

describe QuebraLinha do
  it "Texto com menos de 20 colunas nao quebra de linha" do
    QuebraLinha.quebrar("asdfg").should == "asdfg"
  end

  it "Texto com 20 colunas nao quebra linha" do
    QuebraLinha.quebrar("estamos no dojo hoj ").should == "estamos no dojo hoj "
  end

  it "Texto com mais de 20 colunas sem espacos quebra linha" do
    QuebraLinha.quebrar("012345678901234567890123456789").should == "01234567890123456789\n0123456789"
  end

  it "Texto com mais de 20 coluna quebra linha" do
   QuebraLinha.quebrar("Texto com mais de 20 colunas sem espacos quebra linha").should == "Texto com mais de 20\n colunas sem espacos\n quebra linha"
  end

  it "Texto com mais de 20 colunas quebra linha e procura o ultimo espaco em branco" do
    QuebraLinha.quebrar("0123456789 01234 56789").should == "0123456789 01234 \n56789"
  end
end