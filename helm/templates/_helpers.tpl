{{/*
Return the fully qualified app name.
*/}}
{{- define "hello-api.fullname" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return the chart name.
*/}}
{{- define "hello-api.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end }}

