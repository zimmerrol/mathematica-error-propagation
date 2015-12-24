# mathematica-error-propagation
To use this packet, please import it with

``Needs["ErrProp`", "C:\\path\\to\\file\\ErrProp.wl"]``.

Methods:

``ErrorPropagation[m*w^2, {m, w}, {99.9, 0.2}, {0.6, 0.1}]``
Calculates the error using the error propation.

``TableForm[ErrorProgagationOnDataPath[m*w^2, {m, w}, "C:\\Users\\Roland\\Desktop\\Data.dat"]]``

``TableForm[ErrorProgagationOnDataList[m*w^2, {m, w},{{99.9, 0.2, 0.6, 0.1}, {99.9, 0.6, 0.2, 0.1}}]]``

``ErrorProgataionPrintFormula[m/w^2, {m, w}]``
Prints the formula which is used to calculate the error. This can be redirected to the TeXForm method to print LaTeX code by using
``TeXForm[ErrorProgataionPrintFormula[m/w^2, {m, w}]]``.
