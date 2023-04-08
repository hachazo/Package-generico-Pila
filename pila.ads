generic
   
   type Tipodato is private;
   Max: positive; --tope de la pila

package Pila is
      
      type Tipopila (Max: Positive) is limited private;
      
   procedure clear(pila: in out Tipopila);
   --Elimina todos los elementos de la pila
      
   procedure Push (Item : in tipodato; pila: in out tipopila);
   -- Inserta un elemento en la pila

   procedure Pop (pila: in out tipopila; elemento: out tipodato);
   -- Elimina y devuelve el elemento en la cima de la pila

   function Top (pila: in tipopila) return tipodato;
   -- Devuelve el elemento en la cima de la pila sin eliminarlo

   function Is_Empty (pila: in tipopila) return Boolean;
   -- Devuelve True si la pila est� vac�a

   function Is_Full (pila: in tipopila) return Boolean;
   -- Devuelve True si la pila est� llena
    
   private
   
   type Arreglopila is array(Positive range <>) of Tipodato;
   type Tipopila(Max:Positive) is
      
   record
      
   Cabeza:Natural:=0;
   Elemento: Arreglopila(1..Max);
      
   end record;
      
end pila;
