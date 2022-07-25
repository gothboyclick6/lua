ultimaCopa={
    ano = 2002,
    sede = "japao e coreia",
    jogadores = {"cafu", "ronaldo"}
    imprime = function()
        for k,v in ipairs(self.jogadores) do
            print (k, v)
        end
    end    
}

print(ultimaCopa.ano)4

ultimaCopa.capitao = "Cafu"
print(ultimaCopa.capitao)

print = ultimaCopa.jogadores(1)
print = ultimaCopa.jogadores(2)

table.insert(ultimaCopa.jogadores, "Rivaldo")
table.insert(ultimaCopa.jogadores, "zico")
table.remove(ultimaCopa.jogadores, 4)

ultimaCopa.imprime(ultimaCopa)
ultimaCopa:imprime()

