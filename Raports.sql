insert into notatnik_kcal (data_spoz, suma_kcal, suma_tlus, suma_wegl, suma_bial, suma_cukr)
select 
current_date,
round(sum(wim.kcal * (dd.waga_zjedzona/100.0)), 1) as kalorie, 
round(SUM(wim.tluszcze * (dd.waga_zjedzona/100.0)), 1) as tluszcze,
round(SUM(wim.wegle * (dd.waga_zjedzona /100.0)), 1) as wegle,
round(SUM(wim.bialko * (dd.waga_zjedzona/100.0)), 1) as bialko, 
round(sum(wim.cukry * (dd.waga_zjedzona/100.0)), 1) as cukry
from dziennik_dzienny dd 
join warianty_i_makro wim on dd.id_wariantu = wim.id_wariantu
where dd.data_spoz = current_date;


select 
	(sum(kcal * (waga_zjedzona / 100.0))),
	(sum(tluszcze * (waga_zjedzona / 100.0))),
	(sum(wegle * (waga_zjedzona / 100.0))),
	(sum(bialko * (waga_zjedzona / 100.0))),
	(sum(cukry * (waga_zjedzona / 100.0)))
from warianty_i_makro wim join
dziennik_dzienny dd on wim.id_wariantu = dd.id_wariantu
where data_spoz = current_date;