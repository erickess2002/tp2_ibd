-- numero total por tipo de severidade
select desc_severidade as Severidade, embreagues as Alcool, count (distinct no_boletim) as Total_Registrado
	from desc_pessoas
group by desc_severidade, embreagues

-- numero total com ferimentos e uso de cinto de segurança
select cinto_seguranca as Cinto, count(distinct no_boletim) as Total_Registrado
	from desc_pessoas
where cod_severidade <> '3'
group by cinto_seguranca

-- numero total com uso de cinto de segurança
select cinto_seguranca as Cinto, count(distinct no_boletim) as Total_Registrado
	from desc_pessoas
where cod_severidade <> '3'
group by cinto_seguranca

-- numero total por tipo de severidade e uso de cinto de segurança
select cod_severidade, desc_severidade as Severidade, cinto_seguranca as Cinto, count(distinct no_boletim) as Total_Registrado
	from desc_pessoas
group by desc_severidade, cinto_seguranca, cod_severidade
order by cod_severidade

-- numero total por tipo de severidade e embreagues
select cod_severidade, desc_severidade as Severidade, embreagues as Alcool, count(distinct no_boletim) as Total_Registrado
	from desc_pessoas
group by desc_severidade, embreagues, cod_severidade
order by cod_severidade


-- numero total por tipo de severidade
select desc_severidade as Severidade, count(distinct no_boletim) as Total_Registrado
	from desc_pessoas dp join desc_geral dg
		on dp.no_boletim = dg.numero_boletim
group by desc_severidade

-- numero total por tipo de acidente
select tipo_acidente, desc_tipo_acidente, count (distinct numero_boletim)
	from desc_geral
group by tipo_acidente, desc_tipo_acidente
order by desc_tipo_acidente

-- numero total por tipo de acidente e severidade
select dg.tipo_acidente, dg.desc_tipo_acidente, dp.cod_severidade, dp.desc_severidade, count (distinct dg.numero_boletim) as Total_Registrado
	from desc_pessoas dp join desc_geral dg
		on dp.no_boletim = dg.numero_boletim
group by dg.tipo_acidente, dg.desc_tipo_acidente, dp.cod_severidade, dp.desc_severidade
order by dg.desc_tipo_acidente

-- numero total por tipo de acidente, severidade e cinto de segurança
select dg.tipo_acidente, dg.desc_tipo_acidente, dp.cod_severidade, dp.desc_severidade, dp.cinto_seguranca as cinto,
count (distinct dg.numero_boletim) as Total_Registrado
	from desc_pessoas dp join desc_geral dg
		on dp.no_boletim = dg.numero_boletim
group by dg.tipo_acidente, dg.desc_tipo_acidente, dp.cod_severidade, dp.desc_severidade, dp.cinto_seguranca
order by dg.desc_tipo_acidente

-- numero total por tipo de acidente, severidade, cinto de segurança e embreagues
select dg.tipo_acidente, dg.desc_tipo_acidente as Descricao_Tipo_Acidente, dp.cod_severidade, dp.desc_severidade, 
dp.cinto_seguranca as cinto, dp.embreagues as Motorista_Alcoolizado, count (distinct dg.numero_boletim) as Total_Registrado
	from desc_pessoas dp join desc_geral dg
		on dp.no_boletim = dg.numero_boletim
group by dg.tipo_acidente, dg.desc_tipo_acidente, dp.cod_severidade, dp.desc_severidade, dp.cinto_seguranca, dp.embreagues
order by dg.desc_tipo_acidente