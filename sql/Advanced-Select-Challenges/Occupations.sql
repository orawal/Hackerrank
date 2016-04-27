SELECT t1.n1, t2.n2, t3.n3, t4.n4
FROM
        (select @rownum:=@rownum+1 num1, name as n1 from occupations, (SELECT @rownum:=0) r1 where occupation = "Doctor" order by name) AS t1
 
RIGHT JOIN
 
    (select @rownum2:=@rownum2+1 num2, name as n2 from occupations, (SELECT @rownum2:=0) r2 where occupation = "Professor" order by name) AS t2
    ON t1.num1 = t2.num2

LEFT JOIN
 
        (select @rownum3:=@rownum3+1 num3, name as n3 from occupations, (SELECT @rownum3:=0) r3 where occupation = "Singer" order by name) AS t3
    ON t2.num2 = t3.num3

LEFT JOIN

    (select @rownum4:=@rownum4+1 num4, name as n4 from occupations, (SELECT @rownum4:=0) r4 where occupation = "Actor" order by name) AS t4
    ON t3.num3 = t4.num4;
