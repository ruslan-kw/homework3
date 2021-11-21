# Task #2
# Write a validation on the string that will check the entered string for parentheses.
# There are four types of brackets. Which open '(', '{', '[', '<' and closing brackets ')', '}', ']', '>'
# Напишіть перевірку для рядка, яка перевірить введений рядок на наявність дужок.
# Існує чотири типи дужок. Які відкривають '(', '{', '[', '<' і закриваючі дужки ')', '}', ']', '>'

# 1) Write a class that will accept the string and a method that will check whether the parentheses are closed or not.
# 1) Напишіть клас, який прийматиме рядок і метод, який перевірятиме, чи закриті дужки чи ні.
# Brackets.new('{(})').valid?   # => false
# Brackets.new('{{[]').valid?   # => false
# Brackets.new('{[()]}').valid? # => true
# Brackets.new('<<>>').valid?   # => true

# 2)* Extend the String class (Monkey Patching in Ruby), add the method that was implemented in the first point
# 2)* Розширити клас String (Monkey Patching в Ruby), додати метод, який був реалізований у першому пункті
# '{(})'.valid?   # => false
# '{{[]'.valid?   # => false
# '{[()]}'.valid? # => true
# '<<>>'.valid?   # => true


# Requirements: # Вимоги:
# > Кожне завдання в окремому файлі
# > Не копіює опис завдання у файл
# > Використовуйте лише англійську мову
# > Each task in a separate file
# > Does not copy the task description to the file
# > Use only English language