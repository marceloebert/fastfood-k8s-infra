# Infraestrutura de Kubernetes (EKS) e Deploy da API com Terraform

Este repositório contém os arquivos necessários para provisionar toda a infraestrutura necessária para rodar uma API em um cluster Kubernetes (EKS) gerenciado pela AWS. Ele inclui a criação de recursos como **Amazon ECR**, **Deployments**, **ConfigMap**, **HPA**, e outros serviços essenciais.

---

## **Visão Geral**

A infraestrutura provisionada por este repositório realiza os seguintes passos:

1. **Criação do Cluster EKS**:
   - Provisiona o cluster Kubernetes com suporte para workloads de alta disponibilidade.
   - Configuração de nós no cluster para executar os containers da aplicação.

2. **Criação do Repositório ECR**:
   - Repositório para armazenar imagens Docker da API.

3. **Deploy da Aplicação**:
   - Configuração de **Deployments**, **ConfigMaps**, e **Horizontal Pod Autoscaler (HPA)**.
   - Definição de **Services** para expor a API.

4. **Configuração de Métricas**:
   - Habilitação do servidor de métricas do Kubernetes para autoscaling e monitoramento.

---

## **Arquitetura**

### **1. Kubernetes (EKS)**
- Cluster gerenciado pelo **AWS EKS**.
- Configurado para escalar horizontalmente de acordo com a demanda.

### **2. Amazon Elastic Container Registry (ECR)**
- Repositório para armazenar imagens Docker de forma segura.

### **3. Deployments e Services**
- Gerenciamento de containers através de **Deployments**.
- Roteamento de requisições para os pods utilizando **Services**.

### **4. Métricas e Autoscaling**
- Uso do **Horizontal Pod Autoscaler (HPA)** para escalar os pods com base na carga de CPU e memória.

---

## **Conteúdo do Repositório**

### **Infraestrutura Base**

| Arquivo                     | Descrição                                              |
|-----------------------------|------------------------------------------------------|
| `provider.tf`               | Configura o provedor AWS e o backend para o estado.  |
| `eks-cluster.tf`            | Provisiona o cluster EKS.                             |
| `eks-nodeg.tf`              | Configuração do grupo de nós para o EKS.             |
| `ecr.tf`                    | Criação do repositório Amazon ECR.                   |
| `eks-access-policy.tf`      | Configura as políticas IAM para acesso ao EKS.       |
| `eks-access-entry.tf`       | Configuração para autenticação no EKS.               |
| `sg.tf`                     | Configuração de Security Groups.                     |
| `data.tf`                   | Recursos de dados (ex.: subnets, VPC).               |

### **Recursos da Aplicação**

| Arquivo                     | Descrição                                              |
|-----------------------------|------------------------------------------------------|
| `configmap.tf`              | Configurações específicas da aplicação (ConfigMap).   |
| `deployment.tf`             | Criação dos pods da API via Deployment.               |
| `hpa.tf`                    | Configuração do Horizontal Pod Autoscaler (HPA).     |
| `service.tf`                | Configuração dos serviços para expor os pods.         |
| `kubeconfig.tf`             | Configuração para integração com o `kubectl`.         |
| `metrics.tf`                | Habilitação do servidor de métricas no cluster.       |

---

## **Configuração**

### **1. Pré-requisitos**

- **Terraform** instalado (versão 1.8.0 ou superior).
- **AWS CLI** configurado com credenciais apropriadas.
- **kubectl** instalado para gerenciar o cluster Kubernetes.
- **aws-iam-authenticator** instalado para autenticação no EKS.

### **2. Variáveis Importantes**

As variáveis estão declaradas no arquivo `vars.tf`. Aqui estão algumas delas:

| Nome                | Descrição                                   | Valor Padrão  |
|---------------------|---------------------------------------------|---------------|
| `region`            | Região AWS para provisionar recursos        | `us-east-1`   |
| `cluster_name`      | Nome do cluster EKS                         | `eks-cluster` |
| `node_instance_type`| Tipo de instância para os nós               | `t3.medium`   |
| `ecr_repository`    | Nome do repositório ECR                     | `api-repo`    |
| `vpc_id`            | ID da VPC onde o cluster será provisionado | `vpc-xxxxxx`  |

---

## **Execução**

### **1. Clonar o Repositório**

```bash
git clone <repo-url>
cd <repo-folder>
terraform init
terraform plan 
terraform apply 

