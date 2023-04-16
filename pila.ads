generic
   
   type Tipodato is private;

package Pila is
      
      type Tipopila (Max: Positive) is private;
      
      Underflow, Overflow: exception;
      
   procedure clear(pila: in out Tipopila);
   --Elimina todos los elementos de la pila
      
   procedure Push (Item : in tipodato; pila: in out tipopila);
   -- Inserta un elemento en la pila

   procedure Pop (pila: in out tipopila; elemento: out tipodato);
   -- Elimina y devuelve el elemento en la cima de la pila

   function Top (pila: in tipopila) return tipodato;
   -- Devuelve el elemento en la cima de la pila sin eliminarlo

   function Is_Empty (pila: in tipopila) return Boolean;
   -- Devuelve True si la pila está vacía

   function Is_Full (pila: in tipopila) return Boolean;
   -- Devuelve True si la pila está llena
    
   private
   
   type Arreglopila is array(Positive range <>) of Tipodato;
   type Tipopila(Max:Positive) is
      
   record
      
   Cabeza:Natural:=0;
   Elemento: Arreglopila(1..Max);
      
   end record;
   
  -- package Pilain is new Pila(tipovec); --se instancia el paquete
  -- use pilain;
  --subtype Tipopila5 is Tipopila(5); --pila de 5 elementos (tipopila --> es el tipo instanciado en al adb) 
  -- Var_pila:Tipopila5;
      
end pila;
