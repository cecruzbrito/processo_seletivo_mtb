<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/darlosss/processo_seletivo_mtb?color=a015f5">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/darlosss/processo_seletivo_mtb">
  
  <img alt="Application Status" src="https://img.shields.io/badge/Status-running-b6fe03">

  <a href="https://github.com/darlosss/repime/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/darlosss/processo_seletivo_mtb">
  </a>
  
  <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen">
  <a href="https://github.com/darlosss/repimestargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/darlosss/processo_seletivo_mtb?style=social">
  </a>
</p>

# Processo Seletivo MTB
Pequeno em Flutter realizado para a segunda etapa do processo seletivo, seguindo todas as diretrizes repassadas.

---
## Pacotes utilizados
---  
    -> Flutter
    - archive: ^3.3.5
    - flutter_mobx: ^2.0.6+5
    - http: ^0.13.5
    - mobx: ^2.1.3
    - path_provider: ^2.0.11
---  
## Diagrama de classes

```mermaid
classDiagram
  class CredenciaisAppModel
  CredenciaisAppModel: -_usuario
  CredenciaisAppModel: -_password
  CredenciaisAppModel: +credenciais
  
  class FileModel
  FileModel: +createFileBytes(bytes, nameWithExtension, isTemporary) File
  
  class ResultadoApiModel
  ResultadoApiModel: +codRet
  ResultadoApiModel: +msGret
  ResultadoApiModel: +pathFileCacheTemporary
  ResultadoApiModel: +fromJson(json) ResultadoApiModel
  ResultadoApiModel: +makeRequest(palavraChave) ResultadoApiModel
  
  class RequestAppModel
  RequestAppModel: +makeGet(url, headers)
  
  class ZipModel
  ZipModel: +decode(base64Enconde)
  ZipModel: +createFileData(archive, indexArchive) 
  
  ResultadoApiModel ..> RequestAppModel
  RequestAppModel ..> CredenciaisAppModel
  ResultadoApiModel ..> ZipModel
  ResultadoApiModel ..> FileModel
  
```
