select * from alunos	
select * from turmas


Linguagem DML
JOIN WHERE

-------Join------------
select  alunos.id_aluno,	
	alunos.ds_aluno, 
	alunos.id_turma,
	turmas.ds_nome
from 	alunos, turmas
where 	alunos.id_turma = turmas.id_turma
-------------------------------------------

select * from notas

-------------Join--------------------
	select  vl_nota,
		dt_lancamento,
		hr_lancamento,
		notas.id_aluno,
		alunos.ds_aluno,
		notas.id_disciplina,
		disciplinas.ds_nome,
		turmas.ds_nome
		
	from    notas,
		alunos,
		disciplinas, 
		turmas
		
	where   notas.id_aluno = alunos.id_aluno and
		notas.id_disciplina = disciplinas.id_disciplina and
		alunos.id_turma = turmas.id_turma
----------------------------------------------------------------------




---------Join-------------------

select * from alunos

select  id_aluno,
	ds_aluno,
	alunos.id_turma,
	turmas.ds_nome
	
from	alunos

JOIN turmas on (alunos.id_turma = turmas.id_turma)
--------------------------------------------------


select  vl_nota,
	notas.id_aluno,
	ds_aluno,
	alunos.ds_aluno,
	notas.id_disciplina,
	disciplinas.ds_nome

from	notas

JOIN	alunos on (notas.id_aluno = alunos.id_aluno)
JOIN	disciplinas on (notas.id_disciplina = disciplinas.id_disciplina)
----------------------------------------------------------------------------

-------------Join--------------------
	select  vl_nota,
		dt_lancamento,
		hr_lancamento,
		notas.id_aluno,
		alunos.ds_aluno,
		notas.id_disciplina,
		disciplinas.ds_nome,
		turmas.ds_nome
		
	from    notas,
		alunos,
		disciplinas, 
		turmas
		
	JOIN alunos on  (notas.id_aluno = alunos.id_aluno) 
	JOIN disciplinas on  (notas.id_disciplina = disciplinas.id_disciplina) 
	JOIN turmas on  (notas.id_turma = turmas.id_turma)
-------------------------------------------------------------------

join left

select  alunos.id_aluno,
	alunos.ds_aluno,
	alunos.id_turma,
	turmas.ds_nome

from 	alunos

left join turmas on (alunos.id_turma = turmas.id_turma)
----------------------------------------------------

-------------------------------------------------
right join

select  alunos.id_aluno,
	alunos.ds_aluno,
	alunos.id_turma,
	turmas.ds_nome

from 	alunos

right join turmas on (alunos.id_turma = turmas.id_turma)
---------------------------------------------------------





--------renomear as tabelas e colunas usando o AS
select  vl_nota,
		dt_lancamento,
		hr_lancamento,
		notas.id_aluno,
		alunos.ds_aluno,
		notas.id_disciplina,
		disciplinas.ds_nome AS nome_disciplina,
		turmas.ds_nome  AS.nome_turma
		
	from    notas, AS n
		alunos,
		disciplinas, 
		turmas
		
	JOIN alunos on  (n.id_aluno = alunos.id_aluno) 
	JOIN disciplinas on  (notas.id_disciplina = disciplinas.id_disciplina) 
	JOIN turmas on  (n.id_turma = turmas.id_turma)



	-----Subselect -------

	select  alunos.id_aluno,
		alunos.ds_aluno,
		(  )

	from	alunos


	select sum(vl_nota) from alunos where id_aluno=1

	---------------------------------------

	select  a.id_aluno,
		a.ds_nome,
		(select sum(n.vl_nota


	----------------------------------------

	select  n.val_nota,
		n.id_aluno
		
	from	notas AS n -- renomeando notas para (n) utilizando o AS -- 
	
	where	n.id_aluno in ( select a.id_aluno
				from alunos as a -- renomeando alunos para (a) utilizando o AS -- 
				where a.id_turma = 1)













