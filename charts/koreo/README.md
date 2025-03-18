# koreo

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.0.1](https://img.shields.io/badge/AppVersion-v0.0.1-informational?style=flat-square)

A Helm chart for Koreo

**Homepage:** <https://github.com/koreo.dev/koreo>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| koreo-dev |  | <https://koreo.dev> |

## Source Code

* <https://github.com/koreo.dev/koreo>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| commonLabels | object | `{}` | Labels that get set on every resource |
| controller.affinity | object | `{}` | Attach pod / node affinity rules to the pod |
| controller.deploymentAnnotations | object | `{}` | Annotations that should be applied to the deployment |
| controller.extraContainers | list | `[]` | Additional containers to be added to the deployment |
| controller.extraEnv | list | `[]` | Extra environment variables to attach to the controller pod |
| controller.image.pullPolicy | string | `"Always"` | Image pullPolicy For Koreo image |
| controller.image.pullSecrets | list | `[]` | Pull secrets with credentials to pull images from a private registry |
| controller.image.repository | string | `"us-central1-docker.pkg.dev/konfig-platform-dev/konfig/koreo-core"` | Repository for Koreo Image. |
| controller.image.tag | string | `""` | Tag for Koreo image. Defaults to `.Chart.AppVersion`. |
| controller.initContainers | list | `[]` | Additional init containers to be added to the controller deployment |
| controller.name | string | `"controller"` | Controller name |
| controller.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | Node selector for which nodes types are suitable for the deployment and its pods |
| controller.pdb.enabled | bool | `false` | Enable or disable pod disruption budget for the controller |
| controller.pdb.maxUnavailable | int | `1` | Set the Max unavailable pods |
| controller.pdb.minAvailable | int | `1` | Set the min available pods |
| controller.podAnnotations | object | `{}` | Annotations that should be applied to the pod |
| controller.podLabels | object | `{}` | Additional pod labels that should be applied to the pod |
| controller.podSecurityContext | object | `{}` | Pod Security Context that are set on the controller pods |
| controller.priorityClassName | string | `""` | Attach a priority class to the pods. |
| controller.rbac.cluster.read_only | object | `{}` | Read-only apiGroups and their resources that the serviceAccount.name is granted access to in the cluster |
| controller.rbac.cluster.read_write | object | `{}` | Read-write apiGroups and their resources that the serviceAccount.name is granted access to in the cluster |
| controller.rbac.create | bool | `true` | Create Role, RoleBinding, ClusterRole, and ClusterRoleBinding for serviceAccount.name |
| controller.rbac.namespace.read_only | object | `{}` | Read-only apiGroups and their resources that the serviceAccount.name is granted access to in the deployed namespace |
| controller.rbac.namespace.read_write | object | `{}` | Read-write apiGroups and their resources that the serviceAccount.name is granted access to in the deployed namespace |
| controller.replicas | int | `1` | Number of desired replicas |
| controller.resources | object | `{}` | Resource limits and requests for the controller pod |
| controller.revisionHistoryLimit | int | `10` | The number of historical revisions to keep |
| controller.securityContext | object | `{}` | Sets security context for the controller pod |
| controller.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| controller.serviceAccount.create | bool | `true` | Create a service account or not |
| controller.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| controller.serviceAccount.name | string | `"koreo"` | Service account name to create or expect |
| controller.serviceAccount.pullSecrets | list | `[]` | Pull secrets with credentials to pull images from a private registry |
| controller.tolerations | list | `[]` | Node tolerations to specify which nodes are suitable for the deployment and its pods |
| controller.topologySpreadConstraints | list | `[]` | Attach custom topology rules to the controller |
| controller.volumeMounts | list | `[]` | Volume mounts to be added to the controller pod |
| controller.volumes | list | `[]` | Additional volumes to be added to the deployment |
| crds.annotations | object | `{}` | Annotations to be added to all CRDs |
| crds.install | bool | `true` | Install and upgrade CRDs |
| crds.keep | bool | `true` | Keep or delete CRDs on chart uninstall |
| fullnameOverride | string | `""` | String to override the koreo.fullname variable |
| nameOverride | string | `""` | String to override the name portion of koreo.fullname variable |
| ui.affinity | object | `{}` | Attach pod / node affinity rules to the pod |
| ui.deploymentAnnotations | object | `{}` | Annotations that should be applied to the deployment |
| ui.enabled | bool | `true` | Enable or disable UI |
| ui.extraContainers | list | `[]` | Additional containers to be added to the deployment |
| ui.extraEnv | list | `[]` | Extra environment variables to attach to the ui pod |
| ui.image.pullPolicy | string | `"Always"` | Image pullPolicy For Koreo image |
| ui.image.pullSecrets | list | `[]` | Pull secrets with credentials to pull images from a private registry |
| ui.image.repository | string | `"us-central1-docker.pkg.dev/konfig-platform-dev/konfig/koreo-ui"` | Repository for Koreo UI Image. |
| ui.image.tag | string | `""` | Tag for Koreo image. Defaults to `.Chart.AppVersion`. |
| ui.initContainers | list | `[]` | Additional init containers to be added ui deployment |
| ui.name | string | `"ui"` | UI Name |
| ui.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | Node selector for which nodes types are suitable for the deployment and its pods |
| ui.pdb.enabled | bool | `false` | Enable or disable pod disruption budget for the ui deployment |
| ui.pdb.maxUnavailable | int | `1` | Set the Max unavailable pods |
| ui.pdb.minAvailable | int | `1` | Set the min available pods |
| ui.podAnnotations | object | `{}` | Annotations that should be applied to the pod |
| ui.podLabels | object | `{}` | Additional pod labels that should be applied to the pod |
| ui.podSecurityContext | object | `{}` | Pod Security Context that are set on the ui pods |
| ui.priorityClassName | string | `""` | Attach a priority class to the pods. |
| ui.rbac.cluster.read_only | object | `{}` | Read-only apiGroups and their resources that the serviceAccount.name is granted access to in the cluster |
| ui.rbac.create | bool | `true` | Create Role, RoleBinding, ClusterRole, and ClusterRoleBinding for serviceAccount.name |
| ui.rbac.namespace.read_only | object | `{}` | Read-only apiGroups and their resources that the serviceAccount.name is granted access to in the deployed namespace |
| ui.replicas | int | `1` | Number of desired replicas |
| ui.resources | object | `{}` | Resource limits and requests for the ui pod |
| ui.revisionHistoryLimit | int | `10` | The number of historical revisions to keep |
| ui.securityContext | object | `{}` | Sets security context for the ui pod |
| ui.service.enabled | bool | `true` | Enables service |
| ui.service.headlessService | bool | `false` | Flag to enable headless service |
| ui.service.loadBalancerClass | string | `""` | The class of the load balancer implementation |
| ui.service.loadBalancerSourceRanges | list | `[]` | Source ranges to allow access to service from. Only applies to service type `LoadBalancer` |
| ui.service.port | int | `8080` | Port is the port where the container is listening |
| ui.service.portName | string | `"ui"` | Container ui port name |
| ui.service.serviceAnnotations | object | `{}` | Annotations to be applied to the controller Service |
| ui.service.serviceLabels | object | `{}` | Optional labels to add to the controller Service |
| ui.service.servicePort | int | `8080` | Service ui port |
| ui.service.servicePortName | string | `"ui"` | Service ui port name |
| ui.service.serviceType | string | `"ClusterIP"` | Service type of the controller Service |
| ui.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| ui.serviceAccount.create | bool | `true` | Create a service account or not |
| ui.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| ui.serviceAccount.name | string | `"koreo-ui"` | Service account name to create or expect |
| ui.serviceAccount.pullSecrets | list | `[]` | Pull secrets with credentials to pull images from a private registry |
| ui.tolerations | list | `[]` | Node tolerations to specify which nodes are suitable for the deployment and its pods |
| ui.topologySpreadConstraints | list | `[]` | Attach custom topology rules to the ui pod |
| ui.volumeMounts | list | `[]` | Volume mounts to be added to the ui pod |
| ui.volumes | list | `[]` | Additional volumes to be added to the deployment |
| uiFullnameOverride | string | `""` | String to override the koreo.ui.fullname variable |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.9.1](https://github.com/norwoodj/helm-docs/releases/v1.9.1)
