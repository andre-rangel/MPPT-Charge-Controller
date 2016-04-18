function [Vref] = cicloTrab (Vfonte,Vsaida)
    // cálculo do coeficiente k que representa o ciclo de trabalho da chave.
    // o ciclo de trabalho K representa uma porcentagem do período em que o 
    // sinal de saída é positivo (ON). 50% positivo é 0,2V de tensão de
    // referência de saída.
   
    VsaidaRef = -27.6;
    
   // if abs(Vsaida) > abs(VsaidaRef) then
      // delta = abs(Vsaida) - abs(VsaidaRef);
      // VsaidaRef = VsaidaRef + delta;
    //end
    //razaoV = Vsaida/Vfonte;
    k = VsaidaRef/(VsaidaRef-Vfonte);
    //k = razaoV/(razaoV+1); // 0<K<1
    
   // regra de três para achar a tensão de referência.
    Vref = (0.4*k);   
    
    //A tensão de referência deve ser menor que 0,4.
    if Vref > 0.399  then
        Vref = 0.399;
    end
endfunction
