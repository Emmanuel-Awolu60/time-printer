resource "helm_release" "argocd"{
    name = "argocd"
    chart = "argo-cd"
    repository = "https://argoproj.github.io/argo-helm"
    namespace = "argocd"
    create_namespace = true

    values = [
        <<EDF
        server:
             service:
                type: ClusterIP
        EDF
    ] 
}