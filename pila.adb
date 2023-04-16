package body Pila is

   --Limpiar pila
   procedure Clear(Pila: in out Tipopila) is
   begin
      Pila.Cabeza:=0;
   end Clear;
   
   --Insertar elemento
   procedure Push (Item: in tipodato; pila: in out tipopila) is
   
   begin
      
      if not Is_Full(pila) then --cheqea que la pila no este llena
         pila.cabeza := pila.cabeza + 1;
         Pila.Elemento(Pila.Cabeza) := Item;
         else raise Overflow;
      end if;
   
   end Push;
   
   --Elimina elimina y devuelve el elemento en la cima de la pila
   procedure Pop(Pila: in out Tipopila; Elemento: out Tipodato) is
      
      begin
      
         if not Is_Empty(Pila) then --chequea que la pila no este vacia
            elemento:=pila.elemento(pila.cabeza);
            Pila.Cabeza:=Pila.Cabeza -1;
            else raise Underflow;
            end if;
            
      end pop;
   
      --devuelve el elemento en la cima de la pila sin eliminarlo
      function Top(Pila: in Tipopila) return Tipodato is
      
      begin
         
         return pila.elemento(pila.cabeza);
      
      end Top;
      
      --devuelve true si la pila esta vacia
      Function Is_Empty (Pila: in Tipopila) return Boolean is
   
   begin
      
      return Pila.Cabeza=0;
      
   end Is_Empty;
   
   --devuelve true si la pila esta llena
   function Is_Full (Pila: in Tipopila) return Boolean is
   
   begin
      
      return Pila.Cabeza=pila.Max;
      
   end Is_Full;
      
end Pila;

