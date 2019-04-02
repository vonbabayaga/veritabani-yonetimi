# 18 yasindan kucuk denizcilerin tum bilgilerini listele
sqlite> SELECT * FROM Sailors s WHERE s.age > 18;

# 103 numarali botu reserve eden denizcilerin isimlerini bulunu
SELECT sname from Sailors, Reserves WHERE Reserves.bid=103  AND  Reserves.sid = Sailors.sid;

# kırmızı bot rezerve eden denizcilerin id leri
SELECT sid FROM Reserves r, Boats b WHERE r.bid = b.bid AND b.color = "red";

#Kirmizi bot reserve eden denizcilerin sid’lerini bulunuz
SELECT *  FROM Reserves r, Boats b,Sailors s WHERE s.sid = r.sid AND  r.bid = b.bid AND b.color
= "red";