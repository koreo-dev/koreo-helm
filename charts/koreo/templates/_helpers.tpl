{{/* vim: set filetype=mustache: */}}

{{/*
Expand the name of the chart.
*/}}
{{- define "koreo.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name for controller
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "koreo.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name for UI
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "koreo.ui.fullname" -}}
{{- if .Values.uiFullnameOverride -}}
{{- .Values.uiFullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}-ui
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}-ui
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "koreo.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create kubernetes friendly chart version label.
*/}}
{{- define "koreo.controller_chart_version_label" -}}
{{- regexReplaceAll "[^a-zA-Z0-9-_.]+" (regexReplaceAll "@sha256:[a-f0-9]+" (default (include "koreo.controller.defaultTag" .) .Values.controller.image.tag) "") "" | trunc 63 | quote -}}
{{- end -}}

{{/*
Create kubernetes friendly chart version label.
*/}}
{{- define "koreo.ui_chart_version_label" -}}
{{- regexReplaceAll "[^a-zA-Z0-9-_.]+" (regexReplaceAll "@sha256:[a-f0-9]+" (default (include "koreo.ui.defaultTag" .) .Values.ui.image.tag) "") "" | trunc 63 | quote -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "koreo.labels" -}}
helm.sh/chart: {{ include "koreo.chart" .context }}
{{ include "koreo.selectorLabels" (dict "context" .context "component" .component "name" .name) }}
app.kubernetes.io/managed-by: {{ .context.Release.Service }}
app.kubernetes.io/part-of: koreo
{{- with .context.Values.commonLabels }}
{{ toYaml .}}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "koreo.selectorLabels" -}}
{{- if .name -}}
app.kubernetes.io/name: {{ include "koreo.name" .context }}-{{ .name }}
{{ end -}}
app.kubernetes.io/instance: {{ .context.Release.Name }}
{{- if .component }}
app.kubernetes.io/component: {{ .component }}
app: {{ .component }}
{{- end }}
{{- end }}

{{/*
Create the name of the controller service account to use
*/}}
{{- define "koreo.controller.serviceAccountName" -}}
{{- if .Values.controller.serviceAccount.create -}}
    {{ default (include "koreo.fullname" .) .Values.controller.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.controller.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "koreo.ui.serviceAccountName" -}}
{{- if .Values.ui.serviceAccount.create -}}
    {{ default (include "koreo.fullname" .) .Values.ui.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.ui.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the default Koreo controller app version
*/}}
{{- define "koreo.controller.defaultTag" -}}
  {{- default .Chart.AppVersion .Values.controller.image.tag }}
{{- end -}}

{{/*
Return the default Koreo ui app version
*/}}
{{- define "koreo.ui.defaultTag" -}}
  {{- default .Chart.AppVersion .Values.ui.image.tag }}
{{- end -}}

{{/*
Return full image name including or excluding registry based on existence
*/}}
{{- define "koreo.image" -}}
{{- if and .image.registry .image.repository -}}
  {{ .image.registry }}/{{ .image.repository }}
{{- else -}}
  {{ .image.repository }}
{{- end -}}
{{- end -}}
