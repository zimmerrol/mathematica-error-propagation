# mathemtica-error-propagation
To use this packet, please import it with

``Needs["ErrProp`", "C:\\path\\to\\file\\ErrProp.wl"]``.

Methods:

``ErrorPropagation[m*\[Omega]^2, {m, \[Omega]}, {99.9, 0.2}, {0.6, 0.1}]``

``TableForm[ErrorProgagationOnDataPath[m*\[Omega]^2, {m, \[Omega]}, "C:\\Users\\Roland\\Desktop\\Data.dat"]]``

``TableForm[ErrorProgagationOnDataList[m*\[Omega]^2, {m, \[Omega]},{{99.9, 0.2, 0.6, 0.1}, {99.9, 0.6, 0.2, 0.1}}]]``

``ErrorProgataionPrintFormula[m/\[Omega]^2, {m, \[Omega]}]``
Prints the formula which is used to calculate the error. This can be redirected to the TeXForm method to print LaTeX code by using
``TeXForm[ErrorProgataionPrintFormula[m/\[Omega]^2, {m, \[Omega]}]]``.
