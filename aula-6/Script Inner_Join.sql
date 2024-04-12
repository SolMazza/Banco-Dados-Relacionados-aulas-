


select 
f.nome, d.nome, t.telefone, e.endereco
from 
funcionario as f
inner join departamento as d
on f.id_departamento = d.id_departamento
inner join telefone as t
on f.id_funcionario = t.id_funcionario
inner join endereco as e
on f.id_funcionario = e.id_funcionario;


select 
f.nome, d.nome
from 
funcionario as f
inner join departamento as d
on f.id_departamento = d.id_departamento
where d.nome like "%CPD - TI%";
