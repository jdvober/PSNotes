# PSNotes

Notes for Freshman Physical Science

## Use MikTex for better package management over TeXLive

## SI Units and Numbers

Check <https://texdoc.org/serve/siunitx/0> for details on how to do numbers, units, scientific notation, angles etc.

## Braces

\underbrace{Main Text}_{Text next to brace} % {
\underbracket{Main Text}_{Text next to brace} % [

Example:

```latex
{ % Start of a local group
\def\stacktype{L} % Set stack to be a "long" stack
\setstackgap{L}{1cm} % Set the gap between stacked items

% Math
\def\LHS{V_2}
\def\RHS{\frac{P_1 \cdot V_1}{P_2}}

% Text
\def\RHST{
	\hspace*{3.5cm} % move the text to a better location (to the right)
	\begin{array}{l}% c --> center aligned, r --> right aligned, l --> left aligned
		\text{Your} \\ \text{"Given" a.k.a. "Known"} \\ \text{variables are on this side.}
	\end{array}
}
\def\LHST{
	\begin{array}{c}% c --> center aligned
		\text{The} \\ \text{"Find"} \\ \text{variable}
	\end{array}
}

\[
	\mathBrace{\LHS}{\LHST}= \mathBrace{\RHS}{\RHST}
\]
} % End of the local group
```

\lbrace and \rbrace for side braces

## Chemicals

Ex: Water

```latex
    \chemfig{%
        \circledatom{dracOrange}{O}%
        (-[:-52.25]\circledatom{dracCyan}{H})%
        (-[:232.25]\circledatom{dracCyan}{H})% 180+ 52.5 <-- lower left hydrogen
    }
```

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
