-- retorna os caracteres apos 1º ocorrencia de um caracter - "espaco"
SELECT substr('A B C d ',INSTR('A B C d', ' ', 1, 1) + 1 ,length('A B C d')) String from dual;

-- input
('A B C d ')

-- output
('B C d ')
