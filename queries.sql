# 18 yasindan kucuk denizcilerin tum bilgilerini listele
SELECT * FROM Sailors s WHERE s.age > 18;

# 103 numarali botu reserve eden denizcilerin isimlerini bulunu
SELECT sname from Sailors, Reserves WHERE Reserves.bid=103  AND  Reserves.sid = Sailors.sid;

# kırmızı bot rezerve eden denizcilerin id leri
SELECT sid FROM Reserves r, Boats b WHERE r.bid = b.bid AND b.color = "red";

#Kirmizi bot reserve eden denizcilerin sid’lerini bulunuz
SELECT *  FROM Reserves r, Boats b,Sailors s 
WHERE s.sid = r.sid AND  r.bid = b.bid AND b.color= "red";

#Kirmizi bot reserve eden denizcilerin isimlerini bulunuz
SELECT DISTINCT sname FROM Sailors s,Reserves r,Boats b 
WHERE r.bid = b.bid AND  r.sid = s.sid and b.color = "red";

#Bob isimli denizci tarafindan reserve edilen botlarin renklerini bulunuz

SELECT DISTINCT color FROM Sailors s,Reserves r,Boats b 
WHERE r.bid = b.bid AND  r.sid = s.sid and s.sname = "zorba";

# ayni gun icinde iki farkli bot reserve eden denizcileri bul
	# kartezyen carpım !!! empty set donuyor date kosmında bir hata mı var aveba  
	SELECT s.sname
	FROM Sailors s,Reserves r1,Reserves r2
	WHERE s.sid = r1.sid AND
	r1.sid = r2.sid AND
	r1.day = r2.day AND
	r1.bid <> r2.bid
	# nested query
	# group by !!! test et
	SELECT sid,COUNT(day) as day_count FROM Reserves GROUP BY day HAVING(COUNT(day)) = 2;

# kirmizi veya yesil bir bot reserve eden  denizcilerin isimlerini bul

SELECT * FROM Sailors s, Reserves r,Boats b 
WHERE s.sid = r.sid AND r.bid = b.bid AND (b.color = "red" OR b.color = "green" );

# hem kırmızı hem de yesıl bot reserve eden denızcılerın ısımlerını bulunuz 
	# reservi 2 kere kartezyen carpmadan nasıl bulabılırım

SELECT DISTINCT  s.sname FROM Sailors s, Boats b, Reserves r 
WHERE s.sname IN 
(SELECT s.sname FROM Sailors s, Reserves r,Boats b 
	WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = "red")  
AND s.sid = r.sid AND r.bid = b.bid AND b.color = "green";
	# 2 kere kartezyen carpmak 

SELECT * FROM Sailors s, Reserves r1, Reserves r2, Boats b1, Boats b2 
WHERE  s.sid = r1.sid AND s.sid = r2.sid AND r1.bid = b1.bid 
AND r2.bid = b2.bid and b1.color = "red" and b2.color = "green";