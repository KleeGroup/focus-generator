# focus-generator

## Comment utiliser le générateur dans un projet:

Copier uniquement le fichier `generate.bat` et le coller dans un répertoire proche du projet (ex: un répertoire Tools\TemplateGenerator).
Renseigner les deux chemins relatifs suivants dans le nouveau generate.bat:
	- **applicationRoot**: le chemin relatif, depuis le fichier generate.bat nouvellement créé, jusqu'au répertoire de l'application 
	(le répertoire contenant le dossier 'app')
	- **pathToGeneratorBat**: le chemin relatif, depuis le fichier generate.bat nouvellement créé, jusqu'au dossier contenant le fichier generator.bat1
	`(SPA-Fmk\Main\Sources\SPA-tools\TemplateGenerator)`