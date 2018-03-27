_chiffre = "HCJTGPCEJUQHKCWPFBCGJNGCNNGTWKPGP.YKGFWFCUOCEJUVKUVFKTWGDGTNCUUGP.YGPPFWFCOKVHGTVKIDKUVIGJUVFWYGKVGTBWTOKNKVCGTDCUKUYGUVNKEJXQPUQHKC.BWHCGNNKIGTVGZVWOFKEJBWXGTYKTTGP.UFNHLMUNENUMHUFKYGPNMHUNKHUFH.CRTKNCRTKN!";
_textSolar = format ["Zähle alle Solarpanele, runde auf die nächste Zehnerstelle hoch, teile das durch 50. Das Ergebnis ist dein Schlüssel um den Cäsarchiffre zu lösen. %1", _chiffre];
_textKapelle = format ["Zähle alle Holzkreutze im Friedhof, runde auf die nächste Zehnerstelle hoch, teile das durch 50. Das Ergebnis ist dein Schlüssel um den Cäsarchiffre zu lösen. %1", _chiffre];
_textFunk = format ["Zähle alle Stufen an beiden Funktürmen, runde auf die nächste Zehnerstelle runter, teile das durch 50. Das Ergebnis ist dein Schlüssel um den Cäsarchiffre zu lösen. %1", _chiffre];

//Solar
[[27042.3,21483.9,1], 225, _textSolar, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[27042.8,21484.3,0.815754], 225, _textSolar, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[27043.2,21484.8,0.815741], 225, _textSolar, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;

//Kapelle
[[25661.6,22874.2,0.955906], 0, _textKapelle, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[25661.6,22873.5,0.934708], 0, _textKapelle, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[25661.6,22874.8,0.976332], 0, _textKapelle, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;

//Funk
[[26461.2,22174.6,0.816833], 36.393, _textFunk, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[26460.8,22174.1,0.816879], 36.393, _textFunk, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
[[26460.4,22173.6,0.816826], 36.393, _textFunk, "elegant"] call GRAD_leaveNotes_fnc_spawnNote;
