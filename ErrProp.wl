BeginPackage["ErrProp`"];
ErrorPropagation::usage = "ErrorPropagation[formula,variables,values,errors] calculates the error of the formula for the specified value vector and their errors (also submitted as an vector).";
ErrorProgagationOnDataList::usage = "ErrorProgagationOnDataList[formula,variables,data] calculates the error of the formula for the specified values and their errors, which are stored in the data table.";
ErrorProgagationOnDataPath::usage = "ErrorProgagationOnDataPath[formula,variables,path] calculates the error of the formula for the specified values and their errors, which are stored in a data table which is located in the file that can be accessed at path.";
ErrorProgataionPrintFormula::usage = "ErrorProgataionPrintFormula[formula,variables] prints the formula for the error propagation for the submitted formula and its variables.";

ErrorPropagation::argnum = "ErrorPropagation was called with `1` argument. It expected 4.";
ErrorProgagationOnDataList::argnum = "ErrorProgagationOnDataList was called with `1` argument. It expected 3.";
ErrorProgagationOnDataPath::argnum = "ErrorProgagationOnDataPath was called with `1` argument. It expected 3.";
ErrorProgataionPrintFormula::argnum = "ErrorProgataionPrintFormula was called with `1` argument. It expected 2.";


ErrorPropagation[args___] := (Message[ErrorPropagation::argnum, Length[{args}]]; $Failed)
ErrorProgagationOnDataList[args___] := (Message[ErrorProgagationOnDataList::argnum, Length[{args}]]; $Failed)
ErrorProgagationOnDataPath[args___] := (Message[ErrorProgagationOnDataPath::argnum, Length[{args}]]; $Failed)
ErrorProgataionPrintFormula[args___] := (Message[ErrorProgataionPrintFormula::argnum, Length[{args}]]; $Failed)

ErrorPropagation[f_,var_,val_, sigm_] := Module[{res = 0},
For[i=1,i<Length[sigm]+1,i++,res += (((Function@@{var,D[f,{var}]})@@val)[[i]]*sigm[[i]])^2];
Sqrt[res]
]

ErrorProgagationOnDataList[f_,var_,data_]:= Module[{res = {}},
res = Append[res, {"Value", "Error"}];
For[j = 1,j<=Length[data],j++,
res = Append[res, {((Function@@{var,f})@@data[[j]][[1;;Length[data[[j]]];;2]]),ErrorPropagation[f,var, data[[j]][[1;;Length[data[[j]]];;2]],data[[j]][[2;;Length[data[[j]]];;2]]]}]
];
res
]

ErrorProgagationOnDataPath[f_,var_, path_] := ErrorProgagationOnDataList[f, var,Import[path, "Table"]]

ErrorProgataionPrintFormula[f_,var_] := Module[{res = 0, tmp = D[f,{var}]},
For[i=1,i<Length[tmp]+1,i++,res += (tmp[[i]]*Subscript[\[Sigma],var[[i]]])^2];
Sqrt[res]]

EndPackage[];
