OUTPUT TO X:\openedge\clientes.csv.

PUT UNFORMATTED
    "Codigo;Nome;Limite de Credito"
    SKIP.

FOR EACH customer NO-LOCK:

    EXPORT DELIMITER ";"
         Customer.CustNum
         Customer.NAME
         Customer.CreditLimit.

END.
OUTPUT CLOSE.
