provider "kubernetes" {
  config_context_cluster   = "minikube"
}

resource "kubernetes_namespace" "minikube-namespace" {
  metadata {
        name = "tudor-namespace"
  }
}
