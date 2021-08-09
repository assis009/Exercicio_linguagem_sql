
-- questão 1
declare @lado1 int,
		@lado2 int,
		@lado3 int 

set @lado1 =5
set @lado2 =7
set @lado3 = 8


if (@lado1+@lado2>@lado3 and @lado2+@lado3> @lado1 and @lado1+@lado3> @lado3)
begin 
	print('Forma um triangulo')
	if(@lado1=@lado2 and @lado2=@lado3)
	begin 
		print('equilatero')
	end 
	else
	begin
		if(@lado1=@lado2 or @lado2=@lado3 or @lado1=@lado3)
		begin
			print('isóceles')
		end
		else 
			begin
				print('escaleno')
		end 
	end
end 
else 
begin
	print('Não forma um triangulo')
end 

-- questão 2

declare @anterior int,
		@atual int,
		@proximo int,
		@cont int,
		@soma int

set @anterior = 0
set @atual = 1
set @proximo = 1 
set @cont =0
set @soma = 0

while(@cont<15)
begin 
	print(@proximo)

	set @soma = @soma + @proximo

	set @proximo = @anterior + @atual
	set @anterior = @atual
	set @atual = @proximo

	set @cont = @cont +1
end 
print('soma dos termos é :'+convert(varchar(10), @soma))

-- questão 3

declare @palavra1 varchar(100),
		@palavra2 varchar(100)

set @palavra1 = 'subinoonibus'
set @palavra2 = REVERSE(@palavra1)

if(@palavra1 = @palavra2)
begin
	print('Palindromo')
	print(@palavra1 +'-'+@palavra2)
end 
else 
begin 
	print('Diferentes')
end 


-- questão 4
declare @frase varchar(100),
		@letra varchar(1),
		@prox_letra varchar(1),
		@tamanho int,
		@num_palavras int

set @frase = 'nao sei nao'
set @frase = ltrim(rtrim(@frase))
set @tamanho = len(@frase)
set @num_palavras =0 

while(@tamanho>0)
begin
set @letra = substring(@frase, @tamanho, 1)
set @prox_letra = substring(@frase, @tamanho+1, 1)
	if(@letra <> ' ' and @prox_letra = ' ')
	begin 
		set @num_palavras = @num_palavras + 1
	end 
	set @tamanho = @tamanho -1
end 

print(@num_palavras)
