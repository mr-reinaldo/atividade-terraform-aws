# Automatização da Instalação do Apache em uma Instância EC2 usando Terraform

Este repositório contém um conjunto de arquivos e scripts para automatizar a instalação de um servidor web Apache em uma instância EC2 da AWS usando a ferramenta Terraform.

## Pré-requisitos

Antes de executar este projeto, certifique-se de ter as seguintes dependências instaladas:

1. **Terraform:** É necessário ter o Terraform instalado na sua máquina. Você pode baixá-lo [aqui](https://developer.hashicorp.com/terraform/downloads?product_intent=terraform).

2. **Python:** O AWS CLI é baseado em Python. Verifique se você tem o Python instalado na sua máquina. Você pode baixar o Python em [python.org](https://www.python.org/downloads/).

3. **Pip (Python Package Manager):** Certifique-se de que o `pip` esteja instalado. O `pip` é usado para instalar pacotes Python.
    Você pode instalar o pip usando o seguinte comando:

    ```bash
    sudo apt install -y python3-pip
    ```

4. **AWS CLI com Python:**

   Você pode instalar a AWS CLI com Python usando o seguinte comando:

   ```bash
   python3 -m pip install awscli
    ```

5. **Conta AWS:**

   Você precisa ter uma conta AWS para executar este projeto. Você pode criar uma conta AWS [aqui](https://aws.amazon.com/).

6. **Chave de Acesso AWS:**

    Você precisará configurar as credenciais da AWS na sua máquina usando o comando ```aws configure```. Certifique-se de ter as credenciais de acesso e a chave secreta da AWS prontas.

7. **Chave SSH:**

    Você precisará de uma chave SSH para se conectar à instância EC2. Você pode criar uma chave SSH usando o comando ```ssh-keygen -t rsa```.

## Como executar este projeto

1. **Clone este repositório:**

    ```bash
    git clone https://github.com/mr-reinaldo/atividade-terraform-aws.git
    ```

2. **Navegue até o diretório do projeto:**

    ```bash
    cd atividade-terraform-aws
    ```
3. **Rode o comando ```terraform init``` para inicializar o diretório do projeto:**

    ```bash
    terraform init
    ```

4. **Rode o comando ```terraform plan``` para criar um plano de execução:**

    ```bash
    terraform plan
    ```
5. **Rode o comando ```terraform apply``` para executar o plano de execução:**

    ```bash
    terraform apply
    ```

6. **Acesse a instância EC2 usando o comando ```ssh``` e a chave SSH:**

    ```bash
    ssh -i <path-to-ssh-key> ubuntu@<public-ip-of-ec2-instance>
    ```
7. **Verifique se o servidor web Apache está em execução:**

    ```bash
    sudo systemctl status apache2
    ```
8. **Acesse o servidor web Apache usando o endereço IP público da instância EC2 no navegador:**

    ```bash
    <public-ip-of-ec2-instance>
    ```
9. **Para destruir a infraestrutura criada, rode o comando ```terraform destroy```**

    ```bash
    terraform destroy
    ```