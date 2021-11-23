|| 4.A.1 ||

SELECT a.Nome, c.Nome
FROM agencia a, cliente c
WHERE c.Agência_Agencia_ID = a.Agencia_ID AND c.Premier = 1
GROUP BY a.Nome, c.Nome

|| 4.A.2 ||

SELECT g.nome
FROM gestor g
WHERE g.Gestor_ID not in (SELECT g.Gestor_ID
                         FROM gestor g, premier p
                         WHERE g.Gestor_ID = p.Gestor_Gestor_ID)

|| 4.A.3 ||

SELECT a.nome
FROM agencia a, cliente c
WHERE c.Agência_Agencia_ID = a.Agencia_ID AND c.Premier=1
GROUP BY a.Nome
HAVING COUNT(*)>=ALL(SELECT COUNT(*)
                    FROM agencia a, cliente c
                    WHERE c.Agência_Agencia_ID = a.Agencia_ID AND c.Premier = 1
                    GROUP BY a.Nome)

|| 4.B.1 ||

SELECT a.Nome, count(*)
FROM agencia a, cliente c
WHERE a.Agencia_ID = c.Agência_Agencia_ID AND c.Premier = 0
GROUP BY a.Nome

|| 4.B.2 ||

SELECT c.nome
FROM cliente c, premier p, gestor g
WHERE c.Cliente_ID = p.Cliente_Cliente_ID AND p.Gestor_Gestor_ID = g.Gestor_ID

|| 4.B.3 ||

SELECT a.nome, count(*)
FROM cliente c, agencia a
WHERE c.Agência_Agencia_ID = a.Agencia_ID AND c.Premier = 1
GROUP BY a.Nome
