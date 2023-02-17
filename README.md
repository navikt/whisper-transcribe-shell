# Et sett med shell scripts for å transkribere lydfiler

## Førstegangsinstalasjon
### Dette trenger du installert
1. Xcode, kan installeres med:
    > xcode-select --install
2. ffmpeg, kan installeres med: 
    > HOMEBREW_NO_AUTO_UPDATE=1 brew install ffmpeg
3. Dette repositoriet klonet
    > git clone https://github.com/navikt/whisper-transcribe-shell.git
4. Gå inn i mappen for det klonete repoet
    > cd whisper-transcribe-shell
### Så må du kjøre denne (trengs kun å kjøres 1 gang)
Her vil modellen som transkriberer lydfilene bli installert, kan dermed ta litt tid. \
Du gjør dette ved å kjøre følgene kommando:

> bash init.sh

## Start å transkriber

1. Kjør følgene kommando og legg inn filene du vil skal transkiberes:
    > bash open_data.sh
2. Transkriber filene med følgende kommando (språk som skal transkiberes er satt til Norsk og fil-output er satt til .vtt):
    > bash run.sh
3. Finn de transkriberte filene med følgende kommando:
    > bash open_output.sh