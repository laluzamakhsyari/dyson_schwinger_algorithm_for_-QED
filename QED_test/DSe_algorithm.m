(* ::Package:: *)

(* ::Input:: *)
(*(*Square Matrix Algorithm*)*)
(*SquareMatrix= DeleteCases[Reap[Do[Block[{ob,obb},*)
(*ob={};*)
(*connectob[whatever_]:=AppendTo[ob,whatever];*)
(*obb={};*)
(*Block[{in,on,poll},*)
(*in=*)
(*Reap[Do[Which[i<= numinput,If[flv[[i]]!= gamma,Sow[{flv[[i]](-1),num[[i]]}],Sow[{flv[[i]],num[[i]]}]],*)
(*i>numinput,Sow[{flv[[i]],num[[i]]}]],*)
(*{i,1,Length[num],1}]][[2,1]];*)
(*poll=Reap[Do[Sow[pol[momm[in[[i,2]]],x,i]],{i,1,Length[in],1}]][[2,1]];*)
(*in=Reap[Do[Sow[Join[in[[i]],{poll[[i]]}]],{i,1,Length[in],1}]][[2,1]];*)
(*on=DeleteCases[in,in[[1]]];*)
(*connectob[on];*)
(*in=AppendTo[obb,in];*)
(*Print[StringForm["polarisation sign:``",polsign[[x]]]];*)
(*Print[StringForm["level `` : {``;``}",1,obb[[1,1]],ob[[1]]]];*)
(*];*)
(*Do[Block[{lvl,lvll,lv1,lv2,comb,combb,comb1,comb2,c,d},*)
(**)
(*lvl=DeleteCases[Reap[Do[Sow[If[i+j==n,Sort[{i,j}]]],{i,1,n,1},{j,1,n,1}]][[2,1]],Null];*)
(*lvl=DeleteDuplicates[lvl];*)
(*lv1=Reap[Do[Sow[lvl[[i,1]]],{i,1,Length[lvl],1}]][[2,1]];*)
(*lv2=Reap[Do[Sow[lvl[[i,2]]],{i,1,Length[lvl],1}]][[2,1]];*)
(**)
(*comb=Reap[Do[*)
(*Which[lv1[[k]]==lv2[[k]],*)
(*Do[Sow[If[m!= j,Sort[{{lv1[[k]],m},{lv2[[k]],j}}],Nothing]],{m,1,Length[ob[[lv1[[k]]]]],1},{j,1,Length[ob[[lv2[[k]]]]],1}],*)
(*lv1[[k]]!= lv2[[k]],*)
(*Do[Sow[{{lv1[[k]],m},{lv2[[k]],j}}],{m,1, Length[ob[[lv1[[k]]]]],1},{j,1,Length[ob[[lv2[[k]]]]],1}]],*)
(*{k,1,Length[lv1],1}]][[2,1]];*)
(**)
(*combb=Reap[Do[Which[lv1[[i]]==lv2[[i]],Sow[DeleteDuplicates[comb]],lv1[[i]]!= lv2[[i]],Sow[comb]],{i,1,Length[lv1],1}]][[2,1,1]];*)
(**)
(*comb1=Reap[Do[Sow[combb[[i,1]]],{i,1,Length[combb],1}]][[2,1]];*)
(*comb2=Reap[Do[Sow[combb[[i,2]]],{i,1,Length[combb],1}]][[2,1]];*)
(**)
(*c=DeleteCases[Reap[Do[Sow[logic2[n,ob[[comb1[[i,1]],comb1[[i,2]],1]],ob[[comb2[[i,1]],comb2[[i,2]],1]],ob[[comb1[[i,1]],comb1[[i,2]],2]],ob[[comb2[[i,1]],comb2[[i,2]],2]],ob[[comb1[[i,1]],comb1[[i,2]],3]],ob[[comb2[[i,1]],comb2[[i,2]],3]]]],*)
(*{i,1,Length[comb1],1}]][[2,1]],Null];*)
(*c=DeleteCases[c,Join[Null,{}]];*)
(*c=DeleteDuplicates[DeleteCases[c,Join[Null, Nothing]]];*)
(**)
(*d=Block[{test,newc},*)
(*test=#1[[1]]==#2[[1]]&&sum[#1[[2]]]==sum[#2[[2]]]&;*)
(*newc=Gather[c,test];*)
(*Table[newc[[i]]/. x_List-> {newc[[i,1,1]],sum[newc[[i,1,2]]],Sum[newc[[i,j,3]],{j,1,Length[newc[[i]]]}]},{i,1, Length[newc]}]*)
(*];*)
(**)
(*Print[StringForm["level `` : {``;``}",n,obb[[1,1]],c]];*)
(*Print[StringForm["Simplification level `` : {``;``}",n,obb[[1,1]],d]];*)
(*Print[StringForm["Number of Feynman Graphs level ``: ``",n,Length[DeleteCases[c,Null]]]];*)
(*connectob[DeleteCases[c,Null]]; *)
(*]*)
(*,{n,2,Length[num]-1,1}];*)
(*Print[StringForm["Amplitude Scattering : ``",Sow[Amp[Sum[ob[[Length[num]-1,i,3]],{i,Length[ob[[Length[num]-1]]]}],obb[[1,1,3]]]]]];*)
(*],*)
(*{x,1,Length[polsign],1}]*)
(*][[2,1]],{0}];*)
(**)
(*StringForm["The Squared Matrix Element is :``",combfactor (Sum[SquareMatrix[[i]],{i,1,Length[SquareMatrix]}])/4]*)
