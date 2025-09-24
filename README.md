# PSNotes

Notes for Freshman Physical Science

## Use MikTex for better package management over TeXLive

## SI Units and Numbers

Check <https://texdoc.org/serve/siunitx/0> for details on how to do numbers, units, scientific notation, angles etc.

## Braces

\underbrace{Main Text}_{Text next to brace} % {
\underbracket{Main Text}_{Text next to brace} % [

Use \atop to split lines in underbraces.

Use \strut before the Main Text (\underbrace{\strut Main Text}\_{Text next to brace}) to move the brace further from the content

\lbrace and \rbrace for side braces

## Repeating a section of code with the multido package

The multido package provides a versatile command \multido for repeating content.
Code

\usepackage{multido}

\multido{\i=1+1}{n}{%
  % Your code to be repeated
  This is repetition number \i.
}

    \i=1+1: Initializes a counter \i to 1 and increments it by 1 in each iteration. You can customize the starting value and increment.
    n: Specifies the number of repetitions.
    {Your code to be repeated}: This is the block of code or content that will be repeated n times. The counter \i can be used within this block.
