=begin

D. Генерация скобочных последовательностей

Дано целое число n. Требуется вывести все правильные скобочные последовательности длины 2 ⋅ n, 
упорядоченные лексикографически (см. https://ru.wikipedia.org/wiki/Лексикографический_порядок).
В задаче используются только круглые скобки.
Желательно получить решение, которое работает за время, 
пропорциональное общему количеству правильных скобочных последовательностей в ответе, 
и при этом использует объём памяти, пропорциональный n.

Формат ввода
Единственная строка входного файла содержит целое число n, 0 ≤ n ≤ 11
 

Формат вывода
Выходной файл содержит сгенерированные правильные скобочные последовательности, упорядоченные лексикографически.

=end

def get_ordered_combinations_of_parentheses(count,s='',left_count=0,right_count=0)
    combinations = []
    if left_count == count && right_count == count
        s
    else
        if left_count < count
            combinations << get_ordered_combinations_of_parentheses(count,s+'(',left_count+1,right_count)
        end
        if right_count < count && right_count < left_count
            combinations << get_ordered_combinations_of_parentheses(count,s+')',left_count,right_count+1)
        end
        combinations.join("\n")
    end
end

n = File.open('input.txt', 'rb').read.to_i
File.open('output.txt', 'w') { |file| file.write(get_ordered_combinations_of_parentheses(n)) }
