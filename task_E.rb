=begin

E. Анаграммы

Даны две строки, состоящие из строчных латинских букв. 
Требуется определить, являются ли эти строки анаграммами, т. е. отличаются ли они только порядком следования символов. 

Формат ввода
Входной файл содержит две строки строчных латинских символов, каждая не длиннее 100 000 символов. 
Строки разделяются символом перевода строки. 
 
Формат вывода
Выходной файл должен содержать единицу, если строки являются анаграммами, и ноль в противном случае.

=end

def anagram?(line1,line2)
    line1.chars.sort! == line2.chars.sort!
end

File.open('input.txt', 'r') do |input_file| 
    line1 = input_file.gets
    line2 = input_file.gets   
    $res = anagram?(line1,line2) ? 1 : 0
end 

File.open('output.txt', 'w') do |output_file|  
    output_file.write($res)
end