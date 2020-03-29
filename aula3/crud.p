//INSERT customer. // Insere um novo cliente.
    
//Exibe um cliente qualquer
/*FOR EACH customer NO-LOCK
    WHERE customer.custnum = 3055:
    DISP Customer.Name
         Customer.CreditLimit.
END.*/

//Altera um cliente
/*FOR EACH customer EXCLUSIVE-LOCK
    WHERE customer.custnum = 3055:
    UPDATE Customer.Name
         Customer.CreditLimit.
END.*/

//Elimina o cliente
/*DEF VAR l-resp AS LOGICAL NO-UNDO.
FOR EACH customer EXCLUSIVE-LOCK
    WHERE customer.custnum = 3055:
    MESSAGE "Tem certeza?"
        VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO UPDATE l-resp.
    IF l-resp THEN
        DELETE customer.
END.*/
