# focus-generator

## Comment utiliser le g�n�rateur dans un projet:

Copier uniquement le fichier `generate.bat` et le coller dans un r�pertoire proche du projet (ex: un r�pertoire Tools\TemplateGenerator).
Renseigner les deux chemins relatifs suivants dans le nouveau generate.bat:
	- **applicationRoot**: le chemin relatif, depuis le fichier generate.bat nouvellement cr��, jusqu'au r�pertoire de l'application 
	(le r�pertoire contenant le dossier 'app')
	- **pathToGeneratorBat**: le chemin relatif, depuis le fichier generate.bat nouvellement cr��, jusqu'au dossier contenant le fichier generator.bat1
	`(SPA-Fmk\Main\Sources\SPA-tools\TemplateGenerator)`